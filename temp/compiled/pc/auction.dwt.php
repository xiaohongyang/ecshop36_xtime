<?php echo $this->fetch('library/page_header.lbi'); ?>

<?php echo $this->fetch('library/nav.lbi'); ?>
        </div>
        
<div class="main_visual">
        
        <div class="flicking_con">
            <a href="#" class="">1</a>
            <a href="#" class="">2</a>
            <a href="#" class="on">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
        </div>
        <div class="main_image">
            <ul style="width: 1349px; overflow: visible;">
                <li style="float: none; display: block; position: absolute; top: 0px; left: -2698px; width: 1349px;"><img src="/pc/themes/default/img/8.png" width="100%"></li>
                <li style="float: none; display: block; position: absolute; top: 0px; left: -1349px; width: 1349px;"><img src="/pc/themes/default/img/img_main_2.jpg" width="100%"></li>
                <li style="float: none; display: block; position: absolute; top: 0px; left: 0px; width: 1349px;"><img src="/pc/themes/default/img/img_main_3.jpg" width="100%"></li>
                <li style="float: none; display: block; position: absolute; top: 0px; left: 1349px; width: 1349px;"><img src="/pc/themes/default/img/img_main_4.jpg" width="100%"></li>
                <li style="float: none; display: block; position: absolute; top: 0px; left: 2698px; width: 1349px;"><img src="/pc/themes/default/img/img_main_5.jpg" width="100%"></li>
            </ul>
            <a href="javascript:;" id="btn_prev" style="width: 1349px; overflow: visible; display: none;"></a>
            <a href="javascript:;" id="btn_next" style="width: 1349px; overflow: visible; display: none;"></a>
        </div>
    </div>
<div class="box box1">
        <div class="content">
            <div class="contents">
                <h1 class="title"><img src="/pc/themes/default/img/9.png"></h1>
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
                    <?php $_from = $this->_var['auction_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
                    <div>
                        <dl>
                            <dt><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></dt>
                            <dd class="one"><a href="<?php echo $this->_var['goods']['url']; ?>">周边商品</a></dd>
                            <dd class="two"><a href="<?php echo $this->_var['goods']['url']; ?>"><?php echo $this->_var['goods']['goods_name']; ?></a></dd>
                            <dd class="three">当前参与人数：<em class="produce-purple"><?php echo $this->_var['goods']['user_count']; ?></em></dd>
                            <dd class="four corder-paddt"><span class="produce-purple">*</span>截止时间：<span class="produce-purple"><?php echo $this->_var['goods']['formated_end_time']; ?></span></dd>
                            <dd class="five corder-paddt">当前叫价：<span class="produce-purple prdouce-weight"><em class="produce-big"><?php echo $this->_var['goods']['current_price']; ?></em></span>星辉币</dd>
                            <dd class="new"><a href="<?php echo $this->_var['goods']['url']; ?>">NEW</a></dd>
                            <dd class="ssr"><a href="<?php echo $this->_var['goods']['url']; ?>">SSR</a></dd>
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