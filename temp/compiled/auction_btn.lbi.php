<?php if ($this->_var['status'] == 1 && ! $this->_var['price']): ?>
<div class="col-xs-7 x-paddr x-paddr1">
   <span>您还没参与本次竞拍</span>
</div>
<div class="col-xs-5 x-addbuy">
    <a href="auction.php?act=bid&id=<?php echo $this->_var['auction']['act_id']; ?>" class="">参与竞拍</a>
</div>
<?php endif; ?>
<?php if ($this->_var['status'] == 1 && $this->_var['price'] > 0): ?>
<div class="col-xs-7 x-paddr">
   <span>你的当前叫价：</span>
   <span><?php echo price_format($this->_var['price'], false); ?></span>
</div>
<div class="col-xs-5 x-addbuy">
    <a href="auction.php?act=bid&id=<?php echo $this->_var['auction']['act_id']; ?>" class="">参与竞拍</a>
</div>
<?php endif; ?>
<?php if ($this->_var['status'] == 2): ?>
<div class="x-footer row x-row">
    <div class="col-xs-7 x-paddr">
       <span>你的当前叫价：</span>
       <span><?php echo price_format($this->_var['price'], false); ?></span>
    </div>
    <div class="col-xs-5 x-nobuy">
        <a href="javascript:;" class="">暂不可叫价</a>
    </div>
</div>
<?php endif; ?>
<?php if ($this->_var['status'] == 5): ?>
<div class="col-xs-12 x-nobuy">
    <a href="#" class="">竞拍已结束</a>
</div>
<?php endif; ?>