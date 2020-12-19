<%--
  Created by IntelliJ IDEA.
  User: ZSY
  Date: 2020/12/17
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="left">
    <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
    <nav>
        <ul class="list">
            <li ><a href="${ctx}/admin/account/allAcc">用户管理</a></li>
            <li ><a href="${ctx}/admin/product/proAll">商品管理</a></li>
            <li><a href="${ctx}/admin/order/orderAll">订单管理</a></li>
            <li><a href="${ctx}/admin/comment/commentAll">评论管理</a></li>
            <li><a href="password.html">密码修改</a></li>
            <li><a href="login.html">退出系统</a></li>
        </ul>
    </nav>
</div>
</body>
</html>
