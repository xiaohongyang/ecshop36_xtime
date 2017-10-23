$.fn.myAlert = function(msg){
    // alert(msg);
    Dialog.tip(msg);
}

$(function(){

  
    var navClass='.index-nav'
    var nav = $(navClass)
    nav.find('li:gt(7)').hide()

    var indexNavTrigger = $('dl[target-nav=index-nav]')
    indexNavTrigger.hover(function(){

        nav.show()
    })

    $('.index-nav').click(function(){
        setTimeout(function(){
            $.fn.showIndexNav = true;
        },10)
    })

    var hideIndexNav = function(){
        var navClass='.index-nav'
        var nav = $(navClass)
        // nav.hide();
        nav.find('.btn-see-all').closest('li').nextAll('li').hide()
        nav.find('.btn-see-all').closest('li').show()
    }

    $('body').click(function () {

        $.fn.showIndexNav = false;

        setTimeout(function(){
            if ($.fn.showIndexNav)
                nav.show()
            else
                hideIndexNav()
        },20)
    })

    $('.btn-see-all').click(function(){
        nav.find('li').show()
        $(this).closest('li').hide()
    })
    
})

