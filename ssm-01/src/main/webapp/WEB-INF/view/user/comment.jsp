<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>评价管理</title>
	<link rel="stylesheet" href="css/base.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_manager.css" type="text/css" />
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/topNav.js" ></script>
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
				<div class="title"><h3>订单列表</h3></div>
				<table>
					<thead class="tab_title">
						<th style="width:80px;"><span>&nbsp;</span></th>
						<th style="width:320px;"><span>评价内容</span></th>
						<th style="width:180px;"><span>评价人</span></th>
						<th style="width:100px;"><span>宝贝信息</span></th>
						<th style="width:115px;"><span>操作</span></th>
					</thead>
					<tbody>

					<c:if test="${!empty commentList}">
						<c:forEach items="${commentList}" var="comment">
							<tr><td colspan="5">
								<table class="good" style="height:50px">
									<tbody>
									<tr>
										<td class="pingjia_pic"><span class="pingjia_type pingjia_type_1"></span></td>
										<td class="pingjia_title"><span><a href="">${comment.content}</a></span><br />${comment.createTime}</td>
										<td class="pingjia_danjia"><strong>${comment.account.username}</strong></td>
										<td class="pingjia_shuliang"><a href="">${comment.product.name}</a><br />${comment.product.price}元</td>
										<td class="pingjia_caozuo"><a href=""  data-id="${comment.id}" class="del-btn">删除</a></td>
									</tr>
									</tbody>
								</table>
							</td></tr>
						</c:forEach>

					</c:if>
					</tbody>
				</table>
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
	$(document).ready(function(){
		$(".del-btn").click(function(){
			var $this = $(this);
			if(confirm("确定删除?")){
				$.ajax({
					url:'deleteComment',
					type:'POST',
					data:{id:$this.attr('data-id')},
					dataType:'json',
					async:false,
					success:function(data){
						if(data == 'success'){
							alert("删除成功")
							window.location.reload();
						}else{
							alert("error");
						}
					}
				});
			}
		});
	});
</script>
</html>