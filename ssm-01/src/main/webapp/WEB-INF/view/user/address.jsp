<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>管理收货地址</title>
    <link rel="stylesheet" href="css/base.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_manager.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_shdz_835.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/topNav.js"></script>
</head>
<body>
<!-- Header  -wll-2013/03/24 -->
<div class="shop_hd">
    <!-- Header TopNav -->
    <c:import url="module/top.jsp"></c:import>
    <div class="clear"></div>
    <!-- Header TopNav End -->

    <!-- TopHeader Center -->
    <div class="shop_hd_header">
        <div class="shop_hd_header_logo"><h1 class="logo"><a href="/"><img src="images/logo.png"
                                                                           alt="ShopCZ"/></a><span>ShopCZ</span></h1>
        </div>
        <div class="shop_hd_header_search">
            <ul class="shop_hd_header_search_tab">
                <li id="search" class="current">商品</li>
                <li id="shop_search">店铺</li>
            </ul>
            <div class="clear"></div>
            <div class="search_form">
                <form method="post" action="index.php">
                    <div class="search_formstyle">
                        <input type="text" class="search_form_text" name="search_content" value="搜索其实很简单！"/>
                        <input type="submit" class="search_form_sub" name="secrch_submit" value="" title="搜索"/>
                    </div>
                </form>
            </div>
            <div class="clear"></div>
            <div class="search_tag">
                <a href="">李宁</a>
                <a href="">耐克</a>
                <a href="">Kappa</a>
                <a href="">双肩包</a>
                <a href="">手提包</a>
            </div>

        </div>
    </div>
    <div class="clear"></div>
    <!-- TopHeader Center End -->

    <!-- Header Menu -->
    <div class="shop_hd_menu">
        <!-- 所有商品菜单 -->

        <c:import url="module/shopMenu.jsp"></c:import>
        <!-- 普通导航菜单 End -->
    </div>
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
            <div class="title"><h3>管理收货地址<a style="float:right;" href="javascript:void(0);" onclick="tog()" id="new_add_shdz_btn">新增收货地址</a></h3></div>
            <div class="clear"></div>
            <!-- 收货人地址 Title End -->
            <div class="shop_bd_shdz clearfix">
                <div class="shop_bd_shdz_lists clearfix">
                    <ul>
                        <c:if test="${!empty address}">
                        <c:forEach items="${address}" var="addressList">


                        <li>
                            <label><span><input type="radio" name="shdz"/></span></label>
                            <em>${addressList.address}</em><em>${addressList.name}(收)</em><em>${addressList.phone}</em>
                            <span class="admin_shdz_btn">
                                <a href="/toUpdate?id=${addressList.id}">编辑</a>
                                <a href="/delAddress?id=${addressList.id}">删除</a></span>
                        </li>

                        </c:forEach>
                        </c:if>
                    </ul>
                </div>
                <!-- 新增收货地址 -->
                <div id="new_add_shdz_contents" style="display:none;" class="shop_bd_shdz_new clearfix">
                    <div class="title">新增收货地址</div>
                    <div class="shdz_new_form">
                        <form action="newAddress" method="post">
                            <ul>
                                <li><label for="name"><span>*</span>收货人姓名：</label><input type="text" class="name" id="name" name="name"/></li>
                                <li><label for="address"><span>*</span>详细地址：</label><input type="text" class="xiangxi" id="address" name="address"/></li>
                                <li><label for="postalCode"><span></span>邮政编码：</label><input type="text" class="youbian" id="postalCode" name="postalCode"/></li>
                                <li><label for="phone"><span></span>电话：</label><input type="text" class="dianhua" id="phone" name="phone"/></li>
                                <input type="submit" value="增加收货地址">
                            </ul>
                        </form>
                    </div>
                </div>
                <!-- 新增收货地址 End -->
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!-- 右边购物列表 End -->

</div>
<!-- 我的个人中心 End -->

<!-- Footer - wll - 2013/3/24 -->
<div class="clear"></div>
<div class="shop_footer">
    <div class="shop_footer_link">
        <p>
            <a href="">首页</a>|
            <a href="">招聘英才</a>|
            <a href="">广告合作</a>|
            <a href="">关于ShopCZ</a>|
            <a href="">关于我们</a>
        </p>
    </div>
    <div class="shop_footer_copy">
        <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
    </div>
</div>
<!-- Footer End -->
<script type="text/javascript">

    $("#new_add_shdz_btn").click(function () {
        $("#new_add_shdz_contents").toggle(500)
    })
</script>
</body>
</html>