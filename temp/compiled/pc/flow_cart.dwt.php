<?php echo $this->fetch('library/page_header.lbi'); ?>
    <?php echo $this->fetch('library/user_header.lbi'); ?>
        </div>
<div class="box">
    <div class="corder-main">

        <div class="corder-main-main">
                <div class="corder-main-mainheader corder-overflow">
                    <div class="corder-left">
                        <img src="/pc/themes/default/img/40.png" alt="">
                    </div>
                    <div class="corder-right corder-search-group">
                        <input type="text" class="corder-search" value="Search">
                        <span class="corder-search-icon">
                            <img src="/pc/themes/default/img/cimage5.png" alt="">
                        </span>
                    </div>
                </div>
                <div class="corder-main-mainmain">
                    <p class="incheck check-all"><input type="checkbox">全选</p>
                    <div class="corder-main-mains">
                        <span>项目</span>
                        <span>规格</span>
                        <span>单价</span>
                        <span>数量</span>
                        <span>小计</span>
                        <span class="corder-status-releative">交易状态 <img src="/pc/themes/default/img/cimage6.png" alt="">
                            <div class="corder-status">
                                <ul>
                                    <li><a href="javascript:;">待付款</a></li>
                                    <li><a href="javascript:;">待发货</a></li>
                                    <li><a href="javascript:;">待收货</a></li>
                                    <li><a href="javascript:;">交易完成</a></li>
                                    <li><a href="javascript:;">交易取消</a></li>
                                    <li><a href="javascript:;">退款中的订单</a></li>
                                </ul>
                            </div>
                        </span>
                    </div>
                    <div class="dd-details">
                        <p class="corder-overflow corder-pagg">
                            <span class="corder-left check-all">
                                <em><input type="checkbox"></em>
                                <span class="corder-pad">普通商品</span>
                            </span>
                        </p>
                        <div class="corder-details">
                            <div class="corder-top">
                                <table class="top-table">
                                    <tbody>
                                        <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
                                        <tr data-id="<?php echo $this->_var['goods']['rec_id']; ?>" class="goods-item">
                                        <td>
                                            <input type="checkbox">
                                            <div class="dlkuan">
                                                <h1><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></h1>
                                                <div class="ddkuan">
                                                    <p><?php echo $this->_var['goods']['goods_name']; ?></p>
                                                    <!--<p><span class="hse">规格:</span>S/M;黑色;套装/单买;50*60MM/70*70MM</p>
                                                    <p>
                                                        <span class="hong">UR专享</span>
                                                        <span class="huang">SSR专享</span>
                                                        <span class="hui">SR专享</span>
                                                        <span class="lv">R专享</span>
                                                        <span class="lan">N专享</span>
                                                        <div class="clear"></div>
                                                    </p>-->
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </td>
                                        <td><?php echo $this->_var['goods']['goods_attr']; ?></td>
                                        <td>
                                            <p class="price"><?php echo price_format($this->_var['goods']['goods_price'], false); ?></p>
                                            <p>+0积分</p>    
                                        </td>
                                        <td>
                                            <p class="huise">每人限购10件</p>
                                            <p class="jiajian number-box">
                                                <span class="number-minus">-</span>
                                                <input type="text" class="number-input" value="<?php echo $this->_var['goods']['goods_number']; ?>">
                                                <span class="number-plus">+</span>
                                                </p><div class="clear"></div>
                                            <p></p>
                                            <p class="hongse">*库存紧张</p>    
                                        </td>
                                        <td>
                                            <p class="amount"><?php echo price_format($this->_var['goods']['subtotal'], false); ?></p>
                                            <p>+0积分</p>    
                                        </td>
                                        <td class="delete">X</td>
                                    </tr>
                                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                                </tbody>
                            </table>
                            </div>
                            
                        </div>
                    </div>

                    <?php if ($this->_var['exchange_goods']): ?>
                    <div class="dd-details">
                        <p class="corder-overflow corder-pagg">
                            <span class="corder-left">
                                <em><input type="checkbox"></em>
                                <span class="corder-pad">积分商城商品</span>
                            </span>
                        </p>
                        <div class="corder-details">
                            <div class="corder-top">
                                <table class="top-table">
                                    <tbody><tr>
                                        <td>
                                            <input type="checkbox">
                                            <div class="dlkuan">
                                                <h1><img src="/pc/themes/default/img/cimage8.png"></h1>
                                                <div class="ddkuan">
                                                    <p>我事拿来卖的快来买我快来买我快来买我快来买我</p>
                                                    <!--<p><span class="hse">规格:</span>S/M;黑色;套装/单买;50*60MM/70*70MM</p>
                                                    <p>
                                                        <span class="hong">UR专享</span>
                                                        <span class="huang">SSR专享</span>
                                                        <span class="hui">SR专享</span>
                                                        <span class="lv">R专享</span>
                                                        <span class="lan">N专享</span>
                                                        <div class="clear"></div>
                                                    </p>-->
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </td>
                                        <td>S;白色;蛇皮</td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>
                                            <p class="huise">每人限购10件</p>
                                            <p class="jiajian">
                                                <span>-</span>
                                                <input type="text">
                                                <span>+</span>
                                                </p><div class="clear"></div>
                                            <p></p>
                                            <p class="hongse">*库存紧张</p>    
                                        </td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>X</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox">
                                            <div class="dlkuan">
                                                <h1><img src="/pc/themes/default/img/cimage8.png"></h1>
                                                <div class="ddkuan">
                                                    <p>我事拿来卖的快来买我快来买我快来买我快来买我</p>
                                                    <!--<p><span class="hse">规格:</span>S/M;黑色;套装/单买;50*60MM/70*70MM</p>
                                                    <p>
                                                        <span class="hong">UR专享</span>
                                                        <span class="huang">SSR专享</span>
                                                        <span class="hui">SR专享</span>
                                                        <span class="lv">R专享</span>
                                                        <span class="lan">N专享</span>
                                                        <div class="clear"></div>
                                                    </p>-->
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </td>
                                        <td>S;白色;蛇皮</td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p class="orange"><span>SSR</span></p>    
                                        </td>
                                        <td>
                                            <p class="huise">每人限购10件</p>
                                            <p class="jiajian">
                                                <span>-</span>
                                                <input type="text">
                                                <span>+</span>
                                                </p><div class="clear"></div>
                                            <p></p>
                                            <p class="hongse">*库存紧张</p>    
                                        </td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>X</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input type="checkbox">
                                            <div class="dlkuan">
                                                <h1><img src="/pc/themes/default/img/cimage8.png"></h1>
                                                <div class="ddkuan">
                                                    <p>我事拿来卖的快来买我快来买我快来买我快来买我</p>
                                                    <!--<p><span class="hse">规格:</span>S/M;黑色;套装/单买;50*60MM/70*70MM</p>
                                                    <p>
                                                        <span class="hong">UR专享</span>
                                                        <span class="huang">SSR专享</span>
                                                        <span class="hui">SR专享</span>
                                                        <span class="lv">R专享</span>
                                                        <span class="lan">N专享</span>
                                                        <div class="clear"></div>
                                                    </p>-->
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </td>
                                        <td>S;白色;蛇皮</td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>
                                            <p class="red"><span>VR</span></p>    
                                        </td>
                                        <td>
                                            <p class="huise">每人限购10件</p>
                                            <p class="jiajian">
                                                <span>-</span>
                                                <input type="text">
                                                <span>+</span>
                                                </p><div class="clear"></div>
                                            <p></p>
                                            <p class="hongse">*库存紧张</p>    
                                        </td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>X</td>
                                    </tr>
                                </tbody></table>
                            </div>
                            
                        </div>
                    </div>
                    <?php endif; ?>

                    <?php if ($this->_var['expire_goods']): ?>
                    <div class="dd-details">
                        <p class="corder-overflow corder-pagg">
                            <span class="corder-left">
                                <em></em>
                                <span class="corder-pad">失效商品</span>
                            </span>
                        </p>
                        <div class="corder-details">
                            <div class="corder-top">
                                <table class="top-table">
                                    <tbody><tr>
                                        <td>
                                            <span class="shixiao">失效</span>
                                            <div class="dlkuan">
                                                <h1><img src="/pc/themes/default/img/cimage8.png"></h1>
                                                <div class="ddkuan">
                                                    <p>我事拿来卖的快来买我快来买我快来买我快来买我</p>
                                                    <!--<p><span class="hse">规格:</span>S/M;黑色;套装/单买;50*60MM/70*70MM</p>
                                                    <p>
                                                        <span class="hong">UR专享</span>
                                                        <span class="huang">SSR专享</span>
                                                        <span class="hui">SR专享</span>
                                                        <span class="lv">R专享</span>
                                                        <span class="lan">N专享</span>
                                                        <div class="clear"></div>
                                                    </p>-->
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </td>
                                        <td>S;白色;蛇皮</td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>
                                            <p class="huise">每人限购10件</p>
                                            <p class="jiajian">
                                                <span>-</span>
                                                <input type="text">
                                                <span>+</span>
                                                </p><div class="clear"></div>
                                            <p></p>
                                            <p class="hongse">*库存紧张</p>    
                                        </td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>X</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span class="shixiao">失效</span>
                                            <div class="dlkuan">
                                                <h1><img src="/pc/themes/default/img/cimage8.png"></h1>
                                                <div class="ddkuan">
                                                    <p>我事拿来卖的快来买我快来买我快来买我快来买我</p>
                                                    <!--<p><span class="hse">规格:</span>S/M;黑色;套装/单买;50*60MM/70*70MM</p>
                                                    <p>
                                                        <span class="hong">UR专享</span>
                                                        <span class="huang">SSR专享</span>
                                                        <span class="hui">SR专享</span>
                                                        <span class="lv">R专享</span>
                                                        <span class="lan">N专享</span>
                                                        <div class="clear"></div>
                                                    </p>-->
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </td>
                                        <td>S;白色;蛇皮</td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p class="orange"><span>SSR</span></p>    
                                        </td>
                                        <td>
                                            <p class="huise">每人限购10件</p>
                                            <p class="jiajian">
                                                <span>-</span>
                                                <input type="text">
                                                <span>+</span>
                                                </p><div class="clear"></div>
                                            <p></p>
                                            <p class="hongse">*库存紧张</p>    
                                        </td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>X</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <span class="shixiao">失效</span>
                                            <div class="dlkuan">
                                                <h1><img src="/pc/themes/default/img/cimage8.png"></h1>
                                                <div class="ddkuan">
                                                    <p>我事拿来卖的快来买我快来买我快来买我快来买我</p>
                                                    <!--<p><span class="hse">规格:</span>S/M;黑色;套装/单买;50*60MM/70*70MM</p>
                                                    <p>
                                                        <span class="hong">UR专享</span>
                                                        <span class="huang">SSR专享</span>
                                                        <span class="hui">SR专享</span>
                                                        <span class="lv">R专享</span>
                                                        <span class="lan">N专享</span>
                                                        <div class="clear"></div>
                                                    </p>-->
                                                </div>
                                                <div class="clear"></div>
                                            </div>
                                        </td>
                                        <td>S;白色;蛇皮</td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>
                                            <p class="red"><span>VR</span></p>    
                                        </td>
                                        <td>
                                            <p class="huise">每人限购10件</p>
                                            <p class="jiajian">
                                                <span>-</span>
                                                <input type="text">
                                                <span>+</span>
                                                </p><div class="clear"></div>
                                            <p></p>
                                            <p class="hongse">*库存紧张</p>    
                                        </td>
                                        <td>
                                            <p>1200.99星辉</p>
                                            <p>+200000积分</p>    
                                        </td>
                                        <td>X</td>
                                    </tr>
                                </tbody></table>
                            </div>
                            
                        </div>
                    </div>
                    <?php endif; ?>
                    <div class="dibu">
                        <div class="zuo check-all">
                            <input type="checkbox">
                            <span>全选</span>
                            <span>删除</span>
                            <span>消除失效宝贝</span>
                            <div class="clear"></div>
                        </div>
                        <div class="you">
                            <p>需支出:<a class="total">200000</a><span>星辉币</span><a>0</a><span>积分</span></p>
                            <input type="button" class="checkout" value="结算">
                        </div>
                        <div class="clear"></div>
                    </div>





                </div>
            </div>
    </div>
