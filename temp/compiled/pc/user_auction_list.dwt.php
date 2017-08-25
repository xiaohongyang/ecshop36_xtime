<?php echo $this->fetch('library/page_header.lbi'); ?>
    <?php echo $this->fetch('library/user_header.lbi'); ?>
</div>
<div class="box">
    <div class="corder-main">
        <?php echo $this->fetch('library/user_menu.lbi'); ?>
        <div class="corder-main-main">

            <div class="corder-main-mainheader corder-overflow">
                <div class="corder-left">
                    <img src="/pc/themes/default/img/cimage59.png" alt="">
                </div>
                <div class="corder-right corder-search-group">
                    <input type="text" class="corder-search" value="Search">
                    <span class="corder-search-icon">
                            <img src="/pc/themes/default/img/cimage5.png" alt="">
                        </span>
                </div>
            </div>
            <div class="corder-main-mainmain">
                <div class="corder-main-mains corder-main-mains1">
                    <span>项目</span>
                    <span>竞拍价</span>
                    <span>我的出价</span>
                    <span class="corder-status-releative">竞拍状态 <img src="/pc/themes/default/img/cimage6.png" alt="">
                            <div class="corder-status">
                                <ul>
                                    <li><a href="javascript:;">竞拍中</a></li>
                                    <li><a href="javascript:;">结算中</a></li>
                                    <li><a href="javascript:;">确认收货</a></li>
                                    <li><a href="javascript:;">竞拍失败</a></li>
                                    <li><a href="javascript:;">竞拍成功</a></li>
                                    <li><a href="javascript:;">交易完成</a></li>
                                    <li><a href="javascript:;">交易关闭</a></li>
                                </ul>
                            </div>
                        </span>
                </div>
                <?php $_from = $this->_var['auction_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'auction');if (count($_from)):
    foreach ($_from AS $this->_var['auction']):
?>
                <div class="dd-details">
                    <p class="corder-overflow corder-pagg">
                        <span class="corder-left">
                                <em><?php echo local_date('Y-m-d', $this->_var['auction']['bid_time']); ?></em>
                                <span class="corder-pad">订单号：<?php echo $this->_var['auction']['log_id']; ?></span>
                        <img src="/pc/themes/default/img/cimage60.png" alt="" class="corder-pad">
                        </span>
                    </p>
                    <div class="corder-details">
                        <div class="corder-top">
                            <table class="corder-width">
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="dlkuan">
                                                <h1><img src="<?php echo $this->_var['auction']['godos_thumb']; ?>"></h1>
                                                <div class="ddkuan ddkuan1">
                                                    <p><?php echo $this->_var['auction']['goods_name']; ?></p>
                                                </div>
                                                
                                                <div class="clear"></div>
                                            </div>
                                            
                                        </td>
                                        <td class="corder-blockspan">
                                            <span>当前最高出价：<?php echo price_format($this->_var['auction']['max_price'], false); ?></span>
                                            <span>最低加价幅度：<?php echo price_format($this->_var['auction']['ext_info']['deposit'], false); ?></span>
                                        </td>
                                        <td><?php echo price_format($this->_var['auction']['bid_price'], false); ?></td>
                                        <td class="corder-blockspan">
                                            <span><img src="/pc/themes/default/img/cimage61.png" alt=""> <em>00:00:09</em></span>
                                            <span class="corder-red1">竞拍中</span>
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                            <div class="clear"></div>
                        </div>
                        
                        <div class="corder-bot">
                            <div class="left">
                                <p>快递信息: </p>
                                <p>配送地址：<?php echo $this->_var['auction']['region']; ?> <?php echo $this->_var['auction']['address']; ?></p>
                                <p>收件人：<?php echo $this->_var['auction']['consignee']; ?> 电话：<?php echo $this->_var['auction']['tel']; ?></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>


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
        $(".corder-status-releative").click(function(){
            $(".corder-status").toggle();
        });
    });
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>