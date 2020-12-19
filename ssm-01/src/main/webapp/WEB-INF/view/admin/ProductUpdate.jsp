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
            <span>商品管理 >> 商品修改页</span>
        </div>
        <div class="providerAdd">
            <form action="proUpdate" method="post">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <input type="hidden" name="productCategoryId" value="${proInfo.productCategoryId}">
                <div class="">
                    <label for="id">商品编号：</label>
                    <input type="text" name="id" id="id" value="${proInfo.id}" readonly/>
                    <span>*</span>
                </div>

                <div>
                    <label for="name">商品名称：</label>
                    <input type="text" name="name" id="name" value="${proInfo.name}"/>
                    <span >*</span>
                </div>
                <div>
                    <label for="imageUrl">商品图片：</label>
                    <input type="text" name="imageUrl" id="imageUrl" value="${proInfo.imageUrl}"/>
                    <span>*</span>

                </div>
                <div>
                    <label for="price">商品价格：</label>
                    <input type="text" name="price" id="price" value="${proInfo.price}"/>
                    <span></span>
                </div>
                <div>
                    <label for="stock">商品库存：</label>
                    <input type="text" name="stock" id="stock" value="${proInfo.stock}"/>
                    <span></span>

                </div>
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="ProductList.jsp">返回</a>-->
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