<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="x-around">
    <div class="x-head" style="background:#FEFFFF">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="x-headjt" onclick="javascrpt:window.location.href='/'">
                <img src="themes/default/img/jt.png" alt="">
            </div>
            <div class="x-headax x-headaxhui addCollect" data-goods="<?php echo $this->_var['goods']['goods_id']; ?>">
            </div>
            <div class="goods-gallery">
                <?php echo $this->fetch('library/goods_gallery.lbi'); ?>
            </div>
            <div class="x-shopname">
                <span><?php echo $this->_var['goods']['goods_name']; ?>
                    <span class="x-shopcolor"><?php echo $this->_var['goods']['goods_brief']; ?></span>
                </span>
            </div>
            <div class="x-shopother">
                <div class="x-left">
                    <span><?php if ($this->_var['goods']['is_shipping']): ?>运费：包邮<?php else: ?><?php endif; ?></span>
                    <span>售出：<?php echo $this->_var['goods']['cum_sales']; ?></span>
                     <span class="cpadding-left">
                        <?php if ($this->_var['goods']['goods_number'] != "" && $this->_var['cfg']['show_goodsnumber']): ?>
                        <?php if ($this->_var['goods']['goods_number'] == 0): ?>
                        <em><?php echo $this->_var['lang']['goods_number']; ?></em> <font color='red'><?php echo $this->_var['lang']['stock_up']; ?></font>
                        <?php else: ?>
                        <em><?php echo $this->_var['lang']['goods_number']; ?></em> <?php echo $this->_var['goods']['goods_number']; ?> <?php echo $this->_var['goods']['measure_unit']; ?>
                        <?php endif; ?>
                        <?php endif; ?>
                    </span>
                </div>
               
            </div>
            <div class="x-shopprice">
                <span class="x-shopuser">会员价：<em class="x-xinghuibi"><?php echo $this->_var['s_price']['0']; ?></em>.<?php echo $this->_var['s_price']['1']; ?>星辉币</span>
                <span class="x-shopoprice">原价：<?php echo $this->_var['goods']['market_price']; ?></span>
            </div>
            <div class="x-shopzk">
                <?php $_from = $this->_var['tag_words']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'words');if (count($_from)):
    foreach ($_from AS $this->_var['words']):
?>
                <button class="btn x-btn1"><?php echo $this->_var['words']; ?></button>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </div>
        </div>
        <div class="x-main">
            <?php if ($this->_var['goods']['promote_end_date']): ?>
            <div class="x-qgtime">
                <span>抢购截止时间：<?php echo local_date('Y-m-d H:i:s', $this->_var['goods']['promote_end_date']); ?></span>
            </div>
            <?php endif; ?>
            <div class="x-gouxuan">
                <div class="x-gxshop addCart" data-id="<?php echo $this->_var['goods']['goods_id']; ?>" data-for=".selected-attr">
                    <div class="x-left " >
                        <span class="x-gxyx">已选</span>
                        <span class="selected-attr"></span>
                    </div>
                    <div class="x-right">
                        <img src="themes/default/img/yjt.png" alt="">
                    </div>
                </div>
            </div>
            <div class="x-shopproduce">
                <h4>商品简介</h4>
                <div class="x-produdename">
                    <?php echo $this->_var['goods']['goods_desc']; ?>
                </div>
            </div>
            <div class="x-hotsale">
                <div class="x-hothead">
                    <div class="x-graytext">
                        <span class="x-graylayout">
                        <span class="x-grayimg">近期热卖</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="content" style="margin-bottom:80px">
            <?php 
$k = array (
  'name' => 'sales',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
        </div>
        <div class="x-footer row x-row">
            <div class="col-xs-2 x-paddr" onclick="javascrtpt:window.location.href='flow.php'">
                <img src="themes/default/img/shopcar.png" alt="">
                <span class="x-cshop">购物车</span>
                <span class="x-number"><?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></span>
            </div>
            <div class="col-xs-5 x-addshop">
                <a href="javascript:;" class="addCart" data-id="<?php echo $this->_var['goods']['goods_id']; ?>" data-for=".selected-attr">加入购物车</a>
            </div>
            <div class="col-xs-5 x-addbuy">
                <a href="javascript:;" class="addCart" data-id="<?php echo $this->_var['goods']['goods_id']; ?>" data-buy="true" data-for=".selected-attr">立即购买</a>
            </div>
        </div>
    </div>

    <?php echo $this->fetch('library/add_cart.lbi'); ?>
<script>
    $(document).ready(function () {
        $(".addCollect").click(function () {
            var ele = $(this);
            $.getJSON('user.php?act=collect&id=' + ele.attr('data-goods'), function (data) {
                if (data.code == 0) {
                    Dialog.tip(data.data);
                    ele.removeClass('x-headaxhui');
                    return;
                }
                Dialog.tip(data.msg);
            });
        });
        $.getJSON('user.php?act=has_collect&id=<?php echo $this->_var['goods']['goods_id']; ?>', function (data) {
            if (data.code == 0) {
                $(".addCollect").removeClass('x-headaxhui');
            }
        });
    });
</script>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>