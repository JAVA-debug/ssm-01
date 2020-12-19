<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>收藏中心</title>
	<link rel="stylesheet" href="/res/user/css/base.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_manager.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_list.css" type="text/css" />
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
				<div class="title"><h3>我的收藏</h3></div>
				
				<!-- 商品列表 -->
			<div class="shop_bd_list_content clearfix">
				<c:if test="${!empty fav}">

				<ul>
					<c:forEach items="${fav}" var="favs">
					<li>
						<dl>
							<dt><a href=""><img src="${favs.imageUrl}" /></a></dt>
							<dd class="title"><a href="">${favs.name}</a></dd>
							<dd class="content">
								<span class="goods_jiage">￥<strong>${favs.price}</strong></span>
							</dd>
						</dl>
					</li>
					</c:forEach>
				</ul>

				</c:if>
			</div>
			<div class="clear"></div>
			<div class="pagination"> 
				<ul><li><span>首页</span></li>
					<li><span>上一页</span></li>
					<li><span class="currentpage">1</span></li>
					<li><span>下一页</span></li>
					<li><span>末页</span></li>
				</ul> 
			</div>
			<!-- 商品列表 End -->

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
</body>
</html>