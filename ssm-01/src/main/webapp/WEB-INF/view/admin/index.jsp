<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head lang="en">
    <meta charset="UTF-8">
    <title>管理系统</title>
    <link rel="stylesheet" href="/res/admin/css/public.css"/>
    <link rel="stylesheet" href="/res/admin/css/style.css"/>
</head>
<body>
<!--头部-->
<c:import url="module/top.jsp"></c:import>
<!--主体内容-->
<section class="publicMian">
    <c:import url="module/leftMenu.jsp"></c:import>
    <div class="right">
        <img class="wColck" src="/res/admin/img/touxiang.jpg" alt=""/>
        <div class="wFont">
            <h2>Admin</h2>
            <p>管理系统!</p>
			<span id="hours"></span>
        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="/res/admin/js/time.js"></script>
</body>
</html>