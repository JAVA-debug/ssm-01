<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>评价管理</title>
    <link rel="stylesheet" href="/res/user/css/base.css" type="text/css" />
    <link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css" />
    <link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css" />
    <link rel="stylesheet" href="/res/user/css/shop_manager.css" type="text/css" />
    <script type="text/javascript" src="/res/user/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/res/user/js/topNav.js" ></script>

</head>
<body>
<!-- Header  -wll-2013/03/24 -->
<div class="shop_hd">
    <!-- Header TopNav -->
    <c:import url="module/top.jsp"></c:import>
    <!-- Header TopNav End -->

    <!-- TopHeader Center -->
    <c:import url="module/serach.jsp"></c:import>
    <!-- TopHeader Center End -->

    <!-- Header Menu -->
    <c:import url="module/shopMenu.jsp"></c:import>
    <!-- Header Menu End -->

</div>
<div class="clear"></div>
<!-- 面包屑 注意首页没有 -->
<div class="shop_hd_breadcrumb">
    <strong>当前位置：</strong>
    <span>
			<a href="">首页</a>&nbsp;›&nbsp;
			<a href="">我的商城</a>&nbsp;›&nbsp;
			<a href="">已买到商品</a>
		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->

<!-- 我的个人中心 -->
<div class="shop_member_bd clearfix">
    <!-- 左边导航 -->
    <c:import url="module/leftMenu.jsp"></c:import>
    <!-- 左边导航 End -->

    <!-- 右边购物列表 -->
    <div class="shop_member_bd_right clearfix">

        <div class="shop_meber_bd_good_lists clearfix">
            <div class="title"><h3>商品评价</h3></div>
            <div class="clear"></div>
            <div class="shop_home_form">
                <form action="/addComment" class="shop_form" method="post" onsubmit="return submitComment()">
                    <input type="hidden" name="productId" value="${commentGood.id}">
                    <ul>
                        <li><label>商品名称：</label>${commentGood.name }</li>
                        <li><label>商品价格：</label>${commentGood.price }</li>
                        <li style="height:100px;">
                            <label>评价内容：</label>
                            <textarea id="content" name="content" style="width:300px;height:100px;"></textarea>
                        </li>
                        <li class="bn"><label>&nbsp;</label><input type="submit" class="form-submit" value="提交评价" /></li>
                    </ul>
                </form>
        </div>
    </div>
</div>
    <!-- 右边购物列表 End -->

</div>
<!-- 我的个人中心 End -->

<!-- Footer - wll - 2013/3/24 -->
<c:import url="module/footer.jsp"></c:import>
<!-- Footer End -->
</body>
<script>
    function submitComment() {
        var content = $("#content").val();
        if(content == ''){
            alert('请填评价内容!');
            return false;
        }
    }
</script>
</html>