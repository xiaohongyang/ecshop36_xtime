

$(document).ready(function() {



    var toNumber = function (price) {
        price = price.replace(',', '').match(/[\d\.]+/);
        if (!price) {
            return 0;
        }
        return parseFloat(price);
    }, formatPrice = function (price) {
        return '￥'+ price.toFixed(2);
    }, mapGoods = function (callback) {
        $(".goods-item").each(function (i, ele) {
            if (callback($(ele)) == false) {
                return false;
            }
        });
    }, mapCheckedGoods = function (callback) {
        mapGoods(function (goods) {
            if (!goods.find('[type="checkbox"]').is(':checked')) {
                return;
            }
            if (callback(goods) == false) {
                return false;
            }
        });
    }, showAmount = function () {
        var total = 0, flow_cart = '', goods_number = 0;
        mapCheckedGoods(function (goods) {
            flow_cart += goods.attr('data-id') + ',';
            var price = toNumber(goods.find('.price').text());
            var number = parseInt(goods.find('.number-box .number-input').val());
            var amount = price * number;
            goods.find('.amount').text(formatPrice(amount));
            total += amount;
            goods_number ++;
        });
        $(".total").text(total);
        $(".checkout").text('结算('+goods_number+')').attr('href', 'javascript:void(0)').attr('onclick','if($(".top-table .goods-item").length < 1){ Dialog.tip("购物商品不能为空"); return false;} window.location.href="flow.php?step=checkout&cart_value=' + flow_cart + '"');
        //$(".cart-count").text($(".goods-item").length);
    }, changeGoods = function (rec_id, number, callback) {
        $.post('flow.php?step=update_cart',
            'goods_number['+rec_id+']=' + number, function (data) {
                if (data.code == 0) {
                    callback(data);

                } else if(data.msg){
                    Dialog.tip(data.msg)
                    $('.number-input').each(function(){
                        var max = $(this).attr('max')
                        max = max > 0 ? max : 1
                        max = max > 99 ? 99 : max

                        console.log('max:', max)
                        console.log('val:', $(this).val())
                        if(parseInt($(this).val()) > parseInt(max)) {

                            $(this).val(max)
                            var t = $(this)
                            setTimeout(function(){
                                t.trigger('keyup')
                            })

                        }
                    })
                    // if(data.msg.indexOf('多购买数量不能超过99')!= -1){
                    //     console.log(rec_id)
                    //     $("input[data-rec="+rec_id+"]").val(99)
                    // }
                }
            }, 'json');
    }, dropGoods = function (rect_id, callback) {
        $.getJSON('flow.php?step=drop_goods&id=' + rect_id, function (data) {
            if (data.code == 0) {
                callback && callback();
            }
        });
    }, collectGoods = function (goods_id, callback) {
        $.getJSON('user.php?act=collect&id=' + goods_id, function (data) {
            if (data.code == 0) {
                callback && callback();
            }
        });
    }, uploadCart = function (goods, num) {
        var wrap = goods;
        changeGoods(goods.attr('data-rec'), num, function () {
            showAmount();

            var number = goods.find('.number-input').val()
            number = parseFloat(number)
            var price = goods.attr('data-price')
            var giveInteger = goods.attr('data-give-integer')

            price = parseFloat(price)
            giveInteger = parseFloat(giveInteger)

            var amount = price * number;
            var giveIntegerAmount = giveInteger * number;
            amount = amount.toFixed(2) + '星辉币'
            giveIntegerAmount = giveIntegerAmount.toFixed(2)

            goods.find('.amount').html(amount)
            goods.find('.amount').next('p').html(giveIntegerAmount)

            if(goods.closest('.shopcar').length == 0)
                showCart();

        });
    };

    var uploadCartTarget = function (obj){
        var $this = obj.closest('.goods-item').find('.number-input');
        var minusEle = $this.parents('.number').find('.number-minus');
        var num = Math.max(1, parseInt($this.val()));
        var max = $this.attr('data-max');
//        if (max && max > 1) {
//            num = Math.min(max, num);
//        }
        //$this.val(num);
        if (num > 1) {
            minusEle.removeClass('disable');
        } else {
            minusEle.addClass('disable');
        }
        var goods = $this.parents('.goods-item');
        if(!$this.hasClass('number')) {
            uploadCart(goods, num);
        }
    }
    $.fn.uploadCartTarget = uploadCartTarget

    $('body').on('change',".number-box .number-input", function () {

    });


    $('body').on('keyup', ".number-box .number-input", function(){
        if($(this).hasClass('.number')) {

            var $this = $(this);
            $.fn.uploadCartTarget($this)
        } else {
            $this = $(this)
            var numberEle = $this.closest('.goods-item').find('.number-input');
            var num = parseInt(numberEle.val());
            if(isNaN(num))
                num=1
            if (num < 1) {
                Dialog.tip('不能少于1');
                num = 1;
            }
            numberEle.val(num);
            $.fn.uploadCartTarget(numberEle)
        }
    })

    $(".goods-item .delete").click(function () {
        var goods = $(this).parents('.goods-item');
        dropGoods(goods.attr('data-id'), function () {
            goods.remove();
            showAmount();
        });
    });
    $(".check-all [type=checkbox]").click(function () {

        var wrap = $(this).closest('div')
        if ($(this).is(':checked')) {

            wrap.find('div').find('input[type=checkbox]').prop('checked', true);

//            mapGoods(function (goods) {
//                goods.find('[type=checkbox]').prop('checked', true);
//            });
//            $(".check-all input").attr('checked', true);
        } else {
//            $(".check-all input").removeAttr('checked');
            wrap.find('div').find('input[type=checkbox]').prop('checked', false);
        }
        
        showAmount();
    });
    $(".goods-item [type=checkbox]").click(function () {
        if (!$(this).is(':checked')) {
//            $(".check-all input").removeAttr('checked');
            $(".check-all [type=checkbox]").prop('checked', false);
        }
        showAmount();
    });

    $('.dibu .check-all input[type=checkbox]').click(function(){

        if($(this).is(':checked'))
            $(this).closest('.corder-main-main').find('input[type=checkbox]').prop('checked', true);
        else
            $(this).closest('.corder-main-main').find('input[type=checkbox]').prop('checked', false);
    })

    $(".checkout").click(function() {

        var checkNumber = true
        var wrap = $('.dd-details');
        wrap.find('.number-input').each(function(){
            if($(this).val() > 99){
                checkNumber = false;
                return false;
            }
        })
        if(!checkNumber) {

            Dialog.tip('最多购买数量不能超过99。')
            return false;
        }
        var checkMax = true;
        wrap.find('.number-input').each(function(){
            var goodsName = $(this).closest('.goods-item').attr('goods-name')
            if(parseInt($(this).val()) > parseInt($(this).attr('max'))){
                Dialog.tip(goodsName + '库存不够,不能超过' + $(this).attr('max'))
                checkMax = false;
            }
        })
        if(!checkMax){

            return false;
        }

        var url = $(this).attr('href');
        if (!url) {
            url = 'flow.php?step=checkout';
        }
        window.location.href = url;
    });
    showAmount();
});



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

        if(typeof data.msg != undefined && data.msg && data.msg.indexOf('99')!=-1){
            //$('.number-box .number').val(99)
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
                showCart()
                return;
            }

            if(typeof data.msg != undefined && data.msg && data.msg.indexOf('99')!=-1){
                //$('.number-box .number').val(99)
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
            if(typeof data.msg != undefined && data.msg && data.msg.indexOf('99')!=-1){
                //$('.number-box .number').val(99)
            }
            Dialog.tip(data.msg);
        });
    });

    $(".addCollect").click(function () {
        var ele = $(this);

        var is_loged = false;
        $.ajax({
            url : 'index.php?act=is_guest',
            data : {},
            dataType : 'json',
            type : 'get',
            async : false,
            success : function (json) {
                if(json.code == 0){
                    is_loged = true;
                }
            }
        })
        if(!is_loged){
            Dialog.tip('尚未登录，请先登录')
            return;
        } else {
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
            })
        }
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
        $.fn.uploadCartTarget($(this))
    });

    $(".number-group .plus").click(function () {
        var $this = $(this);
        var numberEle = $this.parents('.number-group').find('.number');
        var num = parseInt(numberEle.val()) + 1;
        numberEle.val(num);
        $.fn.uploadCartTarget($(this))
    });
    $("body").on("click", ".number-box .number-minus", function () {
        var $this = $(this);
        if ($this.hasClass('disable')) {
            return;
        }
        var numberEle = $this.closest('.goods-item').find('.number-input');
        var num = parseInt(numberEle.val()) - 1;
        if (num < 1) {
            Dialog.tip('不能少于1');
            num = 1;
        }
        numberEle.val(num);
        $.fn.uploadCartTarget($(this))
    });

    $('body').on('click', ".number-box .number-plus", function () {
        var $this = $(this);
            var numberEle = $this.closest('.goods-item').find('.number-input');
        var num = parseInt(numberEle.val()) + 1
        var max = numberEle.attr('max');
        if (max) {
            if (num > max) {
                // Dialog.tip('不能大于库存数');
            }
            // num = Math.min(num, parseInt(max));


            // if(num > 99) {
            //     Dialog.tip("数量不能大于99");
            //     num = 99;
            // }
        }



        num = num == 0 ? 1 : num;
        numberEle.val(num);
        numberEle.trigger('keyup')
    });
    $('body').on("change", ".number-box .number-input", function () {
        var $this = $(this);
        var minusEle = $this.parents('.number-group').find('.minus');
        var num = Math.max(1, parseInt($this.val()));
        var max = $this.attr('data-max');
        // if (max && max > 1) {
        //     num = Math.min(max, num);
        // }
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

    $('body').on('change', '.number-input, .number-box .number', function(){
        var max = $(this).attr('max') ? $(this).attr('max') : 1;
        // if ($(this).val()  > 99)
        //     $(this).val( max )
    })

    $('body').on('focusin', '.number-input, .number-box .number', function(){
        // if ($(this).val()  > 99)
        //     $(this).val( $(this).attr('max') )

        $(this).data('val', $(this).val());
    })


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



var cartFlush = function(obj){
    var checkNumber = true;
    var wrap = obj.closest('.shopcar')
    if(wrap.length) {
        wrap.find('.number-input').each(function(){
            if($(this).val() > 99){
                checkNumber = false;
                return false;
            }
        })
    }
    if(!checkNumber){

        Dialog.tip('最多购买数量不能超过99。')
        return false;
    } else{
        location.href = 'flow.php?step=checkout';
    }
}