</div>

<script src="/pc/themes/default/js/flow.js"></script>
<script>
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
        $(".checkout").text('结算('+goods_number+')').attr('href', 'flow.php?step=checkout&cart_value=' + flow_cart);
        //$(".cart-count").text($(".goods-item").length);
    }, changeGoods = function (rec_id, number, callback) {
        $.post('flow.php?step=update_cart',
            'goods_number['+rec_id+']=' + number, function (data) {
                if (data.code == 0) {
                    callback();
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
        changeGoods(goods.attr('data-rec'), num, function () {
            showAmount();
        });
    };

    $(".number-box .number-input").change(function () {
        var $this = $(this);
        var minusEle = $this.parents('.number').find('.number-minus');
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
        var goods = $(this).parents('.goods-item');
        uploadCart(goods, num);
    });
    $(".goods-item .delete").click(function () {
        var goods = $(this).parents('.goods-item');
        dropGoods(goods.attr('data-id'), function () {
            goods.remove();
            showAmount();
        });
    });
    $(".check-all [type=checkbox]").click(function () {
        if ($(this).is(':checked')) {
            mapGoods(function (goods) {
                goods.find('[type=checkbox]').prop('checked', true);
            });
            $(".check-all input").attr('checked', true);
        } else {
            $(".check-all input").removeAttr('checked');
        }
        
        showAmount();
    });
    $(".goods-item [type=checkbox]").click(function () {
        if (!$(this).is(':checked')) {
            $(".check-all input").removeAttr('checked');
        }
        showAmount();
    });
    $(".checkout").click(function() {
        var url = $(this).attr('href');
        if (!url) {
            url = 'flow.php?step=checkout';
        }
        window.location.href = url;
    });
    showAmount();
});
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>