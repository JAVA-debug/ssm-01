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
                <span>订单管理页面</span>
            </div>
<%--            <div class="search">--%>
<%--                <span>用户名：</span>--%>
<%--                <input type="text" placeholder="请输入用户名"/>--%>
<%--                <input type="button" value="查询"/>--%>
<%--                <a href="userAdd.html">添加用户</a>--%>
<%--            </div>--%>
            <!--用户-->
            <form action="/admin/order/selOrder" method="post">
                <div class="search">
                    <span>订单号:</span>
                    <input type="text" placeholder="请输入订单号" name="sn" value="${orders.sn}"/>
                    <span>用户:</span>
                    <input type="text" placeholder="请输入用户" name="username" value="${orders.account.username}"/>
                    
                    <span>是否付款：</span>
                    <select name="status">
                        <c:if test="${orders.status == null}">
                            <option value="" selected>--请选择--</option>
                            <option value="0">已付款</option>
                            <option value="1">已发货</option>
                            <option value="2">已完成</option>
                            <option value="3">未支付</option>
                        </c:if>
                        <c:if test="${orders.status == 0}">
                            <option value="">--请选择--</option>
                            <option value="0" selected>已付款</option>
                            <option value="1">已发货</option>
                            <option value="2">已完成</option>
                            <option value="3">未支付</option>
                        </c:if>
                        <c:if test="${orders.status == 1}">
                            <option value="">--请选择--</option>
                            <option value="0">已付款</option>
                            <option value="1" selected>已发货</option>
                            <option value="2">已完成</option>
                            <option value="3">未支付</option>
                        </c:if>
                        <c:if test="${orders.status == 2}">
                            <option value="">--请选择--</option>
                            <option value="0">已付款</option>
                            <option value="1">已发货</option>
                            <option value="2" selected>已完成</option>
                            <option value="3">未支付</option>
                        </c:if>
                        <c:if test="${orders.status == 3}">
                            <option value="">--请选择--</option>
                            <option value="0">已付款</option>
                            <option value="1">已发货</option>
                            <option value="2">已完成</option>
                            <option value="3" selected>未支付</option>
                        </c:if>

                    </select>

                    <input type="submit" value="查询"/>
                </div>
            </form>
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
                <c:if test="${!empty orderAll}">
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
                            <c:if test="${order.status == 3}">
                                <td>未支付</td>
                            </c:if>
                            <td><fmt:formatDate value="${order.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td>
                                <c:if test="${order.status == 0}">
                                    <button><a href="${ctx}/admin/order/sendOrder?id=${order.id}">发货</a></button>
                                </c:if>
                                <button><a href="${ctx}/admin/order/delOrder?id=${order.id}">删除</a></button>
                                    <%--                            <a href="#" class="removeUser"><img src="/res/admin/img/schu.png" alt="删除" title="删除"/></a>--%>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>

                <c:if test="${!empty selOrder}">
                    <c:forEach items="${selOrder}" var="order">
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
                            <c:if test="${order.status == 3}">
                                <td>未支付</td>
                            </c:if>
                            <td>${order.createTime}</td>
                            <td>
                                <c:if test="${order.status == 0}">
                                    <button><a href="${ctx}/admin/order/sendOrder?id=${order.id}">发货</a></button>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
            </table>

        </div>
    </section>

    <footer class="footer">
    </footer>

<script src="/res/admin/js/jquery.js"></script>
<script src="/res/admin/js/js.js"></script>
<script src="/res/admin/js/time.js"></script>

</body>
</html>