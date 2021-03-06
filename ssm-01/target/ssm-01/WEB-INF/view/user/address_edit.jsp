user/<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>编辑收货地址</title>
	<link rel="stylesheet" href="/res/user/css/base.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_manager.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_form.css" type="text/css" />
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
				<div class="title"><h3>编辑收货地址</h3></div>
				<div class="clear"></div>
				<dic class="shop_home_form">
					<form action="updateAddress" class="shop_form" method="post">
						<ul>
							<c:if test="${!empty byId}">
							<li><label><span>*</span>收货人姓名：</label><input type="text" class="form-text" value="${byId.name}" name="name"/></li>
							<li><label><span>*</span>所在地：</label></li>
							<li><label><span>*</span>详细地址</label><input type="text" class="form-text" value="${byId.address}" name="address"/></li>
							<li><label>邮编：</label><input type="text" class="form-text" value="${byId.postalCode}" name="postalCode"/></li>
							<li><label>手机号：</label><input type="text" class="form-text" value="${byId.phone}" name="phone"/></li>
								<input type="hidden" value="${byId.id}" name="id">
							<li class="bn"><label>&nbsp;</label><input type="submit" class="form-submit" value="保存修改" /></li>
							</c:if>
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
</html>