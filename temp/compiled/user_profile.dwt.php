<?php echo $this->fetch('library/page_header.lbi'); ?>
<link rel="stylesheet" href="/themes/default/css/mobiscroll_date.css"/>
<link rel="stylesheet" href="/themes/default/css/mobiscroll.css"/>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <dl class="memberindex avatarUpload">
            <dt><img src="<?php echo $this->_var['profile']['avatar']; ?>" width="100%" class="avatar"/></dt>
            <dd><img src="/themes/default/img/12.png" width="12px"></dd>
        </dl>
        <ul class="memberindexul">
            <li>
                <a href="/user.php?act=edit_nickname" style="width:100%;display:inline-block">
                    <span>昵称:<?php echo $this->_var['profile']['nick_name']; ?></span>
                    <span class="you"><img src="/themes/default/img/12.png" width="10px" /></span>
                </a>
            </li>
            <li class="sex"><a href="javascript:;"><span>性别:</span><em class="sex-grid">
                <?php if ($this->_var['profile']['sex'] == 2): ?>女<?php else: ?>男<?php endif; ?></em></a><span class="you"><img src="/themes/default/img/12.png" width="10px" /></span></li>
            <li><a href="javascript:;"><span>生日:</span><input type="text" name="USER_AGE" id="USER_AGE" readonly class="input" value="<?php echo $this->_var['profile']['birthday']; ?>" style="width:85%;border:0;height:35px;"></a><span class="you"><img src="/themes/default/img/12.png" width="10px" /></span></li>
            <li class="addCard"><a href="javascript:;"><span>手机:</span><?php echo \zd\Helper::hidTel($this->_var['profile']['mobile_phone']); ?></a><span class="you"><img src="/themes/default/img/12.png" width="10px" /></span></li>
            <li><a href="javascript:;"><span>微信:</span><?php echo $this->_var['profile']['real_name']; ?></a><span class="you"><img src="/themes/default/img/12.png" width="10px" /></span></li>
        </ul>
        <ul class="memberindexul">
            <li>
                 <a href="user.php?act=reset_password" style="width:100%;display:inline-block">
                    <span>修改密码</span>
                    <span class="you"><img src="/themes/default/img/12.png" width="10px" /></span>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="mengban">
    <div class="modal-content">
        <div class="xqmtk">
            <div class="bang">
                <p onclick="javascrtpt:window.location.href='user.php?act=phone1'">通过手机验证修改绑定手机</p>
                <p onclick="javascrtpt:window.location.href='user.php?act=phone2'" style="border-bottom:0">通过登录密码修改绑定手机</p>
            </div>
            <div class="butto">
                <p><a href="#" class="closee">取消</a></p>
            </div>
        </div>
    </div>
</div>



<div class="mengbann">
    <div class="modal-content">
        <div class="xqmtk">
            <div class="bang">
                <p>男</p>
                <p>女</p>
            </div>
            <div class="butto">
                <p><a href="#" class="closee">取消</a></p>
            </div>
        </div>
    </div>
</div>



<!--<input type="text" name="USER_AGE" id="USER_AGE" readonly class="input" placeholder="请填写你的出生日期">-->
<script src="/js/jquery.upload.min.js"></script>
<script src="/themes/default/js/mobiscroll_date.js" charset="gb2312"></script>
<script src="/themes/default/js/mobiscroll.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".addCard").click(function() {
            $(".mengban").toggle();
        });
        $(".close").click(function() {
            $(".mengban").hide();

        });
        $(".closee").click(function() {
            $(".mengban").hide();
        });
        $(".sex").click(function() {
            $(".mengbann").toggle();
        });
        $(".close").click(function() {
            $(".mengbann").hide();
        });
        $(".closee").click(function() {
            $(".mengbann").hide();
        });
        $(".avatarUpload").upload({
            url: 'zd.php?act=upload',
            name: 'file',
            template: '{url}',
            grid: '.avatar',
            afterUpload: function (data) {
                if (typeof data != 'object') {
                    data = JSON.parse(data);
                }
                if (data.code == 0) {
                    $.post('user.php?act=act_info', {
                        name: 'avatar',
                        value: data.data.url
                    }, function () {

                    });
                    return data.data;
                }
                return false;
            }
        });
        $(".mengbann .bang>p").click(function () {
            $('.sex .sex-grid').text($(this).text());
            $.post('user.php?act=act_info', {
                name: 'sex',
                value: $(this).text() == '男' ? 1 : 2
            }, function (data) {

            });
            $('.mengbann').hide();
        });
        var currYear = (new Date()).getFullYear();
        var opt = {};
        opt.date = {preset : 'date'};
        opt.datetime = {preset : 'datetime'};
        opt.time = {preset : 'time'};
        opt.default = {
            theme: 'android-ics light', //皮肤样式
            display: 'modal', //显示方式
            mode: 'scroller', //日期选择模式
            dateFormat: 'yyyy-mm-dd',
            lang: 'zh',
            showNow: true,
            nowText: "今天",
            startYear: currYear - 50, //开始年份
            endYear: currYear + 10 //结束年份
        };

        $("#USER_AGE").mobiscroll($.extend(opt['date'], opt['default']))
            .change(function (i) {
                $.post('user.php?act=act_info', {
                    name: 'birthday',
                    value: i.target.value
                }, function (data) {

                });
            });

    });
</script>


<?php echo $this->fetch('library/page_footer.lbi'); ?>
