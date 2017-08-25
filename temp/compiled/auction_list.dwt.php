<?php echo $this->fetch('library/page_header.lbi'); ?>

<div class="box">
    <header class="navbar navbar-default navbar-header navbar-fixed-top">
        <h1>
            <span class="san"></span>
            <form class="searchForm" action="search.php" >
                <span class="fang"></span>
                <input type="text" name="keywords" class="radius">
            </form>
        </h1>
        <script>
            $(document).ready(function () {
                $(".searchForm [name=keywords]").keydown(function (e) {
                    if (e.keyCode == 13) {
                        $(".searchForm").submit();
                    }
                });
                $(".searchForm img").click(function (e) {
                    $(".searchForm").submit();
                });
            });
        </script>
    </header>
    <div class="banner">
        <?php 
$k = array (
  'name' => 'ads',
  'id' => '1',
  'num' => '6',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
    </div>
    <ul class="nav">
        <?php if (! $this->_var['sort']): ?>
        <li>
            <a href="auction.php?order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
                综合
                <img src="/themes/default/img/top<?php if ($this->_var['order'] == 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
                <img src="/themes/default/img/bot<?php if ($this->_var['order'] == 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
            </a>
        </li>
        <?php else: ?>
        <li>
            <a href="auction.php?order=asc">综合
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
        </li>
        <?php endif; ?>
        <?php if ($this->_var['sort'] == "process"): ?>
        <li>
            <a href="auction.php?sort=process&order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
                进度
                <img src="/themes/default/img/top<?php if ($this->_var['order'] == 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
                <img src="/themes/default/img/bot<?php if ($this->_var['order'] == 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
            </a>
        </li>
        <?php else: ?>
        <li>
            <a href="auction.php?sort=process&order=asc">进度
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
        </li>
        <?php endif; ?>
        <?php if ($this->_var['sort'] == "price"): ?>
        <li>
            <a href="auction.php?sort=price&order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
                叫价
                <img src="/themes/default/img/top<?php if ($this->_var['order'] != 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
                <img src="/themes/default/img/bot<?php if ($this->_var['order'] != 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
            </a>
        </li>
        <?php else: ?>
        <li>
            <a href="auction.php?sort=price&order=asc">叫价
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
        </li>
        <?php endif; ?>

        <?php if ($this->_var['sort'] == "time"): ?>
        <li>
            <a href="auction.php?sort=time&order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
                上架时间
                <img src="/themes/default/img/top<?php if ($this->_var['order'] == 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
                <img src="/themes/default/img/bot<?php if ($this->_var['order'] == 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
            </a>
        </li>
        <?php else: ?>
        <li>
            <a href="auction.php?sort=time&order=asc">上架时间
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" />
            </a>
        </li>
        <?php endif; ?>
    </ul>
    <div class="content" style="margin-bottom:50px">
        <div class="zyliang">
            <?php $_from = $this->_var['auction_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
            <dl>
                <dt><a href="auction.php?act=view&id=<?php echo $this->_var['goods']['act_id']; ?>">
                    <img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" width="100%;"></a></dt>
                <dd class="zyyi"><?php echo $this->_var['goods']['goods_name']; ?></dd>
                <dd><span class="x-jingpaima">SR,SSR</span></dd>
                <dd class="x-orange">当前叫价<span class="x-purple">
                    <?php if ($this->_var['goods']['current_price'] > 0): ?><?php echo price_format($this->_var['goods']['current_price'], false); ?><?php else: ?>未出价<?php endif; ?></span></dd>
            </dl>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
    </div>
    <?php echo $this->fetch('library/page_menu.lbi'); ?>

</div>


<?php echo $this->fetch('library/page_footer.lbi'); ?>