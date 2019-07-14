(function(){
    //引入footer
    $(function () {
        //find("footer")是找出iframe内容文档中的footer.(比如find("body")），并设置给iframe， 
        $("#myiframe").load(function () {
            //窗口大小改变时重新获取footer的height
            $(window).resize(function () {
                $('#myiframe').height($('#myiframe').contents().find("footer")
                    .height());
                // console.log($('#myiframe').contents().find("footer").height());
            });
        });
    });
})();
       

