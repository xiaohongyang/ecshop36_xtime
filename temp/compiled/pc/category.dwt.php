<?php echo $this->fetch('library/page_header.lbi'); ?>

<?php echo $this->fetch('library/nav.lbi'); ?>
        </div>
        
<div class="main_visual">
<div class="box">
    <div class="posi ">
        <h3>全部主题周边</h3>
        <ul class="all">
            <?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');if (count($_from)):
    foreach ($_from AS $this->_var['cat']):
?>
            <li><a href="<?php echo $this->_var['cat']['url']; ?>"><?php echo $this->_var['cat']['name']; ?></a></li>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
</div>

<div class="flicking_con">
    <a href="#">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
</div>
<div class="main_image">
    <ul>
        <li><img src="themes/default/img/8.png" width="100%"></li>
        <li><img src="themes/default/img/img_main_2.jpg" width="100%"></li>
        <li><img src="themes/default/img/img_main_3.jpg" width="100%"></li>
        <li><img src="themes/default/img/img_main_4.jpg" width="100%"></li>
        <li><img src="themes/default/img/img_main_5.jpg" width="100%"></li>
    </ul>
    <a href="javascript:;" id="btn_prev"></a>
    <a href="javascript:;" id="btn_next"></a>
</div>
</div>
        

<div class="box box1">
<div class="content">
    <div class="contents">
        <h1 class="title"><img src="themes/default/img/9.png" /></h1>
        <div class="screen">
            <div class="sort-btn 
            <?php if ($this->_var['sort'] == 'price' && $this->_var['order'] == 'asc'): ?> sort-asc <?php endif; ?>
            <?php if ($this->_var['sort'] == 'price' && $this->_var['order'] == 'desc'): ?> sort-desc <?php endif; ?>
            ">
                <a href="javascript:;">价格</a>
                <i class="asc-btn"></i>
                <i class="desc-btn"></i>
            </div>
            <div class="sort-btn 
            <?php if ($this->_var['sort'] == 'sales' && $this->_var['order'] == 'asc'): ?> sort-asc <?php endif; ?>
            <?php if ($this->_var['sort'] == 'sales' && $this->_var['order'] == 'desc'): ?> sort-desc <?php endif; ?>
            ">
                <a href="javascript:;">销量</a>
                <i class="asc-btn"></i>
                <i class="desc-btn"></i>
            </div>
            <div class="sort-btn 
            <?php if ($this->_var['sort'] == 'add_time' && $this->_var['order'] == 'asc'): ?> sort-asc <?php endif; ?>
            <?php if ($this->_var['sort'] == 'add_time' && $this->_var['order'] == 'desc'): ?> sort-desc <?php endif; ?>
            ">
                <a href="javascript:;">上架时间</a>
                <i class="asc-btn"></i>
                <i class="desc-btn"></i>
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
                    <?php if ($this->_var['goods']['has_new_tag']): ?>
                    <dd class="six"><a href="<?php echo $this->_var['goods']['url']; ?>">NEW</a></dd>
                    <?php endif; ?>
                    <?php if ($this->_var['goods']['is_vip']): ?>
                    <dd class="seven"><a href="<?php echo $this->_var['goods']['url']; ?>">会员特供</a></dd>
                    <?php endif; ?>
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


<script type="text/javascript">
    $(document).ready(function(){

        $(".main_visual").hover(function(){
            $("#btn_prev,#btn_next").fadeIn()
        },function(){
            $("#btn_prev,#btn_next").fadeOut()
        });

        $dragBln = false;

        $(".main_image").touchSlider({
            flexible : true,
            speed : 200,
            btn_prev : $("#btn_prev"),
            btn_next : $("#btn_next"),
            paging : $(".flicking_con a"),
            counter : function (e){
                $(".flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
            }
        });

        $(".main_image").bind("mousedown", function() {
            $dragBln = false;
        });

        $(".main_image").bind("dragstart", function() {
            $dragBln = true;
        });

        $(".main_image a").click(function(){
            if($dragBln) {
                return false;
            }
        });

        timer = setInterval(function(){
            $("#btn_next").click();
        }, 5000);

        $(".main_visual").hover(function(){
            clearInterval(timer);
        },function(){
            timer = setInterval(function(){
                $("#btn_next").click();
            },5000);
        });

        $(".main_image").bind("touchstart",function(){
            clearInterval(timer);
        }).bind("touchend", function(){
            timer = setInterval(function(){
                $("#btn_next").click();
            }, 5000);
        });

    });
</script>

<?php echo $this->fetch('library/page_footer.lbi'); ?>