(function () {
    var iH = 485;

    $('.floor_nav').click(function () {
        $('.floor_title').css('display', 'none');
        $('.floor_title').eq($(this).index())
            .css('display', 'block');
        $('html,body').animate({scrollTop:$(this).index()*iH + 980},700);
    });

})();