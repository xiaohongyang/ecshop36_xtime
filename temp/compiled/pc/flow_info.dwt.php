<?php if ($this->_var['goods_list']): ?>
<?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
<div class="yifu">
    <h1>
        <img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" />
    </h1>
    <div class="yifu-deta">
        <p class="bold"><?php echo $this->_var['goods']['goods_name']; ?></p>
        <p class="hui"><?php echo $this->_var['goods']['goods_price']; ?></p>
        <p class="but number-box">
            <span class="number-minus">-</span>
            <input type="text" class="number-input" value="<?php echo $this->_var['goods']['goods_number']; ?>" placeholder="1" />
            <span class="number-plus">+</span>
            <div class="clear"></div>
        </p>
    </div>
    <div class="clear"></div>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<div class="yunfei">
    <p>
        <a href="javascript:;">合计|TOTAL</a>
        <span>0积分</span>
        <div class="clear"></div>
    </p>
    <p>
        <a href="javascript:;">(不含运费)</a>
        <span><?php echo $this->_var['total']; ?>星辉币</span>
        <div class="clear"></div>
    </p>
</div>
<input type="button" value="结算购物车" onclick="location.href = 'flow.php?step=checkout';"/>
<?php else: ?>
<div class="cshopcar-empty">
    <img src="./themes/default/img/shopcar-empty.png" alt="">
</div>
<p class="cshopcar-blue">购物车空空如也！</p>
<input type="button" value="先去看看" onclick="location.href = 'index.php';"/>
<?php endif; ?>