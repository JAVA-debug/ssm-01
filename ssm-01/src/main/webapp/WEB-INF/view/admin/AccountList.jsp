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
            <span>用户管理</span>
        </div>
<%--        <div class="search">--%>
<%--            <span>商品名称：</span>--%>
<%--            <input type="text" placeholder="请输入商品的名称"/>--%>

<%--            <span>供应商：</span>--%>
<%--            <select name="tigong">--%>
<%--                <option value="">--请选择--</option>--%>
<%--                <option value="">北京市粮油总公司</option>--%>
<%--                <option value="">邯郸市五得利面粉厂</option>--%>
<%--            </select>--%>

<%--            <span>是否付款：</span>--%>
<%--            <select name="fukuan">--%>
<%--                <option value="">--请选择--</option>--%>
<%--                <option value="">已付款</option>--%>
<%--                <option value="">未付款</option>--%>
<%--            </select>--%>

<%--            <input type="button" value="查询"/>--%>
<%--            <a href="billAdd.html">添加订单</a>--%>
<%--        </div>--%>
        <!--账单表格 样式和供应商公用-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">用户编号</th>
                <th width="20%">用户名称</th>
                <th width="10%">用户邮箱</th>
                <th width="10%">真实姓名</th>
                <th width="10%">性别</th>
                <th width="10%">创建时间</th>
                <th width="30%">操作</th>
            </tr>
            <c:forEach items="${acc}" var="account">


                <tr>
                    <td>${account.id}</td>
                    <td>${account.username}</td>
                    <td>${account.email}</td>
                    <td>${account.trueName}</td>
                    <c:if test="${account.sex == 0}">
                        <td>保密</td>
                    </c:if>
                    <c:if test="${account.sex == 1}">
                        <td>男</td>
                    </c:if>
                    <c:if test="${account.sex == 2}">
                        <td>女</td>
                    </c:if>

                    <td>${account.createTime}</td>
                    <td>
                        <a href="${ctx}/admin/account/accInfo?id=${account.id}"><img src="/res/admin/img/read.png"
                                                                                     alt="查看" title="查看"/></a>
                        <a href="${ctx}/admin/account/toUpdate?id=${account.id}"><img src="/res/admin/img/xiugai.png"
                                                                                      alt="修改" title="修改"/></a>
                        <a href="${ctx}/admin/account/delAcc?id=${account.id}" class="removeBill"><img
                                src="/res/admin/img/schu.png" alt="删除" title="删除"/></a>
                    </td>
                </tr>

            </c:forEach>
        </table>
    </div>
<%--    <div>--%>
<%--        <nav aria-label="...">--%>
<%--            <ul class="pagination">--%>
<%--                <c:if test="${info.pageNum!=1}">--%>
<%--                    <li><span><a href="${ctx}/admin/account/allAcc?pageNum=1">首页</a></span></li>--%>
<%--                    <li><span><a href="${ctx}/admin/account/allAcc?pageNum=${info.prePage}">&laquo;</a></span></li>--%>
<%--                </c:if>--%>
<%--                <li class="active">--%>
<%--                    <span>${info.pageNum}<span class="sr-only">(current)</span></span>--%>
<%--                </li>--%>
<%--                <c:if test="${info.pageNum != info.pages}">--%>
<%--                    <li><span><a href="${ctx}/admin/account/allAcc?pageNum=${info.nextPage}">下一页</a></span></li>--%>
<%--                    <li><span><a href="${ctx}/admin/account/allAcc?pageNum=${info.pages}">末页</a></span></li>--%>
<%--                </c:if>--%>
<%--            </ul>--%>
<%--        </nav>--%>
<%--    </div>--%>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
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