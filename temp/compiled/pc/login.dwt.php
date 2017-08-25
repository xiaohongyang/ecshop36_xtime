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
                <a href="index.php">&lt;&lt; X-TIME 官网</a></span>
                <p class="clear"></p>
            </div>




        </div>
        
    </div>
    
    <div class="onload">
        <h1><img src="/pc/themes/default/img/1.png"></h1>
        <form method="POST" class="ajax-form">
            <div>
                <img src="/pc/themes/default/img/32.png" class="zuo">
                <input type="text" name="username" required placeholder="用户名">
            </div>
            <div>
                <img src="/pc/themes/default/img/33.png" class="zuo">
                <input type="password" name="password" required placeholder="密码">
                <a href="user.php?act=password">忘记密码</a>
            </div>
            <div>
                <img src="/pc/themes/default/img/34.png" class="zuo">
                <input type="text" placeholder="校验码" name="code" required>
                <!-- <img src="/pc/themes/default/img/36.png" class="succeed"> -->
                <img src="tool.php?act=captcha&121312" class="yanzheng" id="captcha">
                <a href="javascript:;" class="refreshCaptcha">换一组</a>
            </div>
            <div>
                <input type="submit" value="登录" class="onloadin">
                <a href="user.php?act=register">注册</a>
            </div>
        </form>
    </div>
</div>

<?php echo $this->fetch('library/form.lbi'); ?>
<script>
    $(document).ready(function () {
        $(".ajax-form").validate({
            errorPlacement : function(error, element) {
                element.after(error);
            },
            submitHandler: function(form) {
                var loading = Dialog.loading();
                $(form).ajaxSubmit({
                    success: function(data) {
                        if (typeof data != 'object') {
                            data = JSON.parse(data);
                        }
                        loading.close();
                        if (data.code == 0) {
                            data.msg = '登录成功！';
                        } else {
                            refreshCaptcha();
                        }
                        if (!data.msg) {
                            data.msg = '登录失败，请验证您的账号和密码是否正确！';
                        }
                        Dialog.tip(data.msg);
                        if (data.data) {
                            setTimeout(function() {
                                if (data.data.url) {
                                    window.location.href = data.data.url;
                                    return;
                                }
                                window.location.href = '/';
                            }, 1000);
                        }
                    }
                });
                return false;
            }
        });
        $('.refreshCaptcha').click(function (e) { 
            e.preventDefault();
             refreshCaptcha();
        });
        var refreshCaptcha = function() {
            $("#captcha").attr('src', 'tool.php?act=captcha&' + Math.random());
        };
    });
</script>

<?php echo $this->fetch('library/page_footer.lbi'); ?>