<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="box">
    <header class="navbar navbar-default  sear" style="background-color: #fff; opacity: 1; height: 40px; line-height: 40px; margin-bottom: 10px;">
        <h1>
            <span class="san" style="padding-top: 5px;padding-right: 6px;" 
                  onclick="javascrtpt:window.location.href='/'">取消</span>
            <form class="searchForm" action="search.php">
                <span class="fang"></span>
                <input type="text" name="keywords" class="radius" />
            </form>

        </h1>
        <script>
            $(document).ready(function () {
                $(".searchForm [name=keywords]").keydown(function (e) {
                    if (e.keyCode == 13) {
                        $(".searchForm").submit();
                    }
                });
                $(".searchForm img").click(function (e) {
                    $(".searchForm").submit();
                });
            });
        </script>
    </header>

    <div class="content" style="margin-bottom:50px">
        <?php if ($this->_var['goods_list']): ?>
        <?php echo $this->fetch('library/goods_list.lbi'); ?>
        <?php else: ?>
        <p class="searchno">暂无搜索结果</p>
        <?php endif; ?>
    </div>

    <?php echo $this->fetch('library/page_menu.lbi'); ?>
</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?>