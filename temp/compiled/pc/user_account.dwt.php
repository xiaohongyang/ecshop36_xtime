<?php echo $this->fetch('library/page_header.lbi'); ?>
    <?php echo $this->fetch('library/user_header.lbi'); ?>
        </div>
<div class="box box1">
    <div class="corder-main">
        <?php echo $this->fetch('library/user_menu.lbi'); ?>
        <div class="corder-main-main">
            <div class="corder-main-mainheader corder-overflow">
                <div class="corder-left">
                    <img src="themes/default/img/cimage12.png" alt="">
                </div>
              
            </div>
            <div class="corder-main-mainmain">
                <div class="dd-details">
                    <p class="corder-overflow corder-pagg">
                        <span class="corder-left">当前星辉币余额:<?php echo $this->_var['user_info']['user_money']; ?></span>
                        <span class="corder-right">
                                <a href="javascript:;">星辉币介绍 + </a>
                            </span>
                    </p>
                    <div class="corder-div">
                        <div class="one">
                            <span>充值方式:</span>
                            <a href="javascript:;"><img src="themes/default/img/cimage13.png" /></a>
                            <a href="javascript:;" class="current"><img src="themes/default/img/cimage14.png" /></a>
                            <div class="clear"></div>
                        </div>
                        <div class="two">
                            <span>充值星辉:</span>
                            <a href="javascript:;">24</a>
                            <a href="javascript:;" class="current">124</a>
                            <a href="javascript:;">524</a>
                            <a href="javascript:;">1024</a>
                            <a href="javascript:;">3024</a>
                            <div class="clear"></div>
                        </div>
                        <div class="three">
                            <span>应付金额:</span>
                            <a href="javascript:;" class="green">￥4990</a>
                            <a href="javascript:;" class="greenbor">立刻充值</a>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="corder-main-main">
            <div class="corder-main-mainheader corder-overflow">
                <div class="corder-left">
                    <img src="themes/default/img/cimage15.png" alt="">
                </div>
                <!--<div class="corder-right corder-search-group">
                    <input type="text" class="corder-search" value="Search">
                    <span class="corder-search-icon">
                        <img src="themes/default/img/cimage5.png" alt="">
                    </span>
                </div>-->
            </div>
            <div class="corder-main-mainmain">
               <div class="corder-main-mains corder-main-mains3">
                        <span>时间</span>
                        <span>操作类型</span>
                        <span class="corder-rel">项目 
                            <img src="/pc/themes/default/img/cimage29.png" alt="" class="corder-pad">
                            <div class="corder-manager">
                                <ul>
                                    <li><a href="javascript:;">订单号|Order No.</a></li>
                                    <li><a href="javascript:;">竞拍号|AH No.</a></li>
                                </ul>
                            </div>
                        </span>
                        <span>星辉币</span>
                        <span class="corder-status-releative">交易状态</span>
                    </div>
                <table class="jiaoyi jiaoyi1">
                    
                    <?php $_from = $this->_var['log_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'log');if (count($_from)):
    foreach ($_from AS $this->_var['log']):
?>
                    <tr>
                        <td><?php echo local_date('Y-m-d H:i:s', $this->_var['log']['change_time']); ?></td>
                        <td><?php echo $this->_var['log']['change_desc']; ?></td>
                        <td><span>订单号:</span><?php echo $this->_var['log']['log_id']; ?></td>
                        <td class="active"><?php if ($this->_var['log']['user_money'] > 0): ?> + <?php echo $this->_var['log']['user_money']; ?> <?php else: ?> <?php echo $this->_var['log']['user_money']; ?> <?php endif; ?></td>
                        <td>交易完成</td>
                    </tr>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                    <tr>
                        <td colspan="5"></td>
                    </tr>
                </table>



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

</div>
<script>    
      $(document).ready(function () {
        $(".corder-rel").mouseenter(function(){
            $(".corder-manager").show();
        }).mouseleave(function(){
            $(".corder-manager").hide();
        });
    });

</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>