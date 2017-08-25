<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <div class="content" >
        <?php echo $this->fetch('library/page_title.lbi'); ?>
        <ul class="memberindexul" style="margin-bottom:0px;margin-top:10px">
            <li><a href="#">积分:<span class="bold" style="font-size:20px;color:#68C3BC">
                <?php echo $this->_var['info']['pay_points']; ?></span></a><span class="you"></span></li>
        </ul>
        <ul class="memberindexull" style="margin-bottom:0;background-color:#E5E5E5;border-bottom:none">
            <li>
                <a href="#">兑换星辉会员等级:</a><br />
                <a href="#" style="color:#949494;display:block;">当前:<?php echo $this->_var['info']['rank_name']; ?></a>
            </li>
            <li></li>
        </ul>
        <ul class="memberindexul">
            <?php $_from = $this->_var['rank_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'rank');if (count($_from)):
    foreach ($_from AS $this->_var['rank']):
?>
            <li><a href="javascript:;"><?php echo $this->_var['rank']['rank_name']; ?>(365天)</a><span class="you"><span class="bord addCard"
                data-id="<?php echo $this->_var['rank']['rank_id']; ?>"
                style="border:1px solid #68C3BC;padding:0px 5px;display:block;height:30px;width:55px;line-height:30px;text-align:center;border-radius:3px;color:#68C3BC">兑换</span></span></li>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
        <p class="djjs">查看会员等级特权介绍</p>
    </div>


    
    <div class="mengban">
      <div class="modal-content1">
          <div class="mengban-delete1">
              <h4>是否兑换？</h4>
              <div class="mengban-right1">
                  <a href="javascript:;" class="mengban-confirm">是</a>
                  <a href="javascript:;" class=" mengban-close">否</a>
              </div>
          </div>
      </div>
  </div>
    <script>
        $(document).ready(function() {
            var rank = 0;
            $(".addCard").click(function() {
                rank = $(this).attr('data-id');
                $(".mengban").toggle();
            });
            $(".mengban-close").click(function() {
                $(".mengban").hide();
            });
            $(".mengban-confirm").click(function() {
                $(".mengban").hide();
                $.getJSON('user.php?act=buy_rank&rank=' + rank, function (data) { 
                    if (data.code == 0) {
                        Dialog.tip('兑换成功！');
                        setTimeout(function() {
                            window.location.reload();
                        }, 500);
                        return;
                    }
                    Dialog.tip(data.msg);
                });
            });
            $(".closee").click(function() {
                $(".mengban").hide();
            });
        });
    </script>
    



</div>
        <?php echo $this->fetch('library/page_footer.lbi'); ?>
