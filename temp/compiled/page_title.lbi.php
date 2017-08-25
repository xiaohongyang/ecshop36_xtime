
<header class="page-title confirmhead">
<?php if (! $this->_var['noBack']): ?>
<a class="backBtn" href="<?php if ($this->_var['backUrl']): ?><?php echo $this->_var['backUrl']; ?><?php else: ?>javascript:history.go(-1);<?php endif; ?>">
<img src="themes/default/img/10.png"/>
</a>
<?php endif; ?>
<span><?php echo $this->_var['page_title']; ?></span>
<?php if ($this->_var['rightBtn']): ?>
<a class="right rightBtn" href="<?php if ($this->_var['rightBtn']['url']): ?><?php echo $this->_var['rightBtn']['url']; ?><?php else: ?>javascript:;<?php endif; ?>"><?php echo $this->_var['rightBtn']['label']; ?></a>
<?php endif; ?>
</header>