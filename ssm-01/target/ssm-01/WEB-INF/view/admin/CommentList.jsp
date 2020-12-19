<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <span>评论管理页面</span>
            </div>
            <div class="search">
                <span>用户名：</span>
                <input type="text" placeholder="请输入用户名"/>
                <input type="button" value="查询"/>
                <a href="userAdd.html">添加用户</a>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">ID</th>
                    <th width="10%">评论用户</th>
                    <th width="30%">所属商品</th>
                    <th width="20%">评论内容</th>
                    <th width="10%">评论时间</th>
                    <th width="20%">操作</th>
                </tr>
                <c:forEach items="${commentAll}" var="comment">
                    <tr>
                        <td>${comment.id}</td>
                        <td>${comment.account.username}</td>
                        <td>${comment.product.name}</td>
                        <td>${comment.content}</td>
                        <td>${comment.createTime}</td>
                        <td>
                            <button><a href="${ctx}/admin/comment/commentDel?id=${comment.id}">删除</a></button>
<%--                            <a href="#" class="removeUser"><img src="/res/admin/img/schu.png" alt="删除" title="删除"/></a>--%>
                        </td>
                    </tr>
                </c:forEach>

            </table>

        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

    <footer class="footer">
    </footer>

<script src="/res/admin/js/jquery.js"></script>
<script src="/res/admin/js/js.js"></script>
<script src="/res/admin/js/time.js"></script>

</body>
</html>