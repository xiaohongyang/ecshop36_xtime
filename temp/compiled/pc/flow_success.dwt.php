<?php echo $this->fetch('library/page_header.lbi'); ?>
        </div>
<div class="box">
<div class="corder-main">
            <div class="corder-confirm">
                <div class="corder-confirm-first ">
                    <span>1.确认订单</span>
                </div>
                <div class="corder-confirm-first">
                    <img src="/pc/themes/default/img/cimage40.png" alt="">
                </div>
                <div class="corder-confirm-first ">
                    <span>2.支付订单</span>
                </div>
                <div class="corder-confirm-first">
                    <img src="/pc/themes/default/img/cimage40.png" alt="">
                </div>
                 <div class="corder-confirm-first corder-confirm-active">
                    <span>3.完成</span>
                </div>
            </div>
            <div class="cpayment-success">
                <h2>支付成功</h2>
                <h4>success</h4>
                <p class="corder-overflow">
                    <span class="corder-left">
                        <a href="index.php">回到商城首页</a>
                    </span>
                    <span class="corder-right">
                        <a href="user.php?act=order_list">查看订单列表</a>
                    </span>
                </p>
            </div>
        
        </div>
</div>

<?php echo $this->fetch('library/page_footer.lbi'); ?>