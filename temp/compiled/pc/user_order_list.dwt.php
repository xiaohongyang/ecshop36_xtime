<?php echo $this->fetch('library/page_header.lbi'); ?>
    <?php echo $this->fetch('library/user_header.lbi'); ?>
        </div>
<div class="box">
    <div class="corder-main">
    <?php echo $this->fetch('library/user_menu.lbi'); ?>
        <div class="corder-main-main">
            <div class="corder-main-mainheader corder-overflow">
                <div class="corder-left">
                    <img src="themes/default/img/cimage4.png" alt="">
                </div>
                <div class="corder-right corder-search-group">
                    <input type="text" class="corder-search" value="Search">
                    <span class="corder-search-icon">
                            <img src="themes/default/img/cimage5.png" alt="">
                        </span>
                </div>
            </div>
            <div class="corder-main-mainmain">
                <div class="corder-main-mains">
                    <span>项目</span>
                    <span>单价</span>
                    <span>数量</span>
                    <span>金额</span>
                    <span class="corder-status-releative">交易状态 <img src="themes/default/img/cimage6.png" alt="">
                            <div class="corder-status">
                                <ul>
                                    <li><a href="user.php?act=order_list&status=1">待付款</a></li>
                                    <li><a href="user.php?act=order_list&status=2">待发货</a></li>
                                    <li><a href="user.php?act=order_list&status=3">待收货</a></li>
                                    <li><a href="user.php?act=order_list&status=4">交易完成</a></li>
                                    <li><a href="user.php?act=order_list&status=5">交易取消</a></li>
                                    <li><a href="user.php?act=order_list&status=6">退款中的订单</a></li>
                                </ul>
                            </div>
                        </span>
                </div>
                
                <?php $_from = $this->_var['order_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'order');if (count($_from)):
    foreach ($_from AS $this->_var['order']):
?>
                <div class="dd-details">
                    <p class="corder-overflow corder-pagg">
                            <span class="corder-left">
                                <em><?php echo local_date('Y-m-d', $this->_var['order']['add_time']); ?></em>
                                <span class="corder-pad">订单号：<?php echo $this->_var['order']['order_sn']; ?></span>
                            </span>
                        <span class="corder-right">
                                <img src="themes/default/img/cimage7.png" alt="">
                            </span>
                    </p>
                    <div class="corder-details">
                        <div class="corder-top">
                            <table>
                                <?php $_from = $this->_var['order']['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
                                <tr>
                                    <td>
                                        <div class="dlkuan">
                                            <h1><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></h1>
                                            <div class="ddkuan">
                                                <p><?php echo $this->_var['goods']['goods_name']; ?></p>
                                                <p><span class="hse">规格:</span><?php echo $this->_var['goods']['goods_attr']; ?></p>
                                                <p>
                                                    <span class="hong">UR专享</span>
                                                    <span class="huang">SSR专享</span>
                                                    <span class="hui">SR专享</span>
                                                    <span class="lv">R专享</span>
                                                    <span class="lan">N专享</span>
                                                    <div class="clear"></div>
                                                </p>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </td>
                                    <td><?php echo $this->_var['goods']['goods_price']; ?></td>
                                    <td><?php echo $this->_var['goods']['goods_number']; ?></td>
                                    <td><?php echo $this->_var['goods']['subtotal']; ?></td>
                                    <?php if ($this->_var['order']['status'] == 0): ?>
                                    <td>退款/退货</td>
                                    <?php endif; ?>
                                </tr>
                                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                            </table>
                            <div class="you">
                                <?php if ($this->_var['order']['status'] == 1): ?>
                                 <p class="cu huang">待发货</p>
                                    <p class="again" href="user.php?act=cancel_order&id=<?php echo $this->_var['order']['order_id']; ?>" onclick="if(!confirm('确认取消订单?')) {return false;}">取消订单</p>
                                <?php endif; ?>
                                <?php if ($this->_var['order']['status'] == 0): ?>
                                <p class="cu hong">待发货</p>
                                <p class="buy"><a href="flow.php?step=pay&id=<?php echo $this->_var['order']['order_id']; ?>">前去支付</a></p>
                                <p class="again" href="user.php?act=cancel_order&id=<?php echo $this->_var['order']['order_id']; ?>" onclick="if(!confirm('确认取消订单?')) {return false;}">取消订单</p>
                                <?php endif; ?>
                                <?php if ($this->_var['order']['status'] == 3): ?>
                                <p class="cu">交易完成</p>
                                <p class="again">再次购买</p>
                                <?php endif; ?>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="corder-bot">
                            <div class="left">
                                <p>快递信息:<?php echo $this->_var['order']['shipping_name']; ?>    <?php echo $this->_var['order']['invoice_no']; ?></p>
                                <p>配送地址：<?php echo $this->_var['order']['address']; ?></p>
                                <p>收件人：<?php echo $this->_var['order']['consignee']; ?> 电话：<?php echo $this->_var['order']['tel']; ?></p>
                            </div>
                            <div class="right">
                                <p>总计|TOTAL   <span><?php echo $this->_var['order']['total']; ?></span></p>
                                <p>(含运费：<?php echo $this->_var['order']['shipping_fee']; ?>)<span><?php echo $this->_var['order']['integral']; ?>积分</p>
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