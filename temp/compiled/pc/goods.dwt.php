<?php echo $this->fetch('library/page_header.lbi'); ?>
        </div>
<div class="box">
    <div id="goods-box" class="product" data-goods="<?php echo $this->_var['goods']['goods_id']; ?>">
        <div class="pro-nav">
            <p>
                <a href="index.php">HOME</a>
                <span>&gt;</span>
                <a href="category.php?id=<?php echo $this->_var['cat']['cat_id']; ?>"><?php echo $this->_var['cat']['cat_name']; ?></a>
                <span>&gt;</span>
                <a href="javascript:;" class="current">商品详情</a>
                <div class="clear"></div>
            </p>
            <div>
                <p>
                    <?php if ($this->_var['goods']['has_new_tag']): ?>
                    <a href="javascript:;" class="zi">NEW</a>
                    <?php endif; ?>
                    <?php if ($this->_var['goods']['is_vip']): ?>
                    <?php $_from = $this->_var['goods']['vip_tags']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'tag');if (count($_from)):
    foreach ($_from AS $this->_var['tag']):
?>
                    <a href="javascript:;" class="hong"><?php echo $this->_var['tag']; ?>专享</a>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                    <?php endif; ?>
                </p>
                <div class="xing collecting addCollect" data-goods="<?php echo $this->_var['goods']['goods_id']; ?>">
                    <img src="themes/default/img/product6.png" />
                    <span>0</span>
                </div>
            </div>
            <p class="clear" style="height:0"></p>
        </div>
        <?php echo $this->fetch('library/goods_gallery.lbi'); ?>

        <div class="pro-detais">
            <p class="big"><?php echo $this->_var['goods']['goods_style_name']; ?></p>
            <p class="bianhao">产品编号:<?php echo $this->_var['goods']['goods_sn']; ?></p>
            <div><?php echo $this->_var['goods']['goods_brief']; ?></div>
            <?php if ($this->_var['goods']['promote_end_date']): ?>
            <p class="huangbg">抢购截止时间:<?php echo $this->_var['goods']['promote_end_date']; ?></p>
            <?php endif; ?>

            <div class="huibg">
                <p class="hui">原价:<span><?php echo price_format($this->_var['goods']['market_price'], false); ?></span></p>
                <p class="hei">会员折扣价:<span>
                    <?php if ($this->_var['s_price'] [ 0 ]): ?>
                    <?php echo $this->_var['s_price']['0']; ?>.<?php echo $this->_var['s_price']['1']; ?>
                    <?php else: ?>
                    <?php echo price_format($this->_var['goods']['shop_price'], false); ?>
                    <?php endif; ?>    
                </span></p>
            </div>
            
            <?php $_from = $this->_var['specification']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('spec_key', 'spec');if (count($_from)):
    foreach ($_from AS $this->_var['spec_key'] => $this->_var['spec']):
?>
            <div class="guige">
                <p><?php echo $this->_var['spec']['name']; ?></p>
                <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
                <label for="spec_value_<?php echo $this->_var['value']['id']; ?>">
                    <input type="radio" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" <?php if ($this->_var['key'] == 0): ?>checked<?php endif; ?>/>
                    <?php echo $this->_var['value']['label']; ?> </label>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <div class="clear"></div>
            </div>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            <div class="yunfei">
                <div class="shang">
                    <p><?php if ($this->_var['goods']['is_shipping']): ?>运费：包邮<?php endif; ?></p>
                    <div>
                        <span style="float:left">数量</span>
                        <div class="num number-box">
                            <span class="number-minus">-</span>
                            <input type="text" value="1" min="1" class="number-input" max="<?php echo $this->_var['goods']['goods_number']; ?>" placeholder="1" />
                            <span class="number-plus">+</span>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <p>库存:<?php echo $this->_var['goods']['goods_number']; ?></p>
                    <span class="clear" style="display: block"></span>
                </div>
                <div class="xia">
                    <span class="hong" id="buy"><img src="themes/default/img/product7.png" />立即购买</span>
                    <span class="lv addCart"><img src="themes/default/img/16.png" />加入购物车</span>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <div class="clear"></div>

    </div>
    <div class="details-con">
        <div class="details-left">
            <h1><img src="themes/default/img/product8.png" /></h1>
            <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'godos');if (count($_from)):
    foreach ($_from AS $this->_var['godos']):
?>
            <dl>
                <dt><img class="lazy" data-original="/<?php echo $this->_var['goods']['goods_thumb']; ?>" /></dt>
                <dd>
                    <p style="margin-top:20px"><?php echo $this->_var['goods']['goods_name']; ?></p>
                    <p class="hui"><?php echo price_format($this->_var['goods']['shop_price'], false); ?></p>
                </dd>
                
                <div class="clear"></div>
            </dl>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
        <div class="details-right">
            <?php echo $this->_var['goods']['goods_desc']; ?>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script src="/pc/themes/default/js/flow.js"></script>
<script>
    $(document).ready(function () {
        var getCollect = function() {
            $.getJSON('goods.php?act=collect_count&id=<?php echo $this->_var['id']; ?>', function(data) {
                if (data.code != 0) {
                    return;
                }
                $(".collecting span").text(data.data.count);
            });
        };
        getCollect();
    });
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>