(function () {
    //轮播
    //图片放到右侧
    let iw = $('.imglist a').eq(0).outerWidth(); //一个图片的宽度
    $('.imglist a').css('left', iw); //图片放到右侧
    $('.imglist a').eq(0).css('left', 0); //第一张在可视区

    //生成焦点
    let html = '';
    $('.imglist a').each((i, item) => {
        html += `<span>${i + 1}</span>`;
    });
    $('.slides').html(html); //数据渲染
    $('.slides').find('span:first').addClass('slide_on');

    //自动轮播：定时器
    let timer = null;
    let now = 0; //可视区图片的下标

    function next() {
        //下一张
        //旧图挪走
        $('.imglist a').eq(now).animate({
            'left': -iw
        }, 700, 'linear');
        //新图进场
        now++;
        if (now >= $('.imglist a').size()) {
            now = 0;
        }
        $('.imglist a').eq(now).css({
            'left': iw
        }); //快速放在右侧
        $('.imglist a').eq(now).animate({
            'left': 0
        }, 700, 'linear');
        slides();
    }

    timer = setInterval(next, 2000); //每隔两秒钟切换一个图片

    function prev() {
        //上一张
        $('.imglist a').eq(now).animate({
            'left': iw
        }, 700, 'linear');
        now--;
        if (now < 0) {
            now = $('.imglist a').size() - 1;
        }
        $('.imglist a').eq(now).css({
            'left': -iw
        }); //快速放在右侧
        $('.imglist a').eq(now).animate({
            'left': 0
        }, 700, 'linear');
        slides();
    }

    //焦点跟随
    function slides() {
        $('.slides').find('span').eq(now).addClass('slide_on').siblings().removeClass('slide_on');
    }

    //鼠标移入停止移出继续运动
    $('#mainL').hover(() => {
        clearInterval(timer);
    }, () => {
        timer = setInterval(next, 2000);
    });

    //点击焦点能够跳转到对应图片
    $('.slides').on('click', 'span', function () {
        let index = $(this).index();
        // console.log(index);
        if (index > now) {
            //新图从右边切入
            $('.imglist a').eq(now).animate({
                'left': -iw
            }, 700, 'linear');
            $('.imglist a').eq(index).css({
                'left': iw
            });
            $('.imglist a').eq(index).animate({
                'left': 0
            }, 700, 'linear');
        }
        if (index < now) {
            //新图从左边切入
            $('.imglist a').eq(now).animate({
                'left': iw
            }, 700, 'linear');
            $('.imglist a').eq(index).css({
                'left': -iw
            });
            $('.imglist a').eq(index).animate({
                'left': 0
            }, 700, 'linear');
        }
        now = index;
        slides();
    });




    //选项卡
    function xuanxiang(a,b,c,d){
        $(a).click(function () {
            //点哪个哪个高亮
            $(this).attr('class', b)
                .siblings()
                .attr('class',c);
            //对应的div跟着显示
            $(d).eq($(this).index())
                .css('display', 'block')
                .siblings()
                .css('display', 'none');
        });
    }
    xuanxiang('.consult_tab div','tabMenu_click','consult_tt','.consult_text');
    xuanxiang('.server_tab li','on','','.tab_con');

})();