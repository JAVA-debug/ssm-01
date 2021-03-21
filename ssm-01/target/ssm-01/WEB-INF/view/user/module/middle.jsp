<%--
  Created by IntelliJ IDEA.
  User: ZSY
  Date: 2020/11/24
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script>

    $(document).ready(
        $.get("/special", {"start": 1, "end": 10}, function (data) {

            var uls = '<ul>'
            for (var i = 0; i < data.length; i++) {
                var li = '<li><dt><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +
                    '<dd><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +
                    '<dd>¥:<em>' + data[i].price + '</em></dd></li>'
                uls += li
            }
            uls += '</ul>'
            $("#tuijian_content_1").html(uls)
        }),

        $.get("/indexCate",{"productCategoryId":11},function (data) {
            var uls = '<ul>'
            for (var i = 0; i < data.length; i++) {
                var li = '<li><dt><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +
                    '<dd><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +
                    '<dd>¥:<em>' + data[i].price + '</em></dd></li>'
                uls += li
            }
            uls += '</ul>'
            $("#tuijian_content_4").html(uls)
        }),
        $.get("/indexCate",{"productCategoryId":10},function (data) {
            var uls = '<ul>'
            for (var i = 0; i < data.length; i++) {
                var li = '<li><dt><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +
                    '<dd><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +
                    '<dd>¥:<em>' + data[i].price + '</em></dd></li>'
                uls += li
            }
            uls += '</ul>'
            $("#tuijian_content_3").html(uls)
        }),
        $.get("/limit2", {}, function (data) {

            var uls = '<ul>'
            for (var i = 0; i < data.length; i++) {
                var li = '<li><dt><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +
                    '<dl><dd><a href="/good?bookid=' + data[i].id + '" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +
                    '<dd>¥:<em>' + data[i].price + '</em></dd></dl></li>'
                uls += li
            }
            uls += '</ul>'
            $("#tuijian_content_2").html(uls)
        })
    )
    console.log($(".tuijian_tabs li #xiaoshuo").data('cid'))
</script>
<body>

<div class="shop_bd_tuijian">
<ul class="tuijian_tabs">
    <li class="hover"  onmouseover="easytabs('1', '1');" onfocus="easytabs('1', '1');" onclick="return false;" id="tuijian_content_btn_1"><a href="javascript:void(0);">主打</a></li>
    <li onmouseover="easytabs('1', '2');" onfocus="easytabs('1', '2');" onclick="return false;" id="tuijian_content_btn_2" ><a href="javascript:void(0);">热门商品</a></li>
    <li onmouseover="easytabs('1', '3');" onfocus="easytabs('1', '3');" onclick="return false;" id="tuijian_content_btn_3"><a href="javascript:void(0);">童书</a></li>
    <li onmouseover="easytabs('1', '4');" onfocus="easytabs('1', '4');" onclick="return false;" id="tuijian_content_btn_4" ><a href="javascript:void(0);">小说</a></li>
</ul>
<div class="tuijian_content shop_bd_home_block_center">
    <div id="tuijian_content_1" class="tuijian_shangpin tabs-panel" style="width: 1200px">

    </div>

    <div id="tuijian_content_2" class="tuijian_shangpin tabs-panel" style="width: 1200px">

    </div>
    <div id="tuijian_content_3" class="tuijian_shangpin tabs-panel" style="width: 1200px">

    </div>
    <div id="tuijian_content_4" class="tuijian_shangpin tabs-panel" style="width: 1200px">

    </div>
</div>

</div>
<!-- 特别推荐 End -->
</body>
</html>
