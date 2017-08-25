<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" style="margin-bottom:180px;background-color:#f8f8f8;border:1px solid #E5E5E5;">
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <form class="ajax-form" name="formLogin" action="user.php" method="post">
            <div class="onload">
                <div>
                    <img src="/themes/default/img/26.png" class="login-phone"/><input type="text" name="username" placeholder="手机号" required/>
                </div>
                <div>
                    <img src="/themes/default/img/27.png" />
                    <input type="password" name="password" placeholder="密码" required/><a href="user.php?act=get_password">忘记密码?</a>
                </div>
                <input type="hidden" value="1" name="remember" id="remember" />
                <input type="hidden" name="act" value="signin" />
                <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
                <input type="submit" name="submit" value="登录" class="dlonload" />
                <input type="button" value="微信登录" class="dlonlnd"/>
            </div>
        </form>
    </div>


</div>
<script>
    $(document).ready(function () {
        $(".ajax-form").submit(function() {
            $.post('user.php', $(this).serialize(), function(data) {
                if (data.code == 0) {
                    Dialog.tip('登录成功！');
                    window.location.href = data.data.url;
                    return;
                }
                Dialog.create({
                    type: 'content',
                    content: data.msg,
                    hasNo: false
                });
            }, 'json');
            return false;
        });
    });
</script>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>