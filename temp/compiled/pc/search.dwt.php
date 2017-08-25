<?php echo $this->fetch('library/page_header.lbi'); ?>

<?php echo $this->fetch('library/nav.lbi'); ?>
</div>
<div class="box box1 box-bordertop">
    <div class="content">
        <div class="contents">
            <div class="screen">
                <div>
                    <a href="javascript:;">价格</a>
                    <img src="/pc/themes/default/img/19.png">
                    <img src="/pc/themes/default/img/20.png">
                </div>
                <div>
                    <a href="javascript:;">销量</a>
                    <img src="/pc/themes/default/img/19.png">
                    <img src="/pc/themes/default/img/20.png">
                </div>
                <div>
                    <a href="javascript:;">上架时间</a>
                    <img src="/pc/themes/default/img/19.png">
                    <img src="/pc/themes/default/img/20.png">
                </div>
                <p class="clear"></p>
            </div>
            
            <div class="pro">
                <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
                <div>
                    <dl>
                        <dt><img class="lazy" data-original="/<?php echo $this->_var['goods']['goods_thumb']; ?>" /></dt>
                        <dd class="one"><a href="<?php echo $this->_var['goods']['url']; ?>"><?php echo $this->_var['goods']['goods_name']; ?></a></dd>
                        <dd class="two"><a href="<?php echo $this->_var['goods']['url']; ?>"><?php echo $this->_var['goods']['goods_brief']; ?></a></dd>
                        <dd class="three"><a href="<?php echo $this->_var['goods']['url']; ?>">原价:<span><?php echo price_format($this->_var['goods']['market_price'], false); ?></span></a></dd>
                        <dd class="four"><a href="<?php echo $this->_var['goods']['url']; ?>">现价:<span><?php echo price_format($this->_var['goods']['shop_price'], false); ?></span></a></dd>
                        <dd class="five"><a href="<?php echo $this->_var['goods']['url']; ?>"><img src="themes/default/img/16.png" />加入购物车</a></dd>
                        <dd class="six"><a href="<?php echo $this->_var['goods']['url']; ?>">NEW</a></dd>
                        <dd class="seven"><a href="<?php echo $this->_var['goods']['url']; ?>">会员特供</a></dd>
                        <p class="clear"></p>
                    </dl>
                </div>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <p class="clear"></p>
            </div>
            

            <?php 
$k = array (
  'name' => 'page',
  'total' => $this->_var['total'],
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>

        </div>
        

    </div>
    
</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>