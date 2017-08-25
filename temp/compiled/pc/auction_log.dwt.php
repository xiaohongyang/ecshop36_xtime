<?php if ($this->_var['auction_log']): ?>
<?php $_from = $this->_var['auction_log']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'log');if (count($_from)):
    foreach ($_from AS $this->_var['log']):
?>
<dl class="corder-pre <?php if ($this->_var['log']['user_id'] == $this->_var['user_info']['user_id']): ?>active<?php endif; ?>">
    <dt><img src="<?php echo $this->_var['log']['avatar']; ?>"></dt>
    <dd style="margin-top:20px">出价人：<?php echo $this->_var['log']['user_name']; ?></dd>
    <dd>出价时间：<?php echo $this->_var['log']['bid_time']; ?></dd>
    <dd class="hui">出价金额：<?php echo $this->_var['log']['formated_bid_price']; ?></dd>
</dl>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<?php else: ?>
<h4>暂无出价记录</h4>
<?php endif; ?>