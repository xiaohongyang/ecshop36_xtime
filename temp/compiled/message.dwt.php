<html>
<head>
<meta name="Generator" content="ECSHOP v3.6.0" />
  <meta charset="utf-8">
  <?php if ($this->_var['auto_redirect']): ?>
  <meta http-equiv="refresh" content="3;URL=<?php echo $this->_var['message']['back_url']; ?>" />
  <?php endif; ?>
  <title><?php echo $this->_var['page_title']; ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" href="/themes/default/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="/themes/default/css/new.css"/>
</head>
<body>
  <div class="box">
    <div class="content" style="margin-bottom:180px;background-color:#eee;min-height:580px">
      <h4 class="confirmhead">
        <a href="/" class="backBtn backBtn1">
          <img src="/themes/default/img/10.png" width="10px" style="padding-top:10px;"/></a><?php echo $this->_var['lang']['system_info']; ?>
        </h4>
        <p style="text-align:center;color:red;font-size:14px;"><?php echo $this->_var['message']['content']; ?></p>
        <?php if ($this->_var['message']['url_info']): ?>
          <?php $_from = $this->_var['message']['url_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('info', 'url');if (count($_from)):
    foreach ($_from AS $this->_var['info'] => $this->_var['url']):
?>
          <p style="text-align:center;color:red;font-size:14px;"><a href="<?php echo $this->_var['url']; ?>"><?php echo $this->_var['info']; ?></a></p>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        <?php endif; ?>
    </div>
  </div>
</body>
</html>