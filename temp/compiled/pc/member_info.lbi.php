<?php if ($this->_var['user_info']): ?>
<img src="<?php echo $this->_var['user_info']['avatar']; ?>"  class="avatar"/><?php echo $this->_var['user_info']['nick_name']; ?>
<div class="nicheng">
    <dl>
        <dt><img src="<?php echo $this->_var['user_info']['avatar']; ?>" class="avatar"  /></dt>
        <dt class="posi"><img src="themes/default/img/23.png" /></dt>
        <dd><?php echo $this->_var['user_info']['nick_name']; ?></dd>
    </dl>
    <ul>
        <li>
            <img src="themes/default/img/24.png" />
            <a href="javascript:;">积分</a>
            <span><?php echo $this->_var['user_info']['user_points']; ?></span>
            <div class="clear"></div>
        </li>
        <li>
            <img src="themes/default/img/25.png" />
            <a href="javascript:;">星辉币</a>
            <span><?php echo $this->_var['user_info']['user_money']; ?></span>
            <div class="clear"></div>
        </li>
        <li>
            <img src="themes/default/img/26.png" />
            <a href="user.php?act=account">账户充值</a>
        </li>
        <li>
            <img src="themes/default/img/27.png" />
            <a href="user.php?act=order_list">我的订单</a>
        </li>
        <li>
            <img src="themes/default/img/sc.png" />
            <a href="javascript:;">我的收藏</a>
        </li>
    </ul>
    <a href="user.php"><input type="button" value="查看账户" /></a>
    <p>
        <a href="user.php?act=logout">退出登录</a>
    </p>
</div>

<?php else: ?>
    <a href="user.php">登录</a>
    <a href="user.php?act=register">注册</a>
<?php endif; ?>