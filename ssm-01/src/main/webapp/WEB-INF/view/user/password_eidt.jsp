<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>修改密码</title>
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
				<div class="title"><h3>修改密码</h3></div>
				<div class="clear"></div>
				<dic class="shop_home_form">
					<form action="updatePwd" class="shop_form" method="post" onsubmit="return test()">
						<ul>
							<li class="bn"><label>原密码：</label><input type="password" class="truename form-text" id="laterPwd" name="laterPwd"/></li>
							<li class="bn"><label>新密码：</label><input type="password" class="truename form-text" id="newPwd" name="newPwd"/></li>
							<li class="bn"><label>重复新密码：</label><input type="password" class="truename form-text" id="secPwd"/></li>
							<p id="res" STYLE="color: red">${error}</p>
							<li class="bn"><label>&nbsp;</label><input type="submit" class="form-submit" value="保存修改" /></li>
						</ul>
					</form>
				</div>
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
<script>
	function test() {
		console.log($("#newPwd").val())
		if ($("#newPwd").val() != $("#secPwd").val()){
			$("#res").html("两个密码不一致")
			return false;
		}
	}


</script>
</html>