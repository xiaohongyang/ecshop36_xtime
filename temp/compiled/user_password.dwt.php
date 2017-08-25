<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <form action="user.php?act=act_edit_password" method="post">


        <div class="step1">
            <ul class="memberindexul huibg" style="margin-bottom:0px">
                <li><a href="#"><span>手机号:</span><?php echo \zd\Helper::hidTel($this->_var['info']['mobile_phone']); ?></a>
                    <span class="you"><input type="button" value="获取验证码" class="greenbor sendCode" style="border:2px solid #72C5C1;border-radius:5px;background-color:#fff;color:#72C5C1;height:35px;line-height:30px" /></span></li>
            </ul>
            <ul class="memberindexul" style="margin-bottom:0px">
                <li><span>验证码:</span><input type="text" name="code" required="required" style="width:85%;border:none;"></li>
            </ul>
        </div>

        <div class="step2" style="display: none">
            <ul class="memberindexul huibg" style="margin-bottom:0px">
                <li><a href="#">新的登录密码(8-16位数，同时包含数字和字母)</a></li>
            </ul>
            <ul class="memberindexul" style="margin-bottom:0px">
                <li><input type="password" name="new_password" required="required"  style="width:100%;border:none;"></li>
            </ul>
            <ul class="memberindexul huibg" style="margin-bottom:0px">
                <li><a href="#">再输入一次密码</a></li>
            </ul>
            <ul class="memberindexul" style="margin-bottom:0px">
                <li><input type="password" name="re_password" style="width:100%;border:none;"></li>
            </ul>
        </div>
        </form>

    </div>

</div>
<script>
$(document).ready(function () {
    $(".rightBtn").click(function () {
        if ($(this).text() == '下一步') {
            if ($("[name=code]").val()) {
                $('.step1').hide();
                $('.step2').show();
                $(this).text('保存');
            } else {
                Dialog.tip('请输入验证码！');
            }
            return;
        }
        var password = $('[name=new_password]').val();
        if (!password) {
            Dialog.tip('请输入新密码！');
            return;
        }
        if (password.length < 8) {
            Dialog.tip('请输入长度为8的密码！');
            return;
        }
        if (password != $('[name=re_password]').val()) {
            Dialog.tip('两次密码不一致！');
            return;
        }
        $('form').submit();
    });
    $(".sendCode").click(function() {
        var $this = $(this);
        if ($this.hasClass('disable')) {
            return;
        }
        var phone = '<?php echo $this->_var['info']['mobile_phone']; ?>';
        if (!phone || phone.length < 11) {
            Dialog.tip('请输入有效的手机号码！');
            return;
        }
        $.post('/zd.php?act=sms', {
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
    }
});
</script>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
