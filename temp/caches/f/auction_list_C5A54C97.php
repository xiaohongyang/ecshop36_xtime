<?php exit;?>a:3:{s:8:"template";a:4:{i:0;s:58:"D:/clientweb/Xtime/wwwroot/themes/default/auction_list.dwt";i:1;s:65:"D:/clientweb/Xtime/wwwroot/themes/default/library/page_header.lbi";i:2;s:63:"D:/clientweb/Xtime/wwwroot/themes/default/library/page_menu.lbi";i:3;s:65:"D:/clientweb/Xtime/wwwroot/themes/default/library/page_footer.lbi";}s:7:"expires";i:1503648633;s:8:"maketime";i:1503645033;}<!doctype html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="Keywords" content="" />
  <meta name="Description" content="" />
  
  <title>拍卖活动</title>
  
  <link href="themes/default/style.css" rel="stylesheet" type="text/css" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" href="/themes/default/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="/themes/default/css/font-awesome.min.css"/>
  <link rel="stylesheet" href="/themes/default/css/dialog.min.css"/>
    <link rel="stylesheet" href="/themes/default/css/slider.css"/>
  <link rel="stylesheet" href="/themes/default/css/new.css"/>
  <script src="/js/jquery.min.js"></script>
      <script src="/js/jquery.touchSwipe.min.js"></script>
    <script src="/js/jquery.dialog.min.js"></script>
    <script src="/js/jquery.slider.min.js"></script>
    <script src="/themes/default/js/main.js"></script>
</head>
<body>
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
        45ea207d7a2b68c49582d2d22adf953aads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"1";s:3:"num";s:1:"6";}45ea207d7a2b68c49582d2d22adf953a    </div>
    <ul class="nav">
                <li>
            <a href="auction.php?order=asc" class="current">
                综合
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" />
            </a>
        </li>
                        <li>
            <a href="auction.php?sort=process&order=asc">进度
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
        </li>
                        <li>
            <a href="auction.php?sort=price&order=asc">叫价
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" /></a>
        </li>
        
                <li>
            <a href="auction.php?sort=time&order=asc">上架时间
                <img src="/themes/default/img/top.png" width="10px" class="top" />
                <img src="/themes/default/img/bot.png" width="10px" class="bot" />
            </a>
        </li>
            </ul>
    <div class="content" style="margin-bottom:50px">
        <div class="zyliang">
                        <dl>
                <dt><a href="auction.php?act=view&id=2">
                    <img src="images/201705/thumb_img/5_thumb_G_1495451620560.jpg" width="100%;"></a></dt>
                <dd class="zyyi">手机商品5</dd>
                <dd><span class="x-jingpaima">SR,SSR</span></dd>
                <dd class="x-orange">当前叫价<span class="x-purple">
                    <span class="cgoods-money"><b><em class="cfont-big">110</em>.00</b> 星辉币</span></span></dd>
            </dl>
                        <dl>
                <dt><a href="auction.php?act=view&id=4">
                    <img src="images/201706/thumb_img/13_thumb_G_1498619665566.jpg" width="100%;"></a></dt>
                <dd class="zyyi">限时0629</dd>
                <dd><span class="x-jingpaima">SR,SSR</span></dd>
                <dd class="x-orange">当前叫价<span class="x-purple">
                    <span class="cgoods-money"><b><em class="cfont-big">120</em>.00</b> 星辉币</span></span></dd>
            </dl>
                        <dl>
                <dt><a href="auction.php?act=view&id=3">
                    <img src="images/201706/thumb_img/13_thumb_G_1498619665566.jpg" width="100%;"></a></dt>
                <dd class="zyyi">限时0629</dd>
                <dd><span class="x-jingpaima">SR,SSR</span></dd>
                <dd class="x-orange">当前叫价<span class="x-purple">
                    <span class="cgoods-money"><b><em class="cfont-big">99999999</em>.99</b> 星辉币</span></span></dd>
            </dl>
                        <dl>
                <dt><a href="auction.php?act=view&id=1">
                    <img src="images/201705/thumb_img/10_thumb_G_1495700579211.jpg" width="100%;"></a></dt>
                <dd class="zyyi">测试商品123321123321</dd>
                <dd><span class="x-jingpaima">SR,SSR</span></dd>
                <dd class="x-orange">当前叫价<span class="x-purple">
                    未出价</span></dd>
            </dl>
                    </div>
    </div>
    
<footer class="navbar navbar-default navbar-fixed-bottom" style="z-index:1">
  <dl>
    <dt><a href="/"><img src="themes/default/img/1.png"></a></dt>
    <dd><a href="/">商城</a></dd>
  </dl>
  <dl class="current">
    <dt><a href="auction.php"><img src="themes/default/img/2-2.png"></a></dt>
    <dd><a href="auction.php">竞拍</a></dd>
  </dl>
  <dl>
    <dt><a href="flow.php"><img src="themes/default/img/3.png"></a></dt>
    <dd><a href="flow.php">购物车</a></dd>
  </dl>
  <dl>
    <dt><a href="user.php"><img src="themes/default/img/4.png"></a></dt>
    <dd><a href="user.php">我的</a></dd>
  </dl>
</footer>
</div>
</body>
</html>