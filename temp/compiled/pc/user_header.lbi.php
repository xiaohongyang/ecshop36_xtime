<div class="corder-head ">
            <div class="corder-header corder-overflow">
                <div class="corder-left corder-overflow">
                    <div class="corder-left corder-member-img">
                        <img src="<?php echo $this->_var['user_info']['avatar']; ?>" class="avatar" alt="">
                        <span class="corder-ssr">SSR</span>
                    </div>
                    <div class="corder-left corder-member-info">
                        <span><?php echo $this->_var['user_info']['nick_name']; ?></span>
                        <span>LV.&nbsp;SSR</span>
                    </div>
                </div>
                <div class="corder-right corder-members">
                    <div class="corder-member-infos corder-left">
                        <div class="corder-my">
                            <img src="/pc/themes/default/img/cimage2.png" alt="">
                            <span class="corder-pad">我的积分：<?php echo $this->_var['user_info']['pay_points']; ?></span>
                        </div>
                        <div class="corder-my">
                            <img src="/pc/themes/default/img/cimage3.png" alt="">
                            <span class="corder-pad">我的星辉币：<?php echo $this->_var['user_info']['user_money']; ?></span>
                        </div>
                    </div>
                    <div class="corder-left corder-btn corder-pad">
                        <button class="corder-chong">
                            <a href="user.php?act=account">充值</a>
                        </button>
                    </div>
                </div>
            </div>
            
        </div>