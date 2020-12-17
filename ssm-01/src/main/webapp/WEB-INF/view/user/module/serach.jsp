<%--
  Created by IntelliJ IDEA.
  User: ZSY
  Date: 2020/12/5
  Time: 0:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="shop_hd_header">
    <div class="shop_hd_header_logo"><h1 class="logo"><a href="${pageContext.request.contextPath}/"><img
            src="images/dingdang.png"
            alt="DDang" width="180px" height="80px"/></a><span>ShopCZ</span></h1>
    </div>

    <div class="shop_hd_header_search">
        <ul class="shop_hd_header_search_tab">
            <li id="search" class="current">商品</li>

        </ul>
        <div class="clear"></div>
        <div class="search_form">
            <form method="post" action="/search">
                <div class="search_formstyle">
                    <input type="text" class="search_form_text" name="searchText" value="搜索其实很简单！"/>
                    <input type="submit" class="search_form_sub" name="secrch_submit" value="" title="搜索"/>
                </div>
            </form>
        </div>
        <div class="clear"></div>


    </div>
</div>
<div class="clear"></div>
</body>
</html>
