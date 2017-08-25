<?php echo $this->fetch('library/page_header.lbi'); ?>
        </div>
       <?php if ($this->_var['auto_redirect']): ?>
<meta http-equiv="refresh" content="3;URL=<?php echo $this->_var['message']['back_url']; ?>" />
        <?php endif; ?>
<div class="box">
<div class="corder-main">
            <div class="cpayment-success">
                <h2>消息提示</h2>
                <p><?php echo $this->_var['message']['content']; ?></p>
                <p class="corder-overflow">
                <?php if ($this->_var['message']['url_info']): ?>
                <?php $_from = $this->_var['message']['url_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('info', 'url');if (count($_from)):
    foreach ($_from AS $this->_var['info'] => $this->_var['url']):
?>
                <a href="<?php echo $this->_var['url']; ?>"><?php echo $this->_var['info']; ?></a>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <?php endif; ?>
                </p>
            </div>
        
        </div>
</div>

<?php echo $this->fetch('library/page_footer.lbi'); ?>