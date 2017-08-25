<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <ul class="orderdeul" style="margin-top:10px">
            <h5 class="bor">订单详情
            <?php if ($this->_var['order']['order_status'] == 1 && $this->_var['order']['pay_status'] == 1): ?>
                <span class="right">剩余支付时间: 07:46</span>
                <?php endif; ?>
            </h5>
            <li><a href="#"><span>订单编号:</span><?php echo $this->_var['order']['order_sn']; ?></a></li>
            <li><a href="#"><span>下单时间:</span><?php echo local_date('Y-m-d H:i:s', $this->_var['order']['order_sn']); ?></a></li>
            <li><a href="#"><span>订单状态:</span><span class="green"><?php echo $this->_var['order']['format_status']; ?></span></a></li>
        </ul>
        <div class="threedl">
            <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
            <dl>
                <dt><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" /></dt>
                <dd class="hang"><?php echo $this->_var['goods']['goods_name']; ?><a href="#"></a></dd>
                <dd><a href="#"><?php echo $this->_var['goods']['goods_attr']; ?></a></dd>
                <dd><a href="#">数量:<?php echo $this->_var['goods']['goods_number']; ?></a></dd>
            </dl>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
        <ul class="orderdeul" style="margin-top:10px">
            <h5 class="bor">配送方式-快递配送</h5>
            <li><a href="#"><span>收货人:</span><?php echo $this->_var['order']['consignee']; ?></a></li>
            <li><a href="#"><span>手机号:</span><?php echo $this->_var['order']['tel']; ?></a></li>
            <li style="height:50px;line-height:20px"><a href="#"><span>收货地址:</span>
                <span class="hang"><?php echo $this->_var['order']['region']; ?> <?php echo $this->_var['order']['address']; ?></span></a></li>
        </ul>
        <ul class="orderdeul">
            <h5 class="bor">订单明细</h5>
            <li><a href="#"><span>商品金额</span></a><span class="you"><?php echo price_format($this->_var['order']['goods_amount'], false); ?></span></li>
            <li class="sex"><a href="#"><span>快递费用</span></a><span class="you">+<?php echo price_format($this->_var['order']['shipping_fee'], false); ?></span></li>
            <li><a href="#"><span>应付金额</span></a><span class="you"><?php echo price_format($this->_var['order']['order_amount'], false); ?></li>
        </ul>
        <div class="qvxiao">
            <?php if ($this->_var['order']['pay_online']): ?>
            <?php echo $this->_var['order']['pay_online']; ?>
            <?php endif; ?>
            <?php if ($this->_var['order']['order_status'] == 5 && $this->_var['order']['shipping_status'] == 1): ?>
            <a class="cf_rv" href="user.php?act=affirm_received&order_id=<?php echo $this->_var['order']['order_id']; ?>"
               onclick="if (!confirm('确认收货！')) return false;">确认收货</a>
            <?php endif; ?>
        </div>
    </div>


</div>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
