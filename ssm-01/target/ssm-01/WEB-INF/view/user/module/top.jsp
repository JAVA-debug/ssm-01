<%--
  Created by IntelliJ IDEA.
  User: ZSY
  Date: 2020/10/5
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/shop_header.css" type="text/css"/>
</head>
<body>
<div class="shop_hd_topNav">
    <div class="shop_hd_topNav_all">
        <!-- Header TopNav Left -->
        <div class="shop_hd_topNav_all_left">

            <c:if test="${!empty account}">
                <p style="color:blue;">欢迎， ${account.username}</p>
            </c:if>
            <c:if test="${empty account}">
                <p>您好，欢迎来到<b><a href="/">ShopCZ商城</a></b>[<a href="${pageContext.request.contextPath}/login">登录</a>][<a
                        href="${pageContext.request.contextPath}/regist">注册</a>]</p>
            </c:if>
        </div>
        <!-- Header TopNav Left End -->

        <!-- Header TopNav Right -->
        <div class="shop_hd_topNav_all_right">
            <ul class="topNav_quick_menu">

                <li>
                    <div class="topNav_menu">
                        <a href="${pageContext.request.contextPath}/shop" class="topNavHover">我的商城<i></i></a>
                        <div class="topNav_menu_bd" style="display:none;">
                            <ul>
                                <li><a title="已买到的商品" target="_top" href="#">已买到的商品</a></li>
                                <li><a title="个人主页" target="_top" href="#">个人主页</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="topNav_menu">
                        <a href="#" class="topNavHover">购物车<b>0</b>种商品<i></i></a>
                        <div class="topNav_menu_bd" style="display:none;">
                            <p>还没有商品，赶快去挑选！</p>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="topNav_menu">
                        <a href="#" class="topNavHover">我的收藏<i></i></a>
                        <div class="topNav_menu_bd" style="display:none;">
                            <ul>
                                <li><a title="收藏的商品" target="_top" href="#">收藏的商品</a></li>
                                <li><a title="收藏的店铺" target="_top" href="#">收藏的店铺</a></li>
                            </ul>
                        </div>
                    </div>
                </li>

            </ul>
        </div>
        <!-- Header TopNav Right End -->
    </div>
    <div class="clear"></div>
</div>
</body>
</html>
