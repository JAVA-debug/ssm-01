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
                <span>订单管理页面</span>
            </div>
<%--            <div class="search">--%>
<%--                <span>用户名：</span>--%>
<%--                <input type="text" placeholder="请输入用户名"/>--%>
<%--                <input type="button" value="查询"/>--%>
<%--                <a href="userAdd.html">添加用户</a>--%>
<%--            </div>--%>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">订单编号</th>
                    <th width="10%">订单用户</th>
                    <th width="30%">订单地址</th>
                    <th width="10%">订单价格</th>
                    <th width="10%">订单状态</th>
                    <th width="10%">订单创建时间</th>
                    <th width="20%">操作</th>
                </tr>
                <c:forEach items="${orderAll}" var="order">
                    <tr>
                        <td>${order.sn}</td>
                        <td>${order.account.username}</td>
                        <td>${order.address}</td>
                        <td>${order.money}</td>
                        <c:if test="${order.status == 0}">
                            <td>未发货</td>
                        </c:if>
                        <c:if test="${order.status == 1}">
                            <td>已发货</td>
                        </c:if>
                        <c:if test="${order.status == 2}">
                            <td>已完成</td>
                        </c:if>
                        <td>${order.createTime}</td>
                        <td>
                            <c:if test="${order.status == 0}">
                                <button><a href="${ctx}/admin/order/sendOrder?id=${order.id}">发货</a></button>
                            </c:if>
                            <button><a href="${ctx}/admin/order/delOrder?id=${order.id}">删除</a></button>
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