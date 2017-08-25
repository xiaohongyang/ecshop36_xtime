
<div class="zyliang goods-list">
    <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
    <dl>
      <dt><a href="<?php echo $this->_var['item']['url']; ?>">
      <span class="citem-img" style="background:url(<?php echo $this->_var['item']['goods_thumb']; ?>);  background-position: center;
    background-size: cover;"></span>
     </a></dt>
      <dd class="zyyi"><?php echo $this->_var['item']['goods_name']; ?></dd>
      <dd class="orange"><span class="cgoods-money">
      <b><?php echo $this->_var['item']['shop_price']; ?></b></span>
      <span class="shoop addCart" data-id="<?php echo $this->_var['item']['goods_id']; ?>">加入购物车</span></dd>
    </dl>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>