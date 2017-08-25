<?php echo $this->fetch('library/page_header.lbi'); ?>
    <?php echo $this->fetch('library/user_header.lbi'); ?>
</div>
<div class="box">
    <div class="corder-main">
        <?php echo $this->fetch('library/user_menu.lbi'); ?>
        <div class="corder-main-main">
            <div class="corder-main-mainheader corder-overflow">
                <div class="corder-left">
                    <img src="/pc/themes/default/img/cimage30.png" alt="">
                </div>
            </div>
            <div class="cquestion">
                <div class="cquestion-head">
                    <div class="cquestion-first cquestion-active">
                        <span class="cquest-span">验证方式</span>
                    </div>
                    <div class="cquestion-first"><img src="/pc/themes/default/img/cimage31.png" alt=""></div>
                    <div class="cquestion-first">
                        <span class="cquest-span">修改号码</span>
                    </div>
                    <div class="cquestion-first"><img src="/pc/themes/default/img/cimage31.png" alt=""></div>
                    <div class="cquestion-first">
                        <span class="cquest-span">完成</span>
                    </div>
                </div>
                <div class="step-1">
                    <div class="cquestion-main">
                        <dl>
                            <dd>验证方式</dd>
                            <dt class="corder-rel cquestion-text-blue">
                                <span>
                                    <i>手机验证码+登录密码</i>
                                        <img src="/pc/themes/default/img/cimage6.png" alt="" class="corder-pad">
                                    </span>
                                <div class="corder-manager1" style="display: none;">
                                    <ul>
                                        <li><a href="javascript:;">手机验证码 + 登录密码</a></li>
                                        <li><a href="javascript:;">验证密码 + 登录密码</a></li>
                                    </ul>
                                </div>
                            </dt>

                        </dl>
                        <dl>
                            <dd>登录密码</dd>
                            <dt><input type="password" class="cquestion-input cquestion-raduis"></dt>
                        </dl>
                        <div class="mobile_grid">
                            <dl>
                                <dd>手机号码</dd>
                                <dt><input type="text" class="cquestion-input cquestion-raduis"></dt>
                            </dl>
                            <dl>
                                <dd>手机校验码</dd>
                                <dt>
                                    <span class="cquestion-fspan"><input type="text" class="cquestion-input1"><img src="/pc/themes/default/img/cimage32.png" alt="" class="hide"></span>
                                    <span class="cquestion-span">
                                            <span>校验码已发送</span>
                                    <span>重新发送需等8秒</span>
                                    </span>
                                </dt>
                            </dl>
                        </div>
                        
                    </div>
                    <div class="question_grid" style="display: none">
                            <div class="cquestion-footer">
                                <h5>回答验证问题</h5>
                                <div class="cquestion-text">
                                    <p>
                                        <span class="corder-ccc corder-padl">验证问题1</span>
                                        <input type="text" placeholder="小学语文老师叫什么名字？" class="cquestion-input cquestion-raduis">
                                    </p>
                                    <p>
                                        <span class="corder-ccc corder-padl">答案</span>
                                        <input type="text" class="cquestion-input">
                                    </p>
                                </div>
                                <div class="cquestion-text">
                                    <p>
                                        <span class="corder-ccc corder-padl">验证问题2</span>
                                        <input type="text" placeholder="小学语文老师叫什么名字？" class="cquestion-input cquestion-raduis ">
                                    </p>
                                    <p>
                                        <span class="corder-ccc corder-padl">答案</span>
                                        <input type="text" class="cquestion-input ">
                                    </p>
                                </div>
                            </div>
                        </div>
                    <div class="cquestion-btn">
                        <button>下一步</button>
                    </div>
                </div>
                <div class="step-2" style="display: none">
                    <div class="cquestion-main">
                        <dl>
                            <dd>新手机号码</dd>
                            <dt class="cquestion-input">
                                <span class="left">中国大陆86
                                    <img src="/pc/themes/default/img/cimage6.png" alt="" class="corder-pad">
                                </span>
                                <input type="text" class="cqueat-input">
                                <p class="cquestion-orange">请输入正确的手机号/请输入新的手机号</p>
                            </dt>
                        </dl>
                        <dl>
                            <dd>手机校验码</dd>
                            <dt>
                                <span class="cquestion-fspan"><input type="text" class="cquestion-input1"><img src="/pc/themes/default/img/cimage32.png" alt="" class="hide"></span>
                                <span class="cquestion-span">
                                    <span>校验码已发送</span>
                                    <span>重新发送需等8秒</span>
                                </span>
                                <p class="cquestion-orange corder-pad">验证码错误或已失效</p>   
                            </dt>
                        </dl>
                        <dl>
                            <dd>新密码</dd>
                            <dt>
                                <input type="password" class="cquestion-input cquestion-raduis">
                                <p class="cquestion-orange corder-pad">密码必须8~16位数，同时包含数字和字母</p>
                            </dt>
                            
                        </dl>
                        <dl>
                            <dd>确认密码</dd>
                            <dt>
                                <input type="password" class="cquestion-input">
                                <p class="cquestion-orange corder-pad">两次密码不一致</p>
                            </dt>
                            
                        </dl>
                    </div>
                    <div class="cquestion-btn cquestion-btnbg">
                        <button>确认提交</button>
                    </div>
                </div>
                <div class="step-3" style="display: none">
                    <div class="cquestion-main">
                        <div class="cquestion-success">
                            <p class="cquestion-success-blue">Success！</p>
                            <h4>已更新手机号</h4>
                            <span class="corder-ccc">5秒后自动跳转回之前的商城首页</span>
                        </div>
                    </div>
                    <div class="cquestion-return">
                        <button>
                            <a href="index.php">返回商城首页重新登录</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(".cquestion-text-blue").mouseenter(function(){
            $(".corder-manager1").show();
        }).mouseleave(function(){
            $(".corder-manager1").hide();
        });
        $(".corder-manager1 li").click(function() {
            var index = $(this).index();
            if (index > 0) {
                $(".mobile_grid").hide();
                $(".question_grid").show();
                return;
            }
            $(".mobile_grid").show();
            $(".question_grid").hide();
        });
        $(".step-1 .cquestion-btn").click(function () { 
            $(".step-1").hide();
            $(".step-2").show();
        });
        $(".step-2 .cquestion-btn").click(function () { 
            $(".step-2").hide();
            $(".step-3").show();
            autoRedirct();
        });
        var autoRedirct = function() {
            var i = 5;
            var ele = $(".step-3 .corder-ccc");
            var handle = setInterval(function () { 
                i --;
                ele.text(i + '秒后自动跳转回之前的商城首页');
                if (i == 0) {
                    window.location.href = 'index.php';
                    clearInterval(handle);
                }
            }, 1000);
        }
    });
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>