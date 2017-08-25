<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <ul class="payfornav">
            <li><a href="user.php?act=order_list"<?php if ($this->_var['type'] < 1): ?> class="current"<?php endif; ?>>全部</a></li>
            <li><a href="user.php?act=order_list&type=1"<?php if ($this->_var['type'] == 1): ?> class="current"<?php endif; ?>>待付款</a></li>
            <li><a href="user.php?act=order_list&type=3"<?php if ($this->_var['type'] == 3): ?> class="current"<?php endif; ?>>待收货</a></li>
            <li class="kuan"><a href="user.php?act=order_list&type=4"<?php if ($this->_var['type'] == 4): ?> class="current"<?php endif; ?>>已完成</a></li>
        </ul>
        
        <?php $_from = $this->_var['order_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'order');if (count($_from)):
    foreach ($_from AS $this->_var['order']):
?>
        <div class="payfordl">
            <ul class="memberindexul" style="margin-top:10px">
                <li><a href="user.php?act=order_detail&order_id=<?php echo $this->_var['order']['order_id']; ?>">订单编号:<?php echo $this->_var['order']['order_sn']; ?></a>
                    <span class="you green"><?php echo $this->_var['order']['format_status']; ?></span></li>
            </ul>
            <dl>
                <?php if ($this->_var['order']['goods_list'] | count == 1): ?>
                <dt><a href="goods.php?id=<?php echo $this->_var['order']['goods_list']['0']['goods_id']; ?>"><img src="<?php echo $this->_var['order']['goods_list']['0']['goods_thumb']; ?>" /></a></dt>
                <dd class="hang">
                    <a href="goods.php?id=<?php echo $this->_var['order']['goods_list']['0']['goods_id']; ?>"><?php echo $this->_var['order']['goods_list']['0']['goods_name']; ?></a></dd>
                <dd><a href="javascript:;"><?php echo $this->_var['order']['goods_list']['0']['goods_attr']; ?></a></dd>
                <dd><a href="javascript:;">数量:<span><?php echo $this->_var['order']['goods_list']['0']['goods_number']; ?></span></a></dd>
                <?php else: ?>
                <?php $_from = $this->_var['order']['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
                <dt><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" /></dt>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <p class="gong">共<?php echo count($this->_var['order']['goods_list']); ?>件</p>
                <?php endif; ?>
            </dl>
        </div>
        <p class="qvxiao">
            <a  class="collection-left"><span><?php echo $this->_var['order']['total_fee']; ?></span></a>
           <span class="wait-pay collection-right wait-pay1"> <?php echo $this->_var['order']['handler']; ?></span>
        </p>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>





    </div>


</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>
