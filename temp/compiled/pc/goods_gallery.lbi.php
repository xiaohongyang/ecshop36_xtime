
<div align="center" class="previewcen">
    <div id="preview">
        <div class="jqzoom" id="spec-n1"><img height="555"
            src="/<?php echo $this->_var['goods']['goods_img']; ?>"
            jqimg="<?php echo $this->_var['goods']['goods_img']; ?>"
            width="555">
        </div>
        <div id=spec-n5>
            <div class=control id=spec-left>
                <img src="themes/default/img/product-left.png" />
            </div>
            <div id=spec-list>
                <ul class=list-h>
                   <?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');if (count($_from)):
    foreach ($_from AS $this->_var['picture']):
?>
                   <li><a href="/<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>"><img src="/<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>" width="100%" alt=""></a></li>
                   <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <div class=control id=spec-right>
                <img src="themes/default/img/product-right.png" />
            </div>

        </div>
    </div>
</div>
