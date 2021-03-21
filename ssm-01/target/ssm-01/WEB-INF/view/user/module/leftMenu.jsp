<%--
  Created by IntelliJ IDEA.
  User: ZSY
  Date: 2020/12/1
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title>Title</title>
</head>
<body>
<div class="shop_member_bd_left clearfix">

    <div class="shop_member_bd_left_pic">
        <a href="javascript:void(0);"><img src="images/avatar.png"/></a>
    </div>
    <div class="clear"></div>

    <dl>
        <dt>我的交易</dt>
        <dd><span><a href="/order?userId=${sessionScope.account.id}">我的订单</a></span></dd>
        <dd><span><a href="/favorite">我的收藏</a></span></dd>
        <dd><span><a href="/commentList">评价管理</a></span></dd>
    </dl>

    <dl>
        <dt>我的账户</dt>
        <dd><span><a href="/info">个人资料</a></span></dd>
        <dd><span><a href="/ToUpdatePwd">密码修改</a></span></dd>
        <dd><span><a href="/address">收货地址</a></span></dd>
    </dl>

</div>
</body>
</html>
