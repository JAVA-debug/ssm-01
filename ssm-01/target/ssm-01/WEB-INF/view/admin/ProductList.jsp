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
            <span>商品管理</span>
        </div>

        <form action="/admin/product/selPro" method="post">
            <div class="search">
                <span>商品名称：</span>
                <input type="text" placeholder="请输入商品的名称" name="name" value="${product.name}"/>

                <select name="status" >
                    <c:if test="${product.status == 1}">
                        <option value="">全部</option>
                        <option value="1" selected>上架</option>
                        <option value="0">下架</option>
                    </c:if>

                    <c:if test="${product.status == 0}">
                        <option value="" >全部</option>
                        <option value="1" >上架</option>
                        <option value="0" selected>下架</option>
                    </c:if>
                    <c:if test="${product.status == null}">
                        <option value="" selected>全部</option>
                        <option value="1" >上架</option>
                        <option value="0" >下架</option>
                    </c:if>

                </select>

                <input type="submit" value="查询"/>
            </div>
        </form>

        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">商品编号</th>
                <th width="20%">商品名称</th>
                <th width="10%">商品图片</th>
                <th width="10%">商品价格</th>
                <th width="10%">商品库存</th>
                <th width="10%">商品销量</th>
                <th width="10%">商品评论数</th>
                <th width="20%">操作</th>
            </tr>
            <c:if test="${!empty proAll}">
                <c:forEach items="${proAll}" var="pro">
                    <tr>
                        <td>${pro.id}</td>
                        <td>${pro.name}</td>
                        <td><img src="${pro.imageUrl}" style="width: 100px;height: 100px"></td>
                        <td>${pro.price}</td>
                        <td>${pro.stock}</td>
                        <td>${pro.sellNum}</td>
                        <td>${pro.commentNum}</td>
                        <td>
                            <c:if test="${pro.status == 0}">
                                <button><a href="${ctx}/admin/product/changeStatus?id=${pro.id}">上架</a></button>
                            </c:if>
                            <c:if test="${pro.status == 1}">
                                <button><a href="${ctx}/admin/product/changeStatus?id=${pro.id}">下架</a></button>
                            </c:if>
                            <a href="${ctx}/admin/product/proInfo?id=${pro.id}"><img src="/res/admin/img/read.png" alt="查看" title="查看"/></a>
                            <a href="${ctx}/admin/product/toUpdate?id=${pro.id}"><img src="/res/admin/img/xiugai.png" alt="修改" title="修改"/></a>
                            <a href="${ctx}/admin/product/proDel?id=${pro.id}" class="removeProvider"><img src="/res/admin/img/schu.png" alt="删除" title="删除"/></a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>

            <c:if test="${!empty selPro}">
                <c:forEach items="${selPro}" var="pro">
                    <tr>
                        <td>${pro.id}</td>
                        <td>${pro.name}</td>
                        <td><img src="${pro.imageUrl}" style="width: 100px;height: 100px"></td>
                        <td>${pro.price}</td>
                        <td>${pro.stock}</td>
                        <td>${pro.sellNum}</td>
                        <td>${pro.commentNum}</td>
                        <td>
                            <c:if test="${pro.status == 0}">
                                <button><a href="${ctx}/admin/product/changeStatus?id=${pro.id}">上架</a></button>
                            </c:if>
                            <c:if test="${pro.status == 1}">
                                <button><a href="${ctx}/admin/product/changeStatus?id=${pro.id}">下架</a></button>
                            </c:if>
                            <a href="${ctx}/admin/product/proInfo?id=${pro.id}"><img src="/res/admin/img/read.png" alt="查看" title="查看"/></a>
                            <a href="${ctx}/admin/product/toUpdate?id=${pro.id}"><img src="/res/admin/img/xiugai.png" alt="修改" title="修改"/></a>
                            <a href="${ctx}/admin/product/proDel?id=${pro.id}" class="removeProvider"><img src="/res/admin/img/schu.png" alt="删除" title="删除"/></a>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>

        </table>

    </div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeProv">
   <div class="removerChid">
       <h2>提示</h2>
       <div class="removeMain" >
           <p>你确定要删除该供应商吗？</p>
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