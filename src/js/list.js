$(function () {


    let uid = getCookie('uid');
    var list = document.getElementById('itemSearchList');
    var ipage = 1; //第几页
    var num = 8; //每页8条数据
    var next = document.getElementById('nextPage'); //下一页
    var previous = document.getElementById('prePage'); //上一页
    var first = document.getElementById('firstPage'); //首页
    var last = document.getElementById('lastPage'); //尾页


    function init(ipage) {
        ajax2({
            type: 'get',
            url: '../api/list.php',
            data: 'page=' + ipage + '&num=' + num,
            success: function (str) {
                // console.log(str)
                create(str);
                asd(str);
            }
        });
    }


    function create(str) {

        var arr = JSON.parse(str);
        // console.log(arr.content)

        var res = arr.content.map(function (data) {
            return ` <li data-id="${data.id}">
            <div class="itemSearchResultCon">
                <a class="product_pic pro_img" href="###">
                    <img src="../img/index/${data.img}">
                </a>
                <p class="price" id="">
                        ${data.price}
                </p>
                <p class="titleBox">
                    <a class="productName"
                        href="###">
                        <span class="list_lable_self"></span>
                       ${data.title}</a>
                    <a class="promoTitle" id="" href="###">${data.youhui}</a>
                </p>
                <div class="sell_type_div">
                    <!--评论-->
                    <span class="comment comment_right" >
                        <a id="pdlink3" href="javascript:void(0);">评论 <em>${data.pinglun}</em>条</a>
                    </span>
                    <span class="goldseller_name self_name">1药网自营</span>
                </div>
                <div class="search_list_op" id="">
                    <input class="search_list_reduce_gray" type="button">
                    <input class="num" id="" type="text" value="1"> 
                    <input class="search_list_plus" type="button">
                    <button class="buy op_right_btn add_cart_btn border_left" id="">加入购物车</button>
                </div>
            </div>
        </li>`;
        }).join('');
        list.innerHTML = res;

    }

    init(1);

    page.onclick = (ev) => {

        if (ev.target.dataset.id == 'a1') {
            // alert(123)
            ipage = ev.target.innerHTML;
            // console.log(ev.target);
            init(ipage);
        }

        if (ev.target.id == 'firstPage') {

            init(1); //首页

        }
        if (ev.target.id == 'lastPage') {

            init(5); //尾页

        }


        if (ev.target.id == 'prePage') { //上一页
            ipage = ipage - 1;
            if (ipage <= 1) {
                ipage = 1;
                init(ipage);
            } else {
                init(ipage);
            }
        }
        if (ev.target.id == 'nextPage') { //下一页
            ipage = ipage * 1 + 1;
            if (ipage >= 5) {
                ipage = 5;
                init(ipage);
            } else {
                init(ipage);
            }
        }
    }

    function asd(str) {
        var arr = JSON.parse(str);
        // console.log(arr)
        // pageMe.js 使用方法
        $("#page").paging({
            pageNum: ipage, // 当前页面
            totalNum: arr.total/8, // 总页码
            totalList: arr.total, // 记录总数量
            callback: function (num) { //回调函数
                // console.log(num);
            }
        });
    }
    if (ipage == '5') {
        $('.p_next').attr('.disabled')
    }

    $('#itemSearchList').on('click', '.pro_img', function () {
        // alert(123)
        // console.log($(this).parent().parent().data());
        var pidd = $(this).parent().parent().data();
        location.href = 'detail.html?' + pidd.id;
    });



    $('#itemSearchList').on('click', '.add_cart_btn', function () {
        // console.log($(this).parent().parent().parent().data());
        var pppid = $(this).parent().parent().parent().data();
        console.log(pppid.id);
        $.ajax({
            type: "get",
            url: "../api/yyw.php",
            data: pppid,
            async: true,
            success: function (str) {
                var arr = JSON.parse(str);
                // console.log(arr.content2);
                if (arr.content2 != '') {
                    // console.log(pppid)
                    // console.log(uid)
                    // console.log(arr.content2[0].num)
                    var a = arr.content2[0].num * 1 + 1
                    $.ajax({
                        type: "get",
                        url: "../api/uad.php",
                        data: {
                            num: a,
                            uid: uid,
                            pid: pppid.id
                        },
                        async: true,
                        success: function (str) {
                            alert('已经成功加入购物车！');
                            location.href = 'car.html';
                            // console.log(123)
                        }
                    });
                } else {
                    // console.log(321)
                    $.ajax({
                        type: "get",
                        url: "../api/insert.php",
                        data: {
                            num: 1,
                            uid: uid,
                            pid: pppid.id
                        },
                        async: true,
                        success: function (str) {
                            alert('已经成功加入购物车！');
                            location.href = 'car.html';
                            console.log(pppid.id)
                            // console.log(num)
                            // console.log(uid)
                        }
                    });
                }
            }
        });
    });
    //价格排序
    var isok=true;
    $('#list_priceDown_sort').click(function (str) {
     if(isok==true){  
        $.ajax({
            type: "get",
            url: "../api/list2.php",
            data: {
                page: ipage,
                num: num,
                type: 'price',
                order: ''
            },
            async: true,
            success: function (str) {
                create(str)
            }
        });
        isok=!isok;
     }else{
        $.ajax({
            type: "get",
            url: "../api/list2.php",
            data: {
                page: ipage,
                num: num,
                type: 'price',
                order: 'desc'
            },
            async: true,
            success: function (str) {
                create(str)
            }
        });
        isok=!isok;
     }
    });
});