<?php echo $this->fetch('library/page_header.lbi'); ?>
<?php echo $this->fetch('library/user_header.lbi'); ?>
        </div>
<div class="box box1">
    <div class="corder-main">
        <?php echo $this->fetch('library/user_menu.lbi'); ?>
            <div class="corder-main-main">
                <div class="corder-main-mainheader corder-overflow">
                    <div class="corder-left">
                        <img src="/pc/themes/default/img/cimage67.png" alt="">
                    </div>
                </div>
               <div class="cmy-points-main">
                   <div class="cmy-points">
                        <div class="corder-left">
                            <p>当前积分余额：<?php echo $this->_var['user_info']['pay_points']; ?></p>
                            <p class="cmy-point-way"><a href="javascript:;">积分获得方式 + </a></p>
                        </div>
                        <div class="corder-right">
                            <p><img src="/pc/themes/default/img/cimage89.png" alt=""></p>
                            <p>
                                <span>输入序列号</span>
                                <input type="text" class="cmy-point-input">
                            </p>
                            <p>
                                <span class="cmy-error">兑换码有误</span>
                                <button class="corder-right cmy-btn">兑换</button>
                            </p>
                        </div>
                    </div>
               </div>
            </div>


            <div class="corder-main-main">
                <div class="corder-main-mainheader corder-overflow">
                    <div class="corder-left">
                        <img src="/pc/themes/default/img/cimage68.png" alt="">
                    </div>
                  
                </div>
                <div class="corder-main-mainmain">
                    <div class="corder-main-mains corder-main-mains2">
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
                        <span>积分</span>
                        <span class="corder-status-releative">交易状态</span>
                    </div>
                    <table class="jiaoyi">
                        <?php $_from = $this->_var['log_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'log');if (count($_from)):
    foreach ($_from AS $this->_var['log']):
?>
                        <tr>
                            <td><?php echo local_date('Y-m-d H:i:s', $this->_var['log']['change_time']); ?></td>
                            <td><?php echo $this->_var['log']['change_desc']; ?></td>
                            <td><span>订单号:</span><?php echo $this->_var['log']['log_id']; ?></td>
                            <td class="active"><?php if ($this->_var['log']['pay_points'] > 0): ?> + <?php echo $this->_var['log']['pay_points']; ?> <?php else: ?> <?php echo $this->_var['log']['pay_points']; ?> <?php endif; ?></td>
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
