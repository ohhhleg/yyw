$(function () {
    var a = 0;
    $('#name').blur(function () {
        var name1 = $('#name').val();
        if (name1 == '') {
            $('#emptyName').css('display', 'block');
        } else {
            $.ajax({
                type: "get",
                url: "../api/insertuser.php",
                async: true,
                data: {
                    name: name1
                },
                success: function (str) {
                    // console.log(str)
                    var arr = JSON.parse(str);
                    // console.log(arr)
                    if (arr.content == '1') {
                        $('#errorName').css('display', 'block');
                        a = 0;
                    } else {
                        $('#trueName').css('display', 'block');
                        $('#emptyName').css('display', 'none');
                        $('#errorName').css('display', 'none');
                        // console.log(a)
                    }
                }
            });
        }

    });
    $('#password').bind('input propertychange', function () {
        // console.log(123);
        var psw = $('#password').val().trim();
        if (psw) {
            //不为空：正则  字母开头，总长度至少大于6位
            var reg = /^[a-zA-Z].{7,}$/;
            var res = reg.test(psw);
            if (psw.length >= 8 && res) {
                //正则匹配成功
                $('#truePw').css('display', 'block');
                $('#emptyPw').css('display', 'nonne');
                $('#errorPw').css('display', 'none');
            } else {
                $('#errorPw').css('display', 'block');
            }
        } else {
            $('#emptyPw').css('display', 'block');
        }
    });
    $('#password2').bind('input propertychange', function () {
        // console.log(123);
        var psw = $('#password2').val().trim();
        var psw2 = $('#password').val().trim();
        if (psw) {
            var reg = /^[a-zA-Z].{7,}$/;
            var res = reg.test(psw);
            if (psw.length >= 8 && res) {
                //正则匹配成功
                //    $('#truePw2').css('dispaly', 'block');
                if (psw2 == psw) {
                    $('#truePw2').css('display', 'block');
                    $('#errorPw2').css('display', 'none');
                    a = 2;
                } else {
                    $('#errorPw2').css('display', 'block');
                    a = 0;
                }
            } else {
                $('#errorPw2').css('display', 'block');
            }
        } else {
            $('#errorPw2').css('display', 'block');
        }
        //    console.log(a)
    });

    // 验证码 1000-9999随机数
    var num = parseInt(Math.random() * (9999 - 1000 + 1) + 1000);

    $('#ma').click(function () {
        var b = $('#phone').val().trim();
        $.ajax({
            type: "post",
            url: "../api/phone.php",
            async: true,
            data: {
                phone: b,
                num: num
            },
            success: function (str) {
                console.log(str)
                console.log(num)
            }
        });
    });
    $('#ma').bind('input propertychange', function () {
        var b = $('#ma').val();
        console.log(num)
        if (b == num) {
            $('#errorPhone').html('验证通过').css('color', '#58BC58');
        } else {
            $('#errorPhone').html('验证码不一致！').css('color', 'red');
        }
    });
    //注册
    $('.btn').click(function () {
        var reg = /^[a-zA-Z].{7,}$/;
        var res = reg.test(psw);
        var name1 = $('#name').val().trim();
        var psw = $('#password2').val().trim();
        var psw2 = $('#password').val().trim();
        var yzm = $('#ma').val().trim();
        var b = $('#phone').val().trim();
        if (a == 2 && (psw.length >= 8 && res) && (psw2.length >= 8 && res)&& yzm == num) {
            $.ajax({
                type: "post",
                url: "../api/insertuser.php",
                async: true,
                data: {
                    name: name1,
                    psd: psw,
                    phone:b,
                    a: a
                },
                success: function (str) {
                    // console.log(str)
                    var arr = JSON.parse(str);
                    console.log(arr.content2);
                    console.log(arr.content4[0]);
                    console.log(arr.content4[0].id);
                    //保留14天
                    setCookie('name', $('#name').val(), 14);
                    setCookie('psw', $('#password').val(), 14);
                    setCookie('uid', arr.content4[0].id, 14);
                    location.href = '0index.html';
                }
            });
        } else {
            alert('信息有误请重新填写')
        }
    });
});