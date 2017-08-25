<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <div class="collection-list">
            <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
            <div class="collection-thing"  data-id="<?php echo $this->_var['goods']['rec_id']; ?>">
                <div class="collection-left collection-img">
                    <a href="<?php echo $this->_var['goods']['url']; ?>">
                         <img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" alt="">
                    </a>
                   
                </div>
                <div class="collection-left collection-text">
                    <a href="<?php echo $this->_var['goods']['url']; ?>">
                        <p class="collection-left"><?php echo $this->_var['goods']['goods_name']; ?></p>
                    </a>
                    
                    <p class="collection-right del">
                        <img src="themes/default/img/29.png" alt="" >
                    </p>
                </div>
            </div>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>

    </div>


</div>
<script>
    $(document).ready(function() {
        $(".del").click(function() {
            var item = $(this).parents('.collection-thing');
            $.getJSON('user.php?act=delete_collection&collection_id=' + item.attr('data-id'), function(data) {
                if (data.code == 0) {
                    item.remove();
                    Dialog.tip('删除成功！');
                }
            });
        });
    });
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>
