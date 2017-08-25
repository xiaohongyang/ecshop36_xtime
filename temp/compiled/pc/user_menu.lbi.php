<div class="corder-main-header">
    <ul class="corder-main-ul corder-overflow">
        <li <?php if ($this->_var['action'] == 'order_list'): ?>class="active"<?php endif; ?>><a href="user.php?act=order_list">我的订单</a></li>
        <li><a href="javascript:;">我的收藏</a></li>
        <li <?php if ($this->_var['action'] == 'auction_list'): ?>class="active"<?php endif; ?>><a href="user.php?act=auction_list">我的竞拍</a></li>
        <li <?php if ($this->_var['action'] == 'account'): ?>class="active"<?php endif; ?>><a href="user.php?act=account">我的余额</a></li>
        <li <?php if ($this->_var['action'] == 'points'): ?>class="active"<?php endif; ?>><a href="user.php?act=points">我的积分</a></li>
        <li <?php if ($this->_var['action'] == 'index'): ?>class="active"<?php endif; ?>><a href="user.php">个人信息</a></li>
        <li <?php if ($this->_var['action'] == 'address_list'): ?>class="active"<?php endif; ?>><a href="user.php?act=address_list">地址管理</a></li>
    </ul>
</div>