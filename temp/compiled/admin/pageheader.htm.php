<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $this->_var['lang']['cp_home']; ?><?php if ($this->_var['ur_here']): ?> - <?php echo $this->_var['ur_here']; ?> <?php endif; ?></title>
<meta name="robots" content="noindex, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="styles/general.css" rel="stylesheet" type="text/css" />
<link href="styles/main.css" rel="stylesheet" type="text/css" />
<?php echo $this->smarty_insert_scripts(array('files'=>'../js/transport.js,common.js')); ?>

<style>
  .panel-icloud .panel-right iframe {
    height: 300px;
    margin-top: 15px;
  }
  .panel-hint{
    top: 3%;
  }
</style>

<script language="JavaScript">
<!--
// 这里把JS用到的所有语言都赋值到这里
<?php $_from = $this->_var['lang']['js_languages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
//-->
/*关闭按钮*/
  function get_certificate(){
	  var panel = document.getElementById('panelCloud');
	  var mask  = document.getElementById('CMask')||null;
	  var frame = document.getElementById('CFrame');
	  if(panel&&CMask&&frame){
	      panel.style.display = 'block';
	      mask.style.display = 'block';
	      frame.src = '<?php echo $this->_var['iframe_url']; ?>';
	    }
	}

	/*关闭按钮*/
	function btnCancel(item){
	  var par  = item.offsetParent;
	  var mask  = document.getElementById('CMask')||null;
	  var frame = document.getElementById('CFrame');
	  par.style.display = 'none';
	  if(mask){mask.style.display = 'none';}
	  frame.src = '';
	}
</script>
</head>
<body>

<h1>
  <?php if ($this->_var['is_bind_crm'] && $this->_var['pageHtml'] == 'users_list.htm'): ?>
  <span class="action-span5"><a href="https://account.shopex.cn/product" target="_blank">进入会员通</a></span>
  <?php elseif ($this->_var['pageHtml'] == 'users_list.htm'): ?>
  <span class="action-span6"><a href="http://yunqi.shopex.cn/products/crm" target="_blank">开通会员高级管理</a></span>
  <?php endif; ?>
<?php if ($this->_var['action_link'] && $this->_var['pageHtml'] == 'goods_list.htm'): ?>
  <span class="action-span btn-add-goods"><a href="<?php echo $this->_var['action_link']['href']; ?>"></a></span>
  <span class="btn-quick-goods"><a href="http://yunqi.shopex.cn/products/huodiantong" target="_blank"></a></span>
<?php elseif ($this->_var['action_link']): ?>
	<span class="action-span"><a href="<?php echo $this->_var['action_link']['href']; ?>"><?php echo $this->_var['action_link']['text']; ?></a></span>
<?php endif; ?>

<?php if ($this->_var['action_link2']): ?>
<span class="action-span"><a href="<?php echo $this->_var['action_link2']['href']; ?>"><?php echo $this->_var['action_link2']['text']; ?></a>&nbsp;&nbsp;</span>
<?php endif; ?>
<span class="action-span1"><a href="index.php?act=main"><?php echo $this->_var['lang']['cp_home']; ?></a> </span><span id="search_id" class="action-span1"><?php if ($this->_var['ur_here']): ?> &nbsp;&nbsp;&nbsp;&nbsp; <?php echo $this->_var['ur_here']; ?> <?php endif; ?></span>
<div style="clear:both"></div>
</h1>