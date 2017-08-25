<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content">
        <dl class="memberindex">
            <dt><img src="<?php echo $this->_var['info']['avatar']; ?>" width="100%" /></dt>
            <dd>
                <a href="user.php?act=profile">
                    <span><?php echo $this->_var['info']['nick_name']; ?></span>
                    <img src="/themes/default/img/12.png" width="12px">
                </a>
            </dd>
        </dl>
        <ul class="memberindexul memberindexul1">
            <li>
                <a href="/user.php?act=my_card">
                    <img src="/themes/default/img/18.png" width="20px" />
                    <span> 我的会员卡 </span>
                    <span class="you">
                        <img src="/themes/default/img/12.png" width="10px" />
                    </span>
                </a>
            </li>
            <li>
                 <a href="/user.php?act=order_list">
                    <img src="/themes/default/img/17.png" width="20px" />
                   <span>我的订单</span>
                    <span class="you">
                        <img src="/themes/default/img/12.png" width="10px" />
                    </span>
                 </a>
            </li>
            <li>
                <a href="javascript:;">
                    <img src="/themes/default/img/jp.png" width="20px" />
                   <span>我的竞拍</span>
                    <span class="you">
                        <img src="/themes/default/img/12.png" width="10px" />
                    </span>
                </a>
            </li>
            <li>
                <a href="/user.php?act=my_account">
                    <img src="/themes/default/img/19.png" width="20px" />
                    <span>我的账户(星辉币)</span>
                    <span class="you">
                        <img src="/themes/default/img/12.png" width="10px" />
                    </span>
                </a>
            </li>
            <li>
                <a href="/user.php?act=my_score">
                    <img src="/themes/default/img/20.png" width="20px" />
                    <span>我的积分</span>
                    <span class="you">
                        <img src="/themes/default/img/12.png" width="10px" />
                    </span>
                </a>
            </li>
            <li>
                <a href="user.php?act=collection_list">
                    <img src="/themes/default/img/28.png" width="20px" />
                    <span>我的收藏</span>
                    <span class="you">
                        <img src="/themes/default/img/12.png" width="10px" />
                    </span>
                </a>
            </li>
            <li>
                <a href="user.php?act=address_list">
                    <img src="/themes/default/img/21.png" width="20px" />
                    <span>地址管理</span>
                    <span class="you">
                        <img src="/themes/default/img/12.png" width="10px" />
                    </span>
                </a>
            </li>
        </ul>
    </div>

    <?php echo $this->fetch('library/page_menu.lbi'); ?>
</div>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
