<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>错误提示页面</title>
	<link rel="stylesheet" href="/res/user/css/base.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="/res/user/css/shop_list.css" type="text/css" />

	<script type="text/javascript" src="/res/user/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/res/user/js/topNav.js" ></script>
    <style type="text/css">
		.shop_bd_error{width:1000px; height:50px; padding:100px 0; margin:10px auto 0; border:1px solid #ccc;}
		.shop_bd_error p{height:45px; line-height:45px; width:980px; text-align: center; font-size:14px; font-weight: bold; color:#55556F;}
		.shop_bd_error p span{display:inline-block;width:45px; height:45px; line-height:45px; overflow:hidden; text-indent: 99em; vertical-align:top; padding-right:10px; background:url('images/error.jpg') no-repeat left top;}
    </style>
</head <body>
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
	

	<!-- Header End -->

	<!-- Body -->
	<div class="shop_bd_error">
		<p><span>出错啦！</span>出错啦！</p>
	</div>
	<!-- Body End -->

	<!-- Footer - wll - 2013/3/24 -->
	<c:import url="module/footer.jsp"></c:import>

	<!-- Footer End -->
</body>
</html>