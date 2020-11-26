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
        $.get("/special", {"start": 12, "end": 17}, function (data) {

            var uls = '<ul>'
            for (var i = 0; i < data.length; i++) {
                var li = '<li><dt><a href="/good?bookid='+data[i].id+'" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +
                    '<dd><a href="/good?bookid='+data[i].id+'" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +
                    '<dd>¥:<em>' + data[i].price + '</em></dd></li>'
                uls += li
            }
            uls += '</ul>'
            $("#product").html(uls)
        }),

        $.get("/limit2", {}, function (data) {

            var uls = '<ul>'
            for (var i = 0; i < data.length; i++) {
                var li = '<li><dt><a href="/good?bookid='+data[i].id+'" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +
                    '<dl><dd><a href="/good?bookid='+data[i].id+'" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +
                    '<dd>¥:<em>' + data[i].price + '</em></dd></dl></li>'
                uls += li
            }
            uls += '</ul>'
            $("#limit2").html(uls)
        })
    )
</script>
<body>
<div class="shop_bd_home_block_center" style="width:1200px;">
    <ul class="tabs-nav" style="width:1200px;">
        <li><a href="javascript:void(0);">特别推荐</a></li>
    </ul>
    <div class="tabs-panel" style="width:1200px;" id="product">

    </div>
</div>
<div class="shop_bd_home_block_center" style="width:1200px;">
    <ul class="tabs-nav" style="width:1200px;">
        <li><a href="javascript:void(0);">最近热卖</a></li>
    </ul>
    <div class="tabs-panel" style="width:1200px;" id="limit2">

    </div>
</div>
</body>
</html>
