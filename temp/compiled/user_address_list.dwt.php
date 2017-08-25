<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <?php $_from = $this->_var['consignee_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'consignee');if (count($_from)):
    foreach ($_from AS $this->_var['consignee']):
?>
        <div class="choose address-item" data-id="<?php echo $this->_var['consignee']['address_id']; ?>">
            <p><span><?php echo $this->_var['consignee']['consignee']; ?></span>
                <span><?php echo $this->_var['consignee']['tel']; ?></span>
                <?php if ($this->_var['address'] == $this->_var['consignee']['address_id']): ?><a href="#">[默认地址]</a><?php endif; ?></p>
            <p><?php echo $this->_var['consignee']['region']; ?><?php echo $this->_var['consignee']['address']; ?></p>
        </div>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

        </div>

    </div>


<div class="mengban">
<div class="modal-content">
    <div class="xqmtk">
        <div class="bang">
            <p class="default">设为默认地址</p>
            <p class="edit">编辑地址</p>
            <p class="del" style="border-bottom:0;color:#FB6150">删除该地址</p>
        </div>
        <div class="butto">
            <p><a href="#" class="closee">取消</a></p>
        </div>
    </div>
</div>
</div>
<script>
$(document).ready(function() {
    var address_id = 0;
    var mode = '<?php echo $this->_var['mode']; ?>';
    $(".address-item").click(function() {
        address_id = $(this).attr('data-id');
        if (mode == 'select') {
            window.location.href = document.referrer + '&address=' + address_id;
            return;
        }
        $(".mengban").toggle();
    });
    $(".mengban .closee").click(function() {
        $(".mengban").hide();
    });
    $(".mengban .del").click(function () {
        if(!confirm('您确实要删除该收货地址吗')){
            return;
        }
        $.getJSON('user.php?act=drop_consignee&id=' + address_id, function (data) {
            if (data.code == 0) {
                window.location.reload();
                return;
            }
            Dialog.tip(data.msg);
        });
    });
    $(".mengban .edit").click(function () {
        window.location.href = 'user.php?act=address&id=' + address_id;
    });
    $(".mengban .default").click(function () {
        if(!confirm('您确实要设置为默认收货地址吗')){
            return;
        }
        $.getJSON('user.php?act=default_address&id=' + address_id, function (data) {
            if (data.code == 0) {
                window.location.reload();
                return;
            }

        });
    });
});
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>