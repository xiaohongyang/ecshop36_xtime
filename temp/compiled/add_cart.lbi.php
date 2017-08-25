<div class="mengbannn cartGoods">
  <div class="modal-content">
    <div class="xqmtk">
    <p style="width:7%;float:right;"> <button type="button" class="close user-dealDone-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></p>
       <div class="bang" style="width:93%;float:left">
         <dl>
             <dt><img class="thumb" src="img/23.png"></dt>
             <dd><a href="#"><span class="zi price">0</span><b class="title"></b></a></dd>
             <dd><a href="#">库存<b class='stock'></b>件</a></dd>
             <dd class="selectedSpecBox"><a href="#"><span class="huise">已选:</span><em class="selected-spec"></em></a></dd>
         </dl>
      </div>
      <div style="clear:both">
          <div class="heiauto spec">

          </div>
      <h4 class="number-group"><span>购买数量</span><input type="button" value="+" class="jia number-plus">
      <input type="text" value="1" class="txt number">
      <input type="button" value="-" class="jian no number-minus"></h4>
      <input type="button" value="加入购物车" class="kucun">
    </div>
  </div>
</div>
</div>
<script>
    $(document).ready(function() {
        var goods_id = 0;
        var is_buy = false;
        var showAttrEle = null;
        var sku = 1;
        var showGoods = function(goods) {
            $(".cartGoods .thumb").attr("src", goods.goods_thumb);
            //$(".cartGoods .title").html(goods.goods_name);
            $(".cartGoods .price").html(goods.shop_price);
            sku = goods.goods_number;
             $(".cartGoods .stock").html(sku);
            var html = '';
            $.each(goods.properties, function(i, item) {
                var h = '';
                $.each(item.values, function(j, val) {
                    h += '<span data-id="'+ val.id +'" data-price="'+val.price+'">' + val.label +'</span>';
                });
                html += '<div class="spec-item"><h4>' + item.name
                +'</h4><div class="fla">' + h+'</div></div>';
            });
            $(".cartGoods .selectedSpecBox").hide();
            $(".cartGoods .spec").html(html);
            $(".cartGoods .number").val(1);
            $(".cartGoods .number-minus").addClass('disable');
            if (sku < 2) {
                $(".cartGoods .number-plus").addClass('disable');
            } else {
                $(".cartGoods .number-plus").removeClass('disable');
            }
            $(".cartGoods .selected-spec").text();
            $(".cartGoods").toggle();
            $(".cartGoods .kucun").val(is_buy ? '立即购买' : '加入购物车');
        }

        $(".addCart").click(function() {
            goods_id = $(this).attr("data-id");
            is_buy = $(this).attr('data-buy');
            showAttrEle = $(this).attr('data-for');
            $.getJSON("goods.php?act=buy&id=" + goods_id, function(data) {
                if (data.code == 0) {
                    showGoods(data.data);
                    return;
                }
                Dialog.tip(data.msg);
            });

        });
        var getSelectedAttr = function() {
            var data = [];
            var attr = '';
            $(".cartGoods .spec span.current").each(function(i, item) {
                 data.push($(item).attr('data-id'));
                 attr += ',' + $(item).text();
            });
            attr = attr.substr(1);
            $(".cartGoods .selected-spec").text(attr);
            showAttrEle && $(showAttrEle).text(attr);
            return data;
        };
         $(".cartGoods .spec").on("click", "span", function() {
             $(".cartGoods .selectedSpecBox").show();
            var $this = $(this);
            $this.addClass("current").siblings().removeClass("current");
            var attr = getSelectedAttr();
            var qty = $('.cartGoods .number-group .number').val();
            $.getJSON('goods.php?act=price&id=' + goods_id +'&attr=' +
            attr.join(',') + '&number=' + qty, function (data) {
                if (data.err_msg == '') {
                    $(".cartGoods .price").html(data.result);
                    return;
                }
                Dialog.tip(data.err_msg);
            });
        });
        $(".cartGoods .kucun").click(function() {
            var num = parseInt($(".cartGoods .number").val());
            var spec;
            var hasError = false;
            $(".cartGoods .spec .spec-item").each(function(i, el) {
                var ele = $(el).find(".current");
                if (ele.length < 1) {
                    hasError = true;
                    return false;
                }
                if (!spec) {
                    spec = ele.attr("data-id");
                    return;
                }
                spec += "," + ele.attr("data-id");
            });
            if (hasError) {
                Dialog.tip("请选择规格！");
                return;
            }
            var isBuy = $(this).val() == '立即购买';
            $(".cartGoods").hide();
            $.getJSON("flow.php?step=add_goods&goods_id=" + goods_id + "&num=" + num + "&spec="+ spec, function(data) {
                if (data.code == 0) {
                    if (isBuy) {
                        window.location.href = "flow.php?step=checkout&cart_value=" + data.data;
                        return;
                    }
                    data.msg = '添加成功！';
                    $('.x-footer .x-number').text(parseInt($('.x-footer .x-number').text()) + num);
                }
                Dialog.tip(data.msg);
            });
        });
        $(".cartGoods .number-minus").click(function() {
            var num = parseInt($(".cartGoods .number").val());
            num --;
            if (num < 1) {
                num = 1;
            }
            if (num < 2) {
                $(".cartGoods .number-minus").addClass('disable');
            }
            $(".cartGoods .number").val(num);
            if (num < sku) {
                $(".cartGoods .number-plus").removeClass('disable');
            }
        });
        $(".cartGoods .number").blur(function() {
            var num = parseInt($(".cartGoods .number").val());
            if (num > sku) {
                num = sku;
                Dialog.tip('输入的数量超过了库存数');
            }
            if (num < 1) {
                num = 1;
            }
            $(".cartGoods .number").val(num);
            if (num >= sku) {
                $(".cartGoods .number-plus").addClass('disable');
            } else {
                $(".cartGoods .number-plus").removeClass('disable');
            }
            if (num <= 1) {
                $(".cartGoods .number-minus").addClass('disable');
            } else {
                $(".cartGoods .number-minus").removeClass('disable');
            }
        });
        $(".cartGoods .number-plus").click(function() {
            var num = parseInt($(".cartGoods .number").val());
            num ++;
            if (num > sku) {
                Dialog.tip('不能再添加数量了哦');
                return;
            }
            $(".cartGoods .number-minus").removeClass('disable');
            $(".cartGoods .number").val(num);
            if (num >= sku) {
                $(".cartGoods .number-plus").addClass('disable');
            }
        });
        $(".cartGoods .close").click(function() {
            $(".cartGoods").hide();
        });
    });
</script>