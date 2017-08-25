<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <form action="user.php" method="post" name="formUser">
                <ul class="memberindexul" style="margin-top:10px">
                    <li>
                        <span>手机号:</span>
                        <input type="text" name="username" class="shuru phone" style="width:62%;">
                            <input type="button" name="getcode" id="getcode" value="获取验证码" class="greenbor sendCode" style="background: #fff;
    border: 1px solid #64c1be;
    color: #64c1be;
    padding: 0 3px;
    border-radius: 3px;
    float: right;" /></span>
                    </li>
                </ul>
                <ul class="memberindexul" style="margin-bottom:0px">
                    <li>
                        <span>验证码:</span>
                        <input type="text" name="mobile_code" class="shuru" >
                    </li>
                </ul>
                <ul class="memberindexul huibg" style="margin-bottom:0px">
                    <p><a href="javascript:;">设置登录密码(8~16位数,同时包含数字和字母)</a></p>
                </ul>
                <ul class="memberindexul" style="margin-bottom:0px">
                    <li><input type="password" name="password" id="password" class="shuru"></li>
                </ul>
                <ul class="memberindexul huibg" style="margin-bottom:0px">
                    <li><a href="#">再输入一次密码</a></li>
                </ul>
                <ul class="memberindexul">
                    <li><input type="password" name="confirm_password" class="shuru"></li>
                </ul>
                <input name="agreement" type="hidden" value="1"/>
                <input name="act" type="hidden" value="act_register" >
                <input type="hidden" name="back_act" value="<?php echo $this->_var['back_act']; ?>" />
                <input type="submit" value="提交" class="login" />
            </form>
    </div>


</div>
<script>
$(document).ready(function () {
    $('[name=username]').blur(function () {
        var phone = $(this).val();
        if (!phone || phone.length < 11) {
            Dialog.tip('请输入有效的手机号码！');
            return;
        }
        $.getJSON('user.php?act=is_registered&username=' + phone, function (data) {
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

<div class="mengban1" >
      <div class="modal-content1">
          <div class="mengban-delete">
              <h4>账号或密码输入错误，请重新输入</h4>
              <div class="mengban-bbtn">
                  <a href="javascript:;" class="mengban-close">确定</a>
              </div>
          </div>
      </div>
  </div>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
