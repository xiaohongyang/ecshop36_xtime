<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content">
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <ul class="memberindexul" style="margin-top:5px">
            <li><a href="#"><span>昵称:</span><input type="text" name="name" value="<?php echo $this->_var['name']; ?>" style="border:none;"/></a></li>
        </ul>
    </div>


</div>
    <script>
    $(document).ready(function () {
        $(".rightBtn").click(function () {
            var name = $("[name=name]").val();
            if (!name) {
                Dialog.tip('请输入昵称！');
                return;
            }
           $.post('user.php?act=act_info', {
               name: 'nick_name',
               value: name
           }, function (data) {
                window.location.href = 'user.php?act=profile';
           });
        });
    });
    </script>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
