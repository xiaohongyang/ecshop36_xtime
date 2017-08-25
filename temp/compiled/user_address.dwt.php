<?php echo $this->fetch('library/page_header.lbi'); ?>
<link href="/themes/default/css/city.css" rel="stylesheet"/>
<div class="box">
  <div class="content" >
      <?php echo $this->fetch('library/page_title.lbi'); ?>
      <ul class="memberindexul user-address" style="margin-top:5px">
          <li><a href="#">收货人:</a>
              <input type="text" id="consignee" placeholder="点击输入收货人姓名" value="<?php echo $this->_var['consignee']['consignee']; ?>" style="height:30px;border:0;padding-left:3px" />
          </li>
          <li><a href="#">联系电话:</a>
              <input type="text" id="tel" value="<?php echo $this->_var['consignee']['tel']; ?>" placeholder="点击添加联系电话" style="height:28px;border:0;padding-left:3px" />
             
            </li>
          <li>
              <a href="#">所在地区:</a>
              <input type="text" id="region" placeholder="省，市，区" readonly style="height:30px;border:0;padding-left:3px" /></li>
          <li><a href="#">详细地址:</a>
              <input type="text" id="address" value="<?php echo $this->_var['consignee']['address']; ?>" placeholder="街道，小区，门牌号等" style="height:30px;border:0;padding-left:3px" />
              </li>
      </ul>
  </div>

</div>
<script src="/js/jquery.city.js"></script>
<script>
$(document).ready(function () {
    var data = [
        <?php echo $this->_var['consignee']['country']; ?>,
        <?php echo $this->_var['consignee']['province']; ?>,
        <?php echo $this->_var['consignee']['city']; ?>,
        <?php echo $this->_var['consignee']['district']; ?>
    ];
    $("#region").city({
        default: data,
        data: 'zd.php?act=region',
        line: ' ',
        done: function() {
            console.log(this.close().val());
            this.output();
            data = this.all();
        }
    });
    $(".rightBtn").click(function() {
        var consignee = {
            address_id: <?php echo $this->_var['consignee']['address_id']; ?> + '',
            country: data[0],
            province: data[1],
            city: data[2],
            district: data[3],
            address: $("#address").val(),
            consignee: $("#consignee").val(),
            tel: $("#tel").val()
        };
        if (!consignee.district || consignee.district <= 0) {
            Dialog.tip('请选择地区');
            return;
        }
        if (!consignee.tel || consignee.tel.length < 8) {
            Dialog.tip('请输入正确的联系电话');
            return;
        }
        if (!consignee.consignee) {
            Dialog.tip('请输入收货人');
            return;
        }
        if (!consignee.address) {
            Dialog.tip('请输入地址');
            return;
        }
        $.post('user.php?act=act_edit_address', consignee, function (data) {
            if (data.code == 0) {
                window.location.href = 'user.php?act=address_list';
                return;
            }
            Dialog.tip(data.msg);
        }, 'json');
    });
});
</script>
<?php echo $this->fetch('library/page_footer.lbi'); ?>