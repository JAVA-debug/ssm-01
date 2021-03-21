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
            <span>用户管理页面 >> 用户修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="accUpdate" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="id">用户编号：</label>
                    <input type="text" name="id" id="id" value="${accInfo.id}" readonly/>
                    <span>*</span>
                </div>
                <div>
                    <label for="username">用户名称：</label>
                    <input type="text" name="username" id="username" value="${accInfo.username}"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="email">用户邮箱：</label>
                    <input type="text" name="email" id="email" value="${accInfo.email}"/>
                    <span>*</span>

                </div>
                <div>
                    <label for="trueName">真实姓名：</label>
                    <input type="text" name="trueName" id="trueName" value="${accInfo.trueName}"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="sex">性别：</label>
                    <input type="text" name="sex" id="sex" value="${accInfo.sex}"/>
                    <span>*</span>
                </div>
                <div>
                    <label>创建时间：</label>
                    <span><fmt:formatDate value="${accInfo.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                    <span>*</span>
                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="AccountList.jsp">返回</a>-->
                    <input type="submit" value="保存"/>
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>

<script src="/res/admin/js/time.js"></script>
</body>
</html>