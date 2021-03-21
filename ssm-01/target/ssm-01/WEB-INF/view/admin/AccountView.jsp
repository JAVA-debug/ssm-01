<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理系统</title>
    <link rel="stylesheet" href="/res/admin/css/public.css"/>
    <link rel="stylesheet" href="/res/admin/css/style.css"/>
</head>
<body>
<c:import url="module/top.jsp"></c:import>
<!--主体内容-->
<section class="publicMian ">
    <c:import url="module/leftMenu.jsp"></c:import>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理 >> 信息查看</span>
        </div>
        <div class="providerView">
            <p><strong>用户编号：</strong><span>${accInfo.id}</span></p>
            <p><strong>用户名称：</strong><span>${accInfo.username}</span></p>
            <p><strong>用户邮箱：</strong><span>${accInfo.email}</span></p>
            <p><strong>真实姓名：</strong><span>${accInfo.trueName}</span></p>
            <p><strong>性别：</strong>
                <c:if test="${accInfo.sex == 0}">
                    <td>保密</td>
                </c:if>
                <c:if test="${accInfo.sex == 1}">
                    <td>男</td>
                 </c:if>
                <c:if test="${accInfo.sex == 2}">
                    <td>女</td>
                </c:if>
            </p>
            <p><strong>创建时间：</strong><span><fmt:formatDate value="${accInfo.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span></p>
            <a href="allAcc">返回</a>
        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="/res/admin/js/time.js"></script>
</body>
</html>