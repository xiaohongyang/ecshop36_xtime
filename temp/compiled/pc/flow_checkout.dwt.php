<?php echo $this->fetch('library/page_header.lbi'); ?>
</div>
<div class="box">
    <div class="corder-main">
        <form action="flow.php?step=done" method="POST">
        <div class="corder-confirm">
            <div class="corder-confirm-first corder-confirm-active">
                <span>1.确认订单</span>
            </div>
            <div class="corder-confirm-first">
                <img src="/pc/themes/default/img/cimage40.png" alt="">
            </div>
            <div class="corder-confirm-first">
                <span>2.支付订单</span>
            </div>
            <div class="corder-confirm-first">
                <img src="/pc/themes/default/img/cimage40.png" alt="">
            </div>
                <div class="corder-confirm-first">
                <span>3.完成</span>
            </div>
        </div>
        <div class="corder-main-main">
            <div class="corder-main-mainheader corder-overflow">
                <div class="corder-left">
                    <img src="/pc/themes/default/img/cimage38.png" alt="">
                </div>
                <div class="corder-right corder-confirm-address">
                    <a href="user.php?act=address_list">管理收货地址</a>
                </div>
            </div>
            <div class="corder-confirm-addresslist">
                <div class="caddress-list corder-confirm-listover">
                    <div class="caddress-list-main">
                        <?php $_from = $this->_var['address_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'address');if (count($_from)):
    foreach ($_from AS $this->_var['address']):
?>
                            <div class="caddress-list-details corder-confirm-details ">
                            <div class="corder-left"></div>
                            <div class="corder-confirm-addlist corder-undefind">
                                <div class="corder-left corder-address-dede">
                                    <span class="caddress-circle"></span>
                                </div>
                                <div class="corder-left corder-padr">
                                    <p>
                                        <span>收件人：<?php echo $this->_var['address']['consignee']; ?></span>
                                        <span>电话：<?php echo $this->_var['address']['tel']; ?></span>
                                        <span>所在地区：<?php echo $this->_var['address']['region']; ?></span>
                                    </p>
                                    <p>
                                        <span>详细地址：<?php echo $this->_var['address']['region']; ?> <?php echo $this->_var['address']['address']; ?></span>
                                        <span>邮编：<?php echo $this->_var['address']['zipcode']; ?></span>
                                    </p>
                                </div>
                            </div>
                            <div class="corder-right corder-confirm-edit hide corder-confirm-padttop">
                                <?php if ($this->_var['address']['address_id'] == $this->_var['default_address']): ?>
                                <a href="javascript:;" class="caddress-morenadd corder-confirm-raduis">默认地址</a>
                                <?php endif; ?>
                                <span class="corder-pad1 corder-open1">
                                    <img src="/pc/themes/default/img/cimage24.png" alt="">
                                </span>
                                <span class="corder-pad1">
                                    <img src="/pc/themes/default/img/cimage25.png" alt="">
                                </span>
                            </div>
                        </div>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                        <div class="caddress-modal1">
                            <div class="caddress-modal-cystem">
                                <div class="corder-left caddress-modal-left">
                                    <div class="caddress-modal-first">
                                        <div class="caddress-modal-text">
                                            <p>姓名 NAME</p>
                                            <input type="text" class="caddress-input caddress-ccc" placeholder="请输入">
                                        </div>
                                        <div class="caddress-modal-text">
                                            <p>电话 PHONE</p>
                                            <input type="text" class="caddress-input caddress-ccc" placeholder="请输入">
                                        </div>
                                    </div>
                                    <div class="caddress-modal-first">
                                        <div class="caddress-modal-text1">
                                            <p>国家 COUNTRY</p>
                                            <select name="" id="" class="caddress-ccc">
                                                <option value="">请选择</option>
                                            </select>
                                        </div>
                                        <div class="caddress-modal-text1">
                                            <p>省/市 STATE</p>
                                            <select name="" id="" class="caddress-ccc">
                                                <option value="">请选择</option>
                                            </select>
                                        </div>
                                        <div class="caddress-modal-text1">
                                            <p>城市 CITY</p>
                                            <select name="" id="" class="caddress-ccc">
                                                <option value="">请选择</option>
                                            </select>
                                        </div>
                                        <div class="caddress-modal-text1">
                                            <p>县/区 STATE</p>
                                            <select name="" id="" class="caddress-ccc">
                                                <option value="">请选择</option>
                                            </select>
                                        </div>
                                        <div class="caddress-modal-text1">
                                            <p>邮编 ZIP CODE</p>
                                            <input type="text" class="caddress-ccc caddress-input" placeholder="请输入">
                                        </div>
                                    </div>
                                    <div class="caddress-modal-first">
                                        <div class="caddress-modal-text caddress-modal-text2">
                                            <p>详细地址 ADDRESS</p>
                                            <input type="text" class=" caddress-ccc" placeholder="请输入详细地址">
                                        </div>
                                    </div>
                                </div>
                                <div class="corder-right caddress-modal-right">
                                    <button class="caddress-btnactive">&nbsp;+&nbsp;保&nbsp;存</button>
                                    <button class="corder-close1">&nbsp;x&nbsp;取&nbsp;消</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="corder-main-main">
            <div class="corder-main-mainheader corder-overflow">
                <div class="corder-left">
                    <img src="/pc/themes/default/img/cimage39.png" alt="">
                </div>
            </div>
            <div class="corder-main-mainmain">
                <div class="corder-main-mains confirm-main-mains">
                    <span>项目</span>
                    <span>规格</span>
                    <span>单价</span>
                    <span>数量</span>
                    <span>小计</span>
                </div>
                <div class="dd-details">
                    <h4>普通商品</h4>
                    <div class="corder-details">
                        <div class="corder-top corder-confirm-top">
                            <table>
                                <tbody>
                                <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?> 
                                <tr>
                                    <td>
                                        <div class="dlkuan">
                                            <h1><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></h1>
                                            <div class="ddkuan">
                                                <p><?php echo $this->_var['goods']['goods_name']; ?></p>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </td>
                                    <td>
                                        <span class="corder-confirm-ccc">规格:</span><?php echo $this->_var['goods']['goods_attr']; ?>
                                    </td>
                                    <td class="confirm-tdblock">
                                        <span><?php echo $this->_var['goods']['formated_goods_price']; ?></span>
                                        <span class="hong">UR专享</span>
                                    </td>
                                    <td><?php echo $this->_var['goods']['goods_number']; ?></td>
                                    <td><?php echo $this->_var['goods']['formated_subtotal']; ?></td>
                                </tr>
                                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                            </tbody></table>
                            <div class="clear"></div>
                        </div>
                        <div class="corder-bot">
                            <div class="left">
                                <p>配送地址：<?php echo $this->_var['consignee']['region']; ?> <?php echo $this->_var['consignee']['address']; ?></p>
                                <p>收件人：<?php echo $this->_var['consignee']['consignee']; ?> 电话：<?php echo $this->_var['consignee']['tel']; ?></p>
                            </div>
                            <div class="right">
                                <p>总计|TOTAL   <span><?php echo $this->_var['total']['amount_formated']; ?></span></p>
                                <p>(含运费：<?php echo $this->_var['total']['amount_formated']; ?>)<span>+<?php echo $this->_var['total']['integral_formated']; ?></span></p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="confirm-right">
                            <button class="corder-ordercheck">提交订单</button>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        
        <input type="hidden" name="need_sms" value="0"/>
        <input type="hidden" name="shipping" value="1"/>
        <input type="hidden" name="payment" value="1"/>
        <input type="hidden" name="bonus" value="<?php echo $this->_var['order']['bonus_id']; ?>"/>
        <input type="hidden" name="bonus_sn" value=""/>
        <input type="hidden" name="address_id" value="<?php echo $this->_var['consignee']['address_id']; ?>"/>
        </form>
    </div>
</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>