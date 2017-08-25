<?php echo $this->fetch('library/page_header.lbi'); ?>

  <div class="box">
    <header class="navbar navbar-default navbar-header navbar-fixed-top">
      <h1>
        <span class="san"></span>
        <form class="searchForm" action="search.php">
          <span class="fang"></span>
          <input type="text" name="keywords" class="radius" />
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
    <ul class="nav navlist">
      <?php if ($this->_var['sort'] == "total"): ?>
      <li>
        <a href="/index.php?sort=total&order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
        综合
        <img src="/themes/default/img/top<?php if ($this->_var['order'] == 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
          <img src="/themes/default/img/bot<?php if ($this->_var['order'] == 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
        </a>
      </li>
      <?php else: ?>
      <li>
        <a href="/index.php?sort=total&order=asc">综合
        <img src="/themes/default/img/top.png" width="10px" class="top" />
          <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
      </li>
      <?php endif; ?>
      <?php if ($this->_var['sort'] == "sale"): ?>
      <li>
        <a href="/index.php?sort=sale&order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
        销量
        <img src="/themes/default/img/top<?php if ($this->_var['order'] == 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
          <img src="/themes/default/img/bot<?php if ($this->_var['order'] == 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
        </a>
      </li>
      <?php else: ?>
      <li>
        <a href="/index.php?sort=sale&order=asc">销量
        <img src="/themes/default/img/top.png" width="10px" class="top" />
          <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
      </li>
      <?php endif; ?>
     <?php if ($this->_var['sort'] == "price"): ?>
      <li>
        <a href="/index.php?sort=price&order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
        价格
        <img src="/themes/default/img/top<?php if ($this->_var['order'] != 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
          <img src="/themes/default/img/bot<?php if ($this->_var['order'] != 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
        </a>
      </li>
      <?php else: ?>
      <li>
        <a href="/index.php?sort=price&order=asc">价格
        <img src="/themes/default/img/top.png" width="10px" class="top" />
          <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
      </li>
      <?php endif; ?>

      <?php if ($this->_var['sort'] == "time"): ?>
      <li>
        <a href="/index.php?sort=time&order=<?php if ($this->_var['order'] == 'asc'): ?>desc<?php else: ?>asc<?php endif; ?>" class="current">
        上架时间
        <img src="/themes/default/img/top<?php if ($this->_var['order'] == 'desc'): ?>1<?php endif; ?>.png" width="10px" class="top" />
          <img src="/themes/default/img/bot<?php if ($this->_var['order'] == 'asc'): ?>1<?php endif; ?>.png" width="10px" class="bot" />
        </a>
      </li>
      <?php else: ?>
      <li>
        <a href="/index.php?sort=time&order=asc">上架时间
        <img src="/themes/default/img/top.png" width="10px" class="top" />
          <img src="/themes/default/img/bot.png" width="10px" class="bot" />
        </a>
      </li>
      <?php endif; ?>

    </ul>
    <div class="content" style="margin-bottom:50px">
      <?php echo $this->fetch('library/goods_list.lbi'); ?>
    </div>

    <?php echo $this->fetch('library/page_menu.lbi'); ?>
  </div>
  <div class="zhekouzhe">
    <ul class="zhekou">
      <li><a href="/"<?php if (! $this->_var['filter']): ?> class="current"<?php endif; ?>>全部商品</a></li>
      <li><a href="javascript:replaceUri('filter', 'zk')"<?php if ($this->_var['filter'] == 'zk'): ?> class="current"<?php endif; ?>>折扣商品</a></li>
      <li><a href="javascript:replaceUri('filter', 'xg');"<?php if ($this->_var['filter'] == 'xg'): ?> class="current"<?php endif; ?>>限购产品</a></li>
      <li><a href="javascript:replaceUri('filter', 'hy');"<?php if ($this->_var['filter'] == 'hy'): ?> class="current"<?php endif; ?>>会员特供</a></li>
      <li><a href="javascript:replaceUri('filter', 'by');"<?php if ($this->_var['filter'] == 'by'): ?> class="current"<?php endif; ?>>包邮商品</a></li>
    </ul>
  </div>
  <script>
  $(document).ready(function() {
    $(".san").click(function() {
      $(".zhekouzhe").toggle();
    });
    $(".zhekouzhe").click(function() {
      $(".zhekouzhe").hide();  
    });
      var silder = $(".slider").slider({
          width: 1,
          height: 200
      });
  });
  function replaceUri(key, val) {
    var url = window.location.href;
    if (url.indexOf('?') < 0) {
      url += '?' + key + '=' + val;
    } else {
      url += '&' + key + '=' + val;
    }
    window.location.href = url;
  }


  $(function(){
    $(window).scroll(function() {                                   
      if ($(window).scrollTop() > 250) {
        $("header").addClass("navbar-headertop");
        $("ul.nav").addClass("nav-headertop");
         $("header").removeClass(" navbar-fixed-top");
      } else{
        $("header").removeClass(" navbar-headertop");
        $("ul.nav").removeClass("nav-headertop");
        $("header").addClass(" navbar-fixed-top");
      }
    });
  })

  </script>
        <?php echo $this->fetch('library/add_cart.lbi'); ?>
<?php echo $this->fetch('library/page_footer.lbi'); ?>