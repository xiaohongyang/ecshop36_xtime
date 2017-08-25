<!DOCTYPE html>
<html lang="en">

<head>
<meta name="Generator" content="ECSHOP v3.6.0" />
    <meta charset="utf-8" />
    <meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
    <meta name="Description" content="<?php echo $this->_var['description']; ?>" />
    
    <title><?php echo $this->_var['page_title']; ?></title>
    
    
    

    <link rel="stylesheet" href="/themes/default/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/themes/default/css/dialog.min.css" />
    <link rel="stylesheet" href="themes/default/css/style.css" type="text/css" />
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script src="/js/jquery.dialog.min.js"></script>
    <script src="/js/jquery.lazyload.js"></script>
    <script type="text/javascript" src="themes/default/js/jquery.event.drag-1.5.min.js"></script>
    <script type="text/javascript" src="themes/default/js/jquery.touchSlider.js"></script>

</head>

<body>


    <div class="box back">
        <div class="header">
            <div class="head">
                <div class="tou">
                    <span class="order-left lv">
                    <a href="index.php">&lt;&lt; X-TIME 官网</a>
                    </span>
                    <p class="clear"></p>
                </div>




            </div>
            
        </div>
        
    <form action="" class="ajax-form" method="POST">
        <div class="register">
            <h1><img src="/pc/themes/default/img/37.png"></h1>

                <div>
                    <span>手机号码:</span>
                    <input type="text" name="username" required>
                    <div class="clear"></div>
                </div>
                <div>
                    <span>手机校验码:</span>
                    <input type="text" name="mobile_code" required class="fang">
                    <div class="clear"></div>
                    <div class="jiao sendCode">
                        <span>获取验证码</span>
                    </div>
                </div>
                <div>
                    <span>设置密码:</span>
                    <input type="password" name="password" required placeholder="设置密码">
                    <div class="clear"></div>
                </div>
                <div>
                    <span>确认密码:</span>
                    <input type="password" name="confirm_password" required placeholder="确认密码" class="fang">
                    <div class="clear"></div>
                </div>
        </div>
        <div class="registerr">
            <h3>设置验证问题</h3>
            <p class="green">*提示:请选择别人不太了解的问题以保证个人信息安全</p>
                       <?php $_from = $this->_var['extend_info_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'field');if (count($_from)):
    foreach ($_from AS $this->_var['field']):
?>
    <?php if ($this->_var['field']['id'] == 6): ?>
                <div>
                    <span><?php echo $this->_var['lang']['passwd_question']; ?></span>
                    <select class="fang"  name='sel_question'>
                        <option value='0'><?php echo $this->_var['lang']['sel_question']; ?></option>
                        <?php echo $this->html_options(array('options'=>$this->_var['passwd_questions'])); ?>
                    </select>
                    <span><?php echo $this->_var['lang']['passwd_answer']; ?></span>
                    <input type="text" name="passwd_answer">
                    <div class="clear"></div>
                    <p><?php if ($this->_var['field']['is_need']): ?><span style="color:#FF0000"> *</span><?php endif; ?></p>
                </div>
  
	<?php else: ?>
                <div>
                    <span><?php echo $this->_var['field']['reg_field_name']; ?></span>
                    <input type="text"  name="extend_field<?php echo $this->_var['field']['id']; ?>">
                    <div class="clear"></div>
                </div>
	<?php endif; ?>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <div>
                    <span>性别:</span>
                    <a style="float:left;padding-top:10px">男</a><input type="radio" name="sex" value="1" style="width:34px; vertical-align: middle">
                    <a style="float:left;padding-top:10px">女</a><input type="radio" name="sex"  value="2" style="width:34px; vertical-align: middle">
                    <div class="clear"></div>
                </div>
                <div class="dis">
                    <input type="checkbox" class="check" name="agreement" value="1"><a>已经阅读并且同意《星辉俱乐部注册协议》</a>
                    <input type="submit" value="立即注册" class="onloadin">
                    <p class="lvgr">已有账号？请<span>
                    <a href="user.php">登录</a>    
                    </span></p>
                </div>

        </div>
            </form>
    </div>
            
    <script>
$(document).ready(function () {
    $('[name=username]').blur(function () {
        var phone = $(this).val();
        if (!phone || phone.length < 11) {
            Dialog.tip('请输入有效的手机号码！');
            return;
        }
        $.getJSON('/user.php?act=is_registered&username=' + phone, function (data) {
            if (data.code == 0) {
                return;
            }
            Dialog.tip(data.msg);
        });
    });
    $(".sendCode").click(function() {
        var $this = $(this);
        if ($this.hasClass('disable')) {
            return;
        }
        var phone = $(".phone").val();
        if (!phone || phone.length < 11) {
            Dialog.tip('请输入有效的手机号码！');
            return;
        }
        $.post('tool.php?act=sms', {
            phone: phone,
            send_code: '<?php echo $this->_var['send_code']; ?>'
        }, function(data) {
            if (data.code == 0) {
                Dialog.tip(data.data);
                $this.addClass('disable');
                time = 60;
                refreshTime();
                return;
            }
            Dialog.tip(data.msg);
        }, 'json');
    });

    var time = 60;
    var refreshTime = function() {
        time --;
        if (time < 1) {
            $(".sendCode").val('重新发送验证码').removeClass('disable');
            return;
        }
        $(".sendCode").val(time);
        setTimeout(refreshTime, 1000);
    };
    $(".ajax-form").submit(function() {
        $.post('user.php?act=register', $(this).serialize(), function(data) {
            if (data.code != 0) {
                Dialog.tip(data.msg);
                return;
            }
            Dialog.tip('注册成功！');
            setTimeout(function() {
                window.location.href = data.data.url ? data.data.url : 'user.php';
            }, 1000);
        }, 'json');
        return false;
    });
});
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>