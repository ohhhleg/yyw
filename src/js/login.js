$(function () {
    $('#quickLoginTab').click(function () {//快捷登录与账户登录的框切换
        $('.login_box')
            .children('#commonLogin')
            .css('display', 'none');
        $('.login_box')
            .children('#quickLogin')
            .css('display', 'block');
        $(this).addClass('cur');
        $(this).siblings().removeClass('cur');
    });
    $('#commonLoginTab').click(function () {
        $('.login_box')
            .children('#commonLogin')
            .css('display', 'block');
        $('.login_box')
            .children('#quickLogin')
            .css('display', 'none');
        $(this).addClass('cur');
        $(this).siblings().removeClass('cur');
    });



    //登录验证
    $('#btnSubmit1').on('click', function () {
        var p = new Promise(function (sucfn) {//写异步请求的代码
            $.ajax({
                type: "post",
                url: "../api/login.php",
                async: true, //默认异步
                data: {//第一种写法：字符串 'name=malin&psw=123456'，第二种写法：对象
                    name: $('#userName').val(),
                    passsword: $('#userPass').val()
                },
                success: function (str) {
                    sucfn(str);//拿到数据就返回到then那里做处理：防止嵌套太多出现回调地狱
                }
            });
        });

        p.then(function (data) {//数据渲染写在then里面
            // console.log(data)
            if (data == 'no') {
                alert('账号密码有误！请重新输入！')
            } else {
                //保留14天
                setCookie('name', $('#userName').val(), 14);
                setCookie('psw', $('#userPass').val(), 14);
                var arr = JSON.parse(data);
                var res = arr.map(function (data) {
                    return data.id;
                });
                setCookie('uid', res, 17);
                location.href = '0index.html';
            }
        });

    });
    

});