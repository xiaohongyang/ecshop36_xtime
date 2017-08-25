<?php echo $this->fetch('library/page_header.lbi'); ?>

<?php echo $this->fetch('library/nav.lbi'); ?>
</div>
<div class="box">
    <div class="product">
        <div class="pro-nav">
            <p>
                <a href="javascript:;">HOME</a>
                <span>&gt;</span>
                <a href="javascript:;">热门竞拍</a>
                <span>&gt;</span>
                <a href="javascript:;" class="current">竞拍商品详情</a>
            </p>
            <div>
                <div class="xing">
                    <img src="/pc/themes/default/img/product6.png">
                    <span>0</span>
                </div>
            </div>
            <p class="clear" style="height:0"></p>
        </div>
        
        <?php echo $this->fetch('library/goods_gallery.lbi'); ?>
        
        <div class="pro-detais">
            <p class="big"><?php echo $this->_var['goods']['goods_name']; ?></p>
            <p class="auction-info"><?php echo $this->_var['auction']['act_desc']; ?></p>
            <p class="huangbg"><span>积分竞拍</span><span class="corder-pad">竞拍截止时间:<?php echo $this->_var['auction']['end_time']; ?></span></p>
            <p class="corder-overflow corder-padt">
                <a href="javascript:;" class="hong">UR</a>
                <a href="javascript:;" class="huang">SSR</a>
                <a href="javascript:;" class="hui">SR</a>
                <a href="javascript:;" class="lv">R</a>
                <a href="javascript:;" class="lan">N</a>
            </p>
            <div class="huibg corder-overflow corder-padno">
                <div class="corder-left corder-auction-left">
                    <p>起拍价：<span><?php echo $this->_var['auction']['formated_start_price']; ?></span></p>
                    <p>最低加价幅度：<span><?php echo $this->_var['auction']['formated_deposit']; ?></span></p>
                    <?php if ($this->_var['auction']['last_bid']): ?>
                    <p class="hei">当前最高叫价：<span><?php echo $this->_var['auction']['last_bid']['formated_bid_price']; ?></span></p>
                    <?php else: ?>
                    <p class="hei">会员折扣价：<span><?php echo $this->_var['auction']['formated_current_price']; ?></span></p>
                    <?php endif; ?>
                </div>
                <div class="corder-right corder-auction-right">
                    <span>已有<em><?php echo $this->_var['auction']['bid_user_count']; ?></em>人参加</span>
                </div>
            </div>
            <?php if ($this->_var['auction']['status_no'] == FINISHED || $this->_var['auction']['status_no'] == SETTLED): ?>
            <div class="cauction-over-btn">
                <img src="/pc/themes/default/img/cimage50.png" alt="">
                <button>竞拍已结束</button>
            </div>
            <?php else: ?>
            <?php if ($this->_var['my_bid'] >= $this->_var['auction']['current_price'] && $this->_var['my_bid'] > 0): ?>
            <div class="cauctioning1-btn">
                        <button> <img src="/pc/themes/default/img/cimage57.png" alt="">暂不可叫价</button>
                        <span class="caucting-price corder-pad">你的当前叫价：<?php echo price_format($this->_var['my_bid'], false); ?></span>
                        <p class="corder-red">
                            * 需等其他人叫价之后才能再次叫价
                        </p>
                    </div>
            <?php else: ?>
            <div class="cauctioning-btn">
                <button> 
                    <a href="auction.php?act=bid&id=<?php echo $this->_var['auction']['act_id']; ?>">
                        <img src="/pc/themes/default/img/cimage56.png" alt="">立即加价
                    </a>
                </button>
                <?php if ($this->_var['my_bid']): ?>
                <span class="caucting-price corder-pad">你的当前叫价：<?php echo price_format($this->_var['my_bid'], false); ?></span>
                <?php endif; ?>
            </div>
            <?php endif; ?>
            <?php endif; ?>
        </div>
        <div class="clear"></div>

    </div>
    
    <div class="details-con">
        <div class="details-left">
            <div>
                <h1><img src="/pc/themes/default/img/cimage52.png"></h1>
                <div class="auction_list">

                </div>
            </div>
            <div class="caution-input corder-right">
                <img src="/pc/themes/default/img/cimage54.png" class="page-previous" alt="">
                <input type="text" class="page-input" value="1">
                <img src="/pc/themes/default/img/cimage55.png"  class="page-next" alt="">
                <input type="text" class="caution-padl" value="1">
                <span class="caution-go">GO&gt;&gt;</span>
            </div>

        </div>
        <div class="details-right">
            <h1><img src="/pc/themes/default/img/product9.png"></h1>
            <div>
                <?php echo $this->_var['goods']['desc']; ?>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    
</div>
<script>
    $(document).ready(function () {
        var getCollect = function() {
            $.getJSON('goods.php?act=collect_count&id=<?php echo $this->_var['auction']['goods_id']; ?>', function(data) {
                if (data.code != 0) {
                    return;
                }
                $(".collecting span").text(data.data.count);
            });
        };
        var getLog = function(page) {
            page = page ? page : 1;
            $.get('auction.php?act=log&id=<?php echo $this->_var['auction']['act_id']; ?>&page=' + page, function(html) {
                $(".auction_list").html(html);
                $(".page-input").val(page);
            });
        };
        getCollect();
        $(".auction_list").lazyload({
             callback: function($this) {
               getLog();
             }
        });

        $(".page-previous").click(function() {
            var num = $(".page-input").val();
            if (num < 2) {
                return;
            }
            getLog(num - 1);
        });
        $(".page-next").click(function() {
            var num = $(".page-input").val();
            getLog(num + 1);
        });
        $(".caution-go").click(function() {
            var num = $(".caution-padl").val();
            if (num < 1) {
                Dialog.tip('请输入正确的页码');
                return;
            }
            getLog(num);
        });
    });
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>