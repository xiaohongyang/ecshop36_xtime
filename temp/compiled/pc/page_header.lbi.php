<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
    <meta name="Description" content="<?php echo $this->_var['description']; ?>" />
    
    <title><?php echo $this->_var['page_title']; ?></title>
    

    <link rel="stylesheet" href="/themes/default/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/themes/default/css/dialog.min.css"/>
    <link rel="stylesheet" href="themes/default/css/style.css" type="text/css" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script src="/js/jquery.dialog.min.js"></script>
    <script src="/js/jquery.lazyload.js"></script>
    <script type="text/javascript" src="themes/default/js/jquery.event.drag-1.5.min.js"></script>
    <script type="text/javascript" src="themes/default/js/jquery.touchSlider.js"></script>

</head>
<body>

    <div class="box">
        <div class="header">
            <div class="head">
                <div class="tou">
                    <span class="order-left">
                        <a href="index.php">&lt;&lt; X-TIME 官网</a>
                    </span>
                    <div class="toudiv">
                        <?php 
$k = array (
  'name' => 'member_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
                    </div>
                    <p class="clear"></p>
                </div>
                <h1 class="logo">
                    <a href="index.php"><img src="themes/default/img/1.png" /></a>    
                </h1>
                <div class="search">
                    <form class="search-form" action="search.php" method="get">
                        <input type="text" name="keywords" required class="shuru" placeholder="Search" />
                        <span class="search-btn"><img src="themes/default/img/15.png" /></span>
                        <div class="clear"></div>
                    </form>
                </div>
                <div class="shopping">
                    <div class="shops">
                         <a href="flow.php" class="shopa"><img src="themes/default/img/16.png" /></a>
                        <span>购物车 <?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> 件</span>
                    </div>
                    <div class="shopcar" id="cat-info">
                        
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>