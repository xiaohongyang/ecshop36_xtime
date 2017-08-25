function parseAjax(data) {
    if (data.code == 9) {
        selectRegion(data);
        return;
    }
    if (data.code == 0 && !data.msg) {
        data.msg = '执行成功！';
    }
    Dialog.tip(data.msg);
    if (data.data) {
        setTimeout(function() {
            if (data.data.url) {
                window.location.href = data.data.url;
                return;
            }
            if (data.data.refresh) {
                window.location.reload();
            }
            if (data.data.back) {
                window.history.back();
            }
        }, 1000);
    }
};
$(document).ready(function () {
    $(".postA").click(function(e) {
        e.preventDefault();
        var form = $('<form action="'+ $(this).attr('href') +'" method="post"></form');
        $(document.body).append(form);
        form.submit();
    });
    $(".delA").click(function(e) {
        e.preventDefault();
        var tip = $(this).attr('data-tip') || '确定删除这条数据？';
        if (!confirm(tip)) {
            return;
        }
        $.post($(this).attr('href'), {}, function(data) {
            if (data.code == 0 && !data.msg) {
                data.msg = '删除成功！';
            }
            parseAjax(data);
        }, 'json');
    });
});