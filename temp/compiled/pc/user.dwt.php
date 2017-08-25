<?php echo $this->fetch('library/page_header.lbi'); ?>
    <?php echo $this->fetch('library/user_header.lbi'); ?>
        </div>
<div class="box">
    <div class="corder-main">
    
    <?php echo $this->fetch('library/user_menu.lbi'); ?>


       <div class="information">
                <p class="bor">基本信息</p>
                <div class="zuodiv">
                    <p>
                        <span>用户名:</span><?php echo $this->_var['user_info']['user_name']; ?>
                    </p>
                    <p>
                        <span>昵称:</span><?php echo $this->_var['user_info']['nick_name']; ?>
                    </p>
                    <p>
                        <span>性别:</span>
                        <?php if ($this->_var['user_info']['sex'] == 1): ?>
                        男
                        <?php else: ?>
                        女
                        <?php endif; ?>
                    </p>
                    <p>
                        <span>生日:</span><?php echo $this->_var['user_info']['birthday']; ?>
                    </p>
                    <p>
                        <input type="button" value="修改信息" class="cinfo-edit1">
                    </p>
                     <div class="cinfo-modal1" style="display: none;">
                         <form class="ajax-form" action="user.php?act=update_info" method="post">
                        <span><img src="/pc/themes/default/img/cimage36.png" alt="" class="corder-right cinfo-close1"></span>
                        <div class="caddress-modal-first">
                            <div class="caddress-modal-text">
                                <p>用户名</p>
                                <span class="cquestion-input cquestion-raduis caddress-ccc">
                                    <input type="text" class="cinfo-input caddress-ccc" placeholder="158***20" disabled="">
                                    <img src="/pc/themes/default/img/cimage37.png" alt="">
                                </span>
                                
                            </div>
                                <div class="caddress-modal-text">
                                <p>昵称</p>
                                <input type="text" name="nick_name" required class="caddress-input  cquestion-input" placeholder="输入昵称" value="<?php echo $this->_var['user_info']['nick_name']; ?>">
                            </div>
                        </div>
                        <dl class="cinfo-dl sex-box">
                            <dd>姓别</dd>
                            <dt><span class="caddress-circle <?php if ($this->_var['user_info']['sex'] == 1): ?>caddress-active<?php endif; ?>" data-sex="1"></span><span class="corder-pad">男</span></dt>
                            <dt><span class="caddress-circle <?php if ($this->_var['user_info']['sex'] != 1): ?>caddress-active<?php endif; ?>" data-sex="2"></span><span class="corder-pad">女</span></dt>
                        </dl>
                        <dl class="cinfo-dl">
                            <dd>生日</dd>
                            <dt>
                                <select name="year" id="" class="cinfo-select cquestion-raduis">
                                    <option value="">1986</option>
                                </select>
                                <span class="cinfo-lin corder-pad">年</span>
                            </dt>
                            <dt>
                                <select name="month" id="" class="cinfo-select cquestion-raduis">
                                    <option value="">12</option>
                                </select>
                                <span class="cinfo-lin corder-pad">月</span>
                            </dt>
                            <dt>
                                <select name="day" id="" class="cinfo-select cquestion-raduis">
                                    <option value="">12</option>
                                </select>
                                <span class="cinfo-lin corder-pad">日</span>
                            </dt>
                        </dl>
                        <div class="corder-right">
                            <button>保存</button>
                        </div>
                    </div>
                    <input type="hidden" name="sex" value="<?php echo $this->_var['user_info']['sex']; ?>">
                    </form>
                </div>
                <dl class="cinfo-right">
                    <dt><img src="<?php echo $this->_var['user_info']['avatar']; ?>" class="avatar"></dt>
                    <dd><a href="javascript:;" class="upload-avatar" data-grid=".avatar">修改头像</a></dd>
                </dl>
                <div class="clear"></div>
            </div>
            <div class="information">
                <p class="bor">注册信息与账户安全</p>
                <div class="zuodiv">
                    <p>
                        <span>真实姓名:</span>田馥甄<a href="javascript:;" class="cinfo-edit">修改</a>
                    </p>
                    <p>
                        <span>绑定邮箱:</span>LINK98765@qq.com<a href="javascript:;">修改绑定</a>
                    </p>
                    <p>
                        <span>微信绑定:</span><img src="/pc/themes/default/img/39.png">呵呵哈哈哈<a href="javascript:;">修改绑定</a>
                    </p>
                    <div class="cinfo-modal" style="display: none;">
                        <p><img src="/pc/themes/default/img/cimage36.png" alt="" class="corder-right cinfo-close"></p>
                        <h4>修改真实姓名</h4>
                        <div class="cinfo-center">
                            <input type="text" class="cquestion-input">
                        </div>
                        <p><span class="cinfo-red">真实姓名不能为空</span></p>
                        <div class="corder-right">
                            <button>保存</button>
                        </div>
                    </div>
                </div>
                <div class="youdiv">
                    <p>
                        <span>登录密码:</span><a href="javascript:;">修改密码</a>
                    </p>
                    <p>
                        <span>注册手机:</span>+86 123****0987<a href="javascript:;">修改绑定</a>
                    </p>
                </div>
                <div class="clear"></div>
            </div>
    </div>
</div>

<script src="/js/jquery.upload.min.js"></script>
<script>
    $(document).ready(function () {
        $(".cinfo-edit").click(function(){
            $(".cinfo-modal").show();
        });

        $(".cinfo-close").click(function(){
            $(".cinfo-modal").hide();
        });
        $(".cinfo-edit1").click(function(){
            $(".cinfo-modal1").show();
        });

        $(".cinfo-close1").click(function(){
            $(".cinfo-modal1").hide();
        });
        $(".upload-avatar").upload({
            url: 'user.php?act=avatar',
            template: '{url}'
        });
        $(".ajax-form").submit(function() {
            $.post($(this).attr('action'), $(this).serialize(), function(data) {
                if (data.code == 0) {
                    window.location.reload();
                }
            }, 'json');
        });
        $(".sex-box .caddress-circle").click(function() {
            $(".sex-box .caddress-circle").removeClass('caddress-active')
            $(this).addClass('caddress-active');
            $('[name=sex]').val($(this).attr('data-sex'));
        });
        var date = new Date('<?php echo $this->_var['user_info']['birthday']; ?>');
        var year = $("[name=year]");
        var month = $("[name=month]");
        var day = $("[name=day]");
        var now = new Date();
        month.change(function() {
            showDay();
        });
        year.change(function() {
            showDay();
        });

        var showYear = function() {
            var html = '';
            for (var index = 1900; index <= now.getFullYear(); index++) {
                html += '<option value="'+index+'">'+index+'</option>';
            }
            year.html(html);
        },
        showMonth = function() {
            var html = '';
            for (var index = 1; index <= 12; index++) {
                html += '<option value="'+index+'">'+index+'</option>';
            }
           month.html(html);
        },showDay = function() {
            var now = new Date(year.val(), month.val(), 0);
            var html = '';
            for (var index = 1; index <= now.getDate(); index++) {
                html += '<option value="'+index+'">'+index+'</option>';
            }
           day.html(html);
        };
        showYear();
        year.val(date.getFullYear());
        showMonth();
        month.val(date.getMonth() + 1);
        showDay();
        day.val(date.getDate());
    });
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>