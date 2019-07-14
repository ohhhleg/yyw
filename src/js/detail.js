$(function () {

    let pppid = location.search.slice(1);
    // console.log(pppid)
    let uid = getCookie('uid');
    // console.log(uid)

    var p = new Promise(function (sucfn) {
        $.ajax({
            type: "get",
            url: "../api/detail.php",
            data: {
                pid: pppid
            },
            async: true,
            success: function (str) {
                sucfn(str);
            }
        });
    });

    //渲染主图放大镜等等
    p.then(function (data) {
        // console.log(data)
        var arr = JSON.parse(data);
        // console.log(arr);
        var res = arr.content.map(function (data) {
            return `<div class="preview_wrap">
            <div class="preview" id="preview">
                <div class="jqzoom main_img" id="spec_n1">
                    <img id="p1" src="../img/index/${data.img}"
                    data-large="../img/index/${data.img}" alt="">
                </div>
                <div class="spec_list">
                    <a href="###" id="spec_forward" class="arrow_prev">
                        <i></i>
                    </a>
                    <a href="###" id="spec_backward" class="arrow_next">
                        <i></i>
                    </a>
                    <div id="spec_list" class="spec_list">
                        <ul class="ch">
                            <li>
                                <img width="50" src="../img/index/${data.img}" alt="">
                            </li>
                            <li>
                                <img width="50" src="../img/index/${data.img}" alt="">
                            </li>
                            <li>
                                <img width="50" src="../img/index/${data.img}" alt="">
                            </li>
                            <li>
                                <img width="50" src="../img/index/big1.jpg" alt="">
                            </li>
                            <li>
                                <img width="50" src="../img/index/${data.img}" alt="">
                            </li>
                            <li>
                                <img width="50" src="../img/index/big1.jpg" alt="">
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="right_btns fr">
                    <a class="follow" href="###">
                        <i></i>
                        <em>收藏</em>
                    </a>
                    <a class="follow" href="###">
                        <i></i>
                        <em>分享</em>
                    </a>
                </div>

            </div>
        </div>
        <div class="itemInfo_wrap">
            <div class="sku_name">
                <span class="list_lable_self"></span>
                ${data.name}
            </div>
            <div class="news">
                <div class="item hide">
                    <a href="###">
                       ${data.title}
                    </a>
                    <p>${data.youhui}</p>
                </div>
            </div>

            <div class="summary_price_wrap">
                <div class="summary_price fl">
                    <div class="dt">药网价</div>
                    <div class="dd">
                        <span class="p_price">
                            <span>￥</span>
                            <span class="price">${data.price}</span>
                        </span>
                    </div>
                </div>
                <div class="summary_info">
                    <span>累积评论</span>
                    <b class="count">${data.pinglun}</b>
                </div>
            </div>
            <div class="summary p_choose_wrap">
                <div class="choose_btns">
                    <div class="choose_amount ">
                        <div class="wrap_input">
                            <input class="text buy_num" id="buy_num" value="1" data-min="1" data-max="200"
                                type="text">
                            <a href="###" class="btn_reduce">-</a>
                            <a href="###" class="btn_add">+</a>
                        </div>
                        <a class="btn_lg" id="btn_lg" href="###">加入购物车</a>
                    </div>
                </div>
            </div>
        </div>`;
        }).join('');
        // console.log(data.pid)
        $('.wrap').html(res);


        //渲染留言
        p.then(function (data) {
            // console.log(data)
            var arr = JSON.parse(data);
            // console.log(arr.content3);
            var res2 = arr.content3.map(function (data) {
                return ` <div class="msgCon">
                                    <div class="msgBox">
                                        <div class="headUrl">
                                            <div class="uuurl"></div>
                                            <div class="headname">
                                                <span class="name_id">id:&nbsp;${data.uid} &nbsp;&nbsp;用户</span>
                                            </div>
                                            <a href="###" class="headdel"></a>
                                        </div>
                                    </div>
                                    <div class="msgTxt">
                                        ${data.main}
                                    </div>
                        </div> `;
            }).join('');
            $('#box_liuyan').html(res2);

        });

        //留言添加
        $('.submit').click(function () {
            var a = $('.liuyan').val();
            // console.log(a)
            if (a == '') {
                alert('评论的内容不能为空！');
            } else {
                $.ajax({
                    type: "get",
                    url: "../api/detail.php",
                    data: {
                        main: a,
                        uid: uid,
                        pid: pppid
                    },
                    async: true,
                    success: function (str) {
                        alert('留言成功！');

                    }
                });
            }

        });




        //数量变化：加减数量、手动修改数量
        $('.wrap_input').on('click', '.btn_add', function () {
            // alert(123)
            var num = $(this).siblings('#buy_num').val();
            var kuncun = 200;
            num++;
            if (num >= kuncun) { //设置上限
                num = kuncun;
            }
            $(this).siblings('#buy_num').val(num);
        });

        $('.wrap_input').on('click', '.btn_reduce', function () {
            var num = $(this).siblings('#buy_num').val();
            num--;
            if (num <= 1) { //设置下限
                num = 1;
            }
            $(this).siblings('#buy_num').val(num);
        });

        //手动输入的时候，改变数量
        $('.wrap_input').on('input', '#buy_num', function () {
            var num = $(this).val();
            var kuncun = 200;
            if (num <= 1) {
                num = 1;
            } else if (num >= kuncun) {
                num = kuncun;
            }
            $(this).val(num);
        });



        //加入购物车
        $('#btn_lg').click(function () {
            // console.log($('#buy_num').val())
            // console.log(pppid)
            let nnum = $('#buy_num').val();
            // console.log(nnum);
            // console.log(uid)
            $.ajax({
                type: "get",
                url: "../api/detail.php",
                data: {
                    pid: pppid,
                    uid: uid,
                    num: nnum
                },
                async: true,
                success: function (str) {
                    var arr = JSON.parse(str);
                    // console.log(arr.content2);   

                    if (arr.content2 != '') {
                        // console.log(pppid)
                        // console.log(uid)
                        // console.log(arr.content2[0].num)
                        var a = arr.content2[0].num;
                        a = a / 1 + nnum / 1;
                        $.ajax({
                            type: "get",
                            url: "../api/uad.php",
                            data: {
                                num: a,
                                uid: uid,
                                pid: pppid
                            },
                            async: true,
                            success: function (str) {
                                alert('已经成功加入购物车！');
                                location.href = 'car.html';
                            }
                        });
                    } else {
                        // console.log(321)
                        $.ajax({
                            type: "get",
                            url: "../api/insert.php",
                            data: {
                                num: nnum,
                                uid: uid,
                                pid: pppid
                            },
                            async: true,
                            success: function (str) {
                                alert('已经成功加入购物车！');
                                location.href = 'car.html';
                            }
                        });
                    }
                }
            });
        });


        $('.ch li').mouseover(function () {
            // console.log($(this).html());
            var a = $(this).html();
            arr = a.split('/');
            // console.log(arr);
            arr2 = arr[3].split('.')
            // console.log(arr2);

            $(this).parent().parent().parent()
                .siblings().children('#p1')
                .attr('src', '../img/index/' + arr2[0] + '.jpg');
        });
        $('#spec_backward').click(function () {
            // console.log($(this))
            $(this).siblings('.spec_list')
                .children('ul')
                .css('left', '-55px')
        });
        $('#spec_forward').click(function () {
            // console.log($(this))
            $(this).siblings('.spec_list')
                .children('ul')
                .css('left', '0px')
        });
        // console.log( $('.p1'));

        $('#p1').imagezoomsl({
            zoomrange: [1, 10],
            cursorshadeborder: '10px solid #000',
            magnifiereffectanimate: 'fadeIn',
            magnifierpos: 'left'
        });
    });

});