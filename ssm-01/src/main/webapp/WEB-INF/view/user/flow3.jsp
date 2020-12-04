<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>购物车页面</title>
    <link rel="stylesheet" href="css/base.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_gouwuche.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/topNav.js"></script>


    <style type="text/css">

        .shop_bd_shdz_title h3 {
            width: 120px;
            text-align: center;
            height: 40px;
            line-height: 40px;
            font-size: 14px;
            font-weight: bold;
            background: #FFF;
            border: 1px solid #E8E8E8;
            border-radius: 4px 4px 0 0;
            float: left;
            position: relative;
            top: 10px;
            left: 10px;
            border-bottom: none;
        }

        .shop_bd_shdz_title p {
            float: right;
        }

        .shop_bd_shdz_title p a {
            margin: 0 8px;
            color: #555555;
        }

        .shop_bd_shdz_lists ul {
            width: 1000px;
        }

        .shop_bd_shdz_lists ul li {
            width: 980px;
            border-radius: 3px;
            margin: 5px 0;
            padding-left: 18px;
            line-height: 40px;
            height: 40px;
            border: 1px solid #FFE580;
            background-color: #FFF5CC;
        }

        .shop_bd_shdz_lists ul li label {
            color: #626A73;
            font-weight: bold;
        }

        .shop_bd_shdz_lists ul li label span {
            padding: 10px;
        }

        .shop_bd_shdz_lists ul li em {
            margin: 0 4px;
            color: #626A73;
        }


        .shdz_new_form ul {
            width: 100%;
        }

        .shdz_new_form ul li {
            clear: both;
            width: 100%;
            padding: 5px 0;
            height: 25px;
            line-height: 25px;
        }

        .shdz_new_form ul li label {
            float: left;
            width: 100px;
            text-align: right;
            padding-right: 10px;
        }

        .shdz_new_form ul li label span {
            color: #f00;
            font-weight: bold;
            font-size: 14px;
            position: relative;
            left: -3px;
            top: 2px;
        }
    </style>
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
			<a href="">我的购物车</a>
		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->

<!-- 购物车 Body -->
<div class="shop_gwc_bd clearfix">
    <div class="shop_gwc_bd_contents clearfix">

        <!-- 购物流程导航 -->
        <div class="shop_gwc_bd_contents_lc clearfix">
            <ul>
                <li class="step_a">确认购物清单</li>
                <li class="step_b">确认收货人资料及送货方式</li>
                <li class="step_c hover_c">购买完成</li>
            </ul>
        </div>

    </div>

    <div class="empty_cart mb10">
        <div class="message">
            <p>购买完成</p>
        </div>
    </div>
</div>
<!-- 购物车 Body End -->

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
        <p>Copyright 2007-2013 ShopCZ Inc.,All rights reserved.<br/>d by ShopCZ 2.4 </p>
    </div>
</div>
<!-- Footer End -->

</body>
<script type="text/javascript">


</script>
</html>