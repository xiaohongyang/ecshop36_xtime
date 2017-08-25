    <h2 class="line"><img src="themes/default/img/13.png" /></h2>
    <div class="box">
        <div class="erweima">
            <?php $_from = $this->_var['helps']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
            <div>
                <p><?php echo $this->_var['item']['cat_name']; ?></p>
                <ul>
                    <?php $_from = $this->_var['item']['article']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'article');if (count($_from)):
    foreach ($_from AS $this->_var['article']):
?>
                    <li><a href="<?php echo $this->_var['article']['url']; ?>"><?php echo $this->_var['article']['title']; ?></a></li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            <div class="er">
                <img src="themes/default/img/14.png" />
                <p>关注微信访问手机版</p>
            </div>
            <p class="clear"></p>
        </div>
    </div>
    <div class="bot">
        <p>主办方：上海铂熠文化传媒有限公司</p>
        <p>客服、资询、招商热线：400-000-0000(7*24) | 客服邮箱：tickets@xtimeboys.com</p>
        <p>赞助招商、商务合作邮箱：business@xtimeboys.com | 商城合作邮箱：shop@xtimeboys.com</p>
        <p>沪ICP备 16053962 | 营业性演出许可证：XXXXXXXXXXXXX</p>
        <p>出版物经营许可证：新出发沪零字第XXXXXXXXX号 | 广播电视节目制作经营许可证：沪字第XXXX号 沪字第XXXX号</p>
    </div>
    <p class="copyright">Copyright 2017 @ X-TIME All Rights Reserved</p>

    <div class="rightfixed">
        <div class="righttab">
            <a href="user.php">
                <i class="rightmember"></i>
                <em class="rightmembertab-text" style="display: none;"></em>
            </a>
        </div>
        <div class="righttab">
            <a href="flow.php">
                <i class="rightmember rightmember1"></i>
                <em class="rightmembertab-text rightmembertab-text1" style="display: none;"></em>
            </a>
        </div>
        <div class="righttab" id="gototop">
            <i class="rightmember rightmember2"></i>
            <em class="rightmembertab-text rightmembertab-text2"></em>
        </div>
    </div>

   <script>
       $(function(){
           $(".toudiv").mouseenter(function(){
               $(".nicheng").show();
           }).mouseleave(function(){
               $(".nicheng").hide();
           });
           $(".shopping").mouseenter(function(){
               $(".shopcar").show();
           }).mouseleave(function(){
               $(".shopcar").hide();
           });
           $("img.lazy").lazyload({
             callback: function($this) {
               var img = $this.attr('data-original');
               if (!img) {
                 return;
               }
               $("<img />")
                   .bind("load", function() {
                     $this.attr('src', img);
                   }).attr('src', img);
             }
           });
            $(".search-btn").click(function () { 
                $(".search-form").submit();
            });
            $(".righttab").mouseenter(function(){
               $(this).find("em").show().siblings("em").hide();
            }).mouseleave(function(){
              $(this).find("em").hide().siblings("em").show();
            });
            $("#gototop").click(function (e) { 
                e.preventDefault();
                $('html, body').animate({
                    scrollTop: 0
                }, 500);
            });
            var showCart = function() {
                $.get('flow.php?step=info', function(html) {
                    $("#cat-info").html(html);
                });
            };
            showCart();
       });
   </script>
</body>
</html>