function getSelectedAttributes(ele) {
    var result = []
    ele.find(".spec_li .spec:checked").each(function (i, item) {
        var spec = $(item).val();
        if (!spec) {
            return;
        }

        result.push(spec);
    });
    return result.length > 0 ? result.join(',') : '';
};

$(document).ready(function () {

    $('body').on('keyup','.number-box .number',function(){
        var value = $(this).val()
        $(this).val(value.replace(/\D/g,''))
    })

    var showCartCount = function () {
        if ($("#cartCount").length < 1) {
            return;
        }
        $.getJSON('flow.php?step=cart_count', function (data) {
           if (data.code == 0) {
               $("#cartCount").text(data.data);
           }
        });
    };



    $("#search").keydown(function (e) {
        if (e.keyCode == 13) {
            var value = $(this).val();
            if (!value) {
                return;
            }
            window.location.href = 'search.php?keywords=' + value;
        }
    });
    $("#searchBtn").click(function () {
        var value = $("#search").val();
        if (!value) {
            return;
        }
        window.location.href = 'search.php?keywords=' + value;
    });

    var addCart = function (data, callback) {


        if (data.number < 1) {
            Dialog.tip('请输入有效的数量');
            return;
        }

        var url = "flow.php?step=add_goods&goods_id=" + data.goods_id + "&num=" + data.number + "&spec="+ data.spec
        if(data.flow_type)
            url += '&flow_type=' + data.flow_type

        $.getJSON(url, callback);
    }, getGoodsAttr = function (ele, goods_id, number) {
        var data = {
            "quick": 1,
            "script_name": 0,
            "goods_recommend": "",
            "parent": 0
        };
        if (!goods_id) {
            goods_id = ele.attr("data-goods");
        }
        data.goods_id = goods_id;
        if (!number) {
            number = 1;
        }
        var quantity = ele.find('.number-input').val();
        if (!quantity) {
            quantity = 1;
        }
        data.number =  Math.max(quantity, 1, number);
        data.spec = getSelectedAttributes(ele);
        return data;
    };
    $(".addCart").click(function () {

        var checkAttrSet = true;
        $('.spec_li').each(function(){

            if($(this).find('.spec:checked').length==0){
                // $.fn.myAlert('请选择商品属性:' + $(this).attr('data-attr-name'));
                $.fn.myAlert('请选择商品属性');
                checkAttrSet = false;
                return false;
            }
        })

        if(!checkAttrSet){
            return false;
        }

        var dialog = Dialog.loading();
        var $this = $(this);
        addCart(getGoodsAttr($("#goods-box"), $this.attr('data-goods'), 1), function (data) {
            dialog.close();

            if(data && data.data && data.data.url){

                Dialog.tip('您尚未登录，请先登录')
                return;
            } else if (data.status=='success') {
                Dialog.tip('添加成功');
                return;
            }
            Dialog.tip(data.msg);
        });
    });

    $("#buy").click(function () {

        var checkAttrSet = true;
        $('.spec_li').each(function(){

            if($(this).find('.spec:checked').length==0){
                // $.fn.myAlert('请选择商品属性:' + $(this).attr('data-attr-name'));
                $.fn.myAlert('请选择商品属性');
                checkAttrSet = false;
                return false;
            }
        })

        if(!checkAttrSet){
            return false;
        }

        var param = getGoodsAttr($("#goods-box"));
        param.flow_type = 'buy_now'
        addCart(param, function (data) {
            if (data.code == 0) {
                window.location.href = "flow.php?step=checkout&cart_value=" + data.data + "&flow_type=buy_now";
            }
            Dialog.tip(data.msg);
        });
    });

    $(".addCollect").click(function () {
        var ele = $(this);
         $.getJSON('user.php?act=collect&id=' + ele.attr('data-goods'), function (data) {
            if (data.code == 0) {
                Dialog.tip(data.data || '收藏成功！');
                //已收藏
                $('img.collected_1').show()
                $('img.collected_0').hide()
                $(".collecting span").text(parseInt( $(".collecting span").text() ) + 1);
                return;
            }
            Dialog.tip(data.msg);
         });
    });

    $(".payment").click(function () {
        $.getJSON('flow.php?step=select_payment&payment='+$(this).attr('data-id'), function (data) {
            if (data.error == 0) {
                $("#payBox").html(data.content);
                return;
            }
            Dialog.tip(data.message);
        });
    });

    $(".shipping").click(function () {
        $.getJSON('flow.php?step=select_shipping&shipping='+$(this).attr('data-id'), function (data) {
            if (data.error == 0) {
                $("#payBox").html(data.content);
                return;
            }
            Dialog.tip(data.error);
        });
    });
    $("#bonus").click(function () {
        $.getJSON('flow.php?step=change_bonus&bonus='+$(this).val(), function (data) {
            if (data.error == 0) {
                $("#payBox").html(data.content);
                return;
            }
            Dialog.tip(data.error);
        });
    });

    $("#bonusBtn").click(function () {
        $.getJSON('flow.php?step=validate_bonus&bonus_sn='+$("#bonusSn").val(), function (data) {
            if (data.error == 0) {
                $("#payBox").html(data.content);
                return;
            }
            Dialog.tip(data.error);
        });
    });
    $(".oos").click(function () {
        $.get('flow.php?step=change_oos&oos=' + $(this).val());
    });
    $("#payBox").on('click', "#submit", function () {
        if ($("input[name=payment]:checked").length == 0) {
            Dialog.tip('请选择支付方式');
            return;
        }
        $("#payForm").submit();
    });
    $(".spec_li .blck").click(function () {
        $(this).addClass("actived").siblings().removeClass('actived');
        $(this).find("input").attr('checked', true).siblings().attr('checked', false);
    });

    showCartCount();

    $(".number-group .minus").click(function () {
        var $this = $(this);
        if ($this.hasClass('disable')) {
            return;
        }
        var numberEle = $this.parents('.number-group').find('.number');
        var num = parseInt(numberEle.val()) - 1;
        numberEle.val(num);
        numberEle.trigger('change');
    });

    $(".number-group .plus").click(function () {
        var $this = $(this);
        var numberEle = $this.parents('.number-group').find('.number');
        var num = parseInt(numberEle.val()) + 1;
        numberEle.val(num);
        numberEle.trigger('change');
    });
    $("body").on("click", ".number-box .number-minus", function () {
        var $this = $(this);
        if ($this.hasClass('disable')) {
            return;
        }
        var numberEle = $this.parents('.number-box').find('.number-input');
        var num = parseInt(numberEle.val()) - 1;
        if (num < 1) {
            Dialog.tip('不能少于1');
            num = 1;
        }
        numberEle.val(num);
        numberEle.trigger('change');
    });

    $('body').on('click', ".number-box .number-plus", function () {
        var $this = $(this);
            var numberEle = $this.parents('.number-box').find('.number-input');
        var num = parseInt(numberEle.val()) + 1
        var max = numberEle.attr('max');
        if (max) {
            if (num > max) {
                Dialog.tip('不能大于库存数');
            }
            num = Math.min(num, parseInt(max));

            if(num > 99) {
                Dialog.tip("数量不能大于99");
                num = 99;
            }
        }



        num = num == 0 ? 1 : num;
        numberEle.val(num);
        numberEle.trigger('change');
    });
    $('body').on("change", ".number-box .number-input", function () {
        var $this = $(this);
        var minusEle = $this.parents('.number-group').find('.minus');
        var num = Math.max(1, parseInt($this.val()));
        var max = $this.attr('data-max');
        if (max && max > 1) {
            num = Math.min(max, num);
        }
        $this.val(num);
        if (num > 1) {
            minusEle.removeClass('disable');
        } else {
            minusEle.addClass('disable');
        }
    });
    $(".sendCode").click(function() {
        var $this = $(this);
        if ($this.hasClass('disable')) {
            return;
        }
        var phone = $(".phone").val();
        if (!phone || phone.length < 11) {
            Dialog.tip('请输入有效的手机号码！');
            return;
        }
        $.post('/zd.php?act=sms', {
            phone: phone
        }, function(data) {
            if (data.code == 0) {
                Dialog.tip(data.data);
                $this.addClass('disable');
                time = 60;
                refreshTime();
                return;
            }
            Dialog.tip(data.msg);
        }, 'json');
    });

    var time = 60;
    var refreshTime = function() {
        time --;
        if (time < 1) {
            $(".sendCode").text('重新发送验证码').removeClass('disable');
            return;
        }
        $(".sendCode").text(time);
        setTimeout(refreshTime, 1000);
    }
});