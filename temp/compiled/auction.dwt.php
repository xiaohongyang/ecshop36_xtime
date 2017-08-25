<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="x-around">
    <div class="x-head" style="background:#FEFFFF">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="x-headjt" onclick="javascrpt:window.location.href='/'">
                <img src="themes/default/img/jt.png" alt="">
            </div>
            <div class="x-headax x-headaxhui addCollect" data-goods="<?php echo $this->_var['goods']['goods_id']; ?>">
            </div>
            <div class="goods-gallery">
                <?php echo $this->fetch('library/goods_gallery.lbi'); ?>
            </div>
            <div class="x-shopname">
                <span><?php echo $this->_var['auction_goods']['goods_name']; ?>
                    <span class="x-shopcolor"><?php echo $this->_var['auction_goods']['goods_brief']; ?></span>
                </span>
            </div>
            <div class="x-shopother">
                <div class="x-left">
                    <span>起拍价：<?php echo $this->_var['auction']['formated_start_price']; ?></span>
                    <span>最低加价幅度：<?php echo $this->_var['auction']['formated_amplitude']; ?></span>
                </div>
            </div>
            <div class="x-shopprice">
                <div class="x-left">
                    <span class="x-shopuser">当前叫价：<?php echo $this->_var['auction']['formated_current_price']; ?></span>
                </div>
                <div class="x-right">
                    <span class="x-rightspan"><?php echo $this->_var['auction']['order_count']; ?>人叫价<img src="/themes/default/img/jiantou1.png" alt=""></span>
                </div>

            </div>
            <div class="x-shopzk">
                <button class="btn x-btn1">星辉币竞价</button>

            </div>
        </div>
        <div class="x-main">
            <div class="x-qgtime">
                <span>竞拍截止时间：<?php echo $this->_var['auction']['end_time']; ?></span>
            </div>
            <div class="x-gouxuan">
                <div class="x-gxshop">
                    <div class="x-left">
                        <span class="x-gxyx">竞价权限</span>
                        <span>SR，SSR</span>
                    </div>
                    <div class="x-right">
                        <a href="auction.php?act=log&id=<?php echo $this->_var['auction']['act_id']; ?>"><img src="/themes/default/img/yjt.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="x-shopproduce">
                <h4>规整与商品简介</h4>
                <div class="x-produdename">
                    <?php echo $this->_var['goods']['goods_desc']; ?>
                </div>
            </div>
        </div>
        <div class="content" style="margin-bottom:50px">
        </div>
        <div class="x-footer row x-row">
            <?php 
$k = array (
  'name' => 'auction_btn',
  'auction' => $this->_var['auction'],
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
        </div>
    </div>
<script>
    $(document).ready(function () {
        $(".addCollect").click(function () {
            var ele = $(this);
            $.getJSON('user.php?act=collect&id=' + ele.attr('data-goods'), function (data) {
                if (data.code == 0) {
                    Dialog.tip(data.data);
                    ele.removeClass('x-headaxhui');
                    return;
                }
                Dialog.tip(data.msg);
            });
        });
        $.getJSON('user.php?act=has_collect&id=<?php echo $this->_var['goods']['goods_id']; ?>', function (data) {
            if (data.code == 0) {
                $(".addCollect").removeClass('x-headaxhui');
            }
        });
    });
</script>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>