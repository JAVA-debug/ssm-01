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
            <span>商品管理 >> 信息查看</span>
        </div>
        <div class="providerView">
            <p><strong>商品编号：</strong><span>${proInfo.id}</span></p>
            <p><strong>商品名称：</strong><span>${proInfo.name}</span></p>
            <p><strong>商品图片：</strong><span><img src="/${proInfo.imageUrl}" style="width: 100px;height: 100px"></span></p>
            <p><strong>商品价格：</strong><span>${proInfo.price}</span></p>
            <p><strong>商品库存：</strong><span>${proInfo.stock}</span></p>
            <p><strong>商品销量：</strong><span>${proInfo.sellNum}</span></p>
            <p><strong>商品评论数：</strong><span>${proInfo.commentNum}</span></p>

            <a href="${ctx}/admin/product/proAll">返回</a>
        </div>
    </div>
</section>
<footer class="footer">
</footer>
<script src="/res/admin/js/time.js"></script>

</body>
</html>