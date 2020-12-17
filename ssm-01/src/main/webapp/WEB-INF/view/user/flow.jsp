<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>购物车页面</title>
	<link rel="stylesheet" href="css/base.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="css/shop_gouwuche.css" type="text/css" />
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/topNav.js" ></script>
<%--    <script type="text/javascript" src="js/jquery.goodnums.js" ></script>--%>
<%--    <script type="text/javascript" src="js/shop_gouwuche.js" ></script>--%>
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
			<a href="">我的购物车</a>
		</span>
	</div>
	<div class="clear"></div>
	<!-- 面包屑 End -->

	<!-- Header End -->
	
	<!-- 购物车 Body -->
	<div class="shop_gwc_bd clearfix">
		<!-- 在具体实现的时候，根据情况选择其中一种情况 -->
		<c:if test="${empty accountCart}">
		<!-- 购物车为空 -->
			<div class="empty_cart mb10">
				<div class="message">
					<p>购物车内暂时没有商品，您可以<a href="/">去首页</a>挑选喜欢的商品</p>
				</div>
			</div>
		<!-- 购物车为空 end-->
		</c:if>
		<c:if test="${!empty accountCart}">
		<!-- 购物车有商品 -->
		<div class="shop_gwc_bd_contents clearfix">
			<!-- 购物流程导航 -->
			<div class="shop_gwc_bd_contents_lc clearfix">
				<ul>
					<li class="step_a hover_a">确认购物清单</li>
					<li class="step_b">确认收货人资料及送货方式</li>
					<li class="step_c">购买完成</li>
				</ul>
			</div>
			<!-- 购物流程导航 End -->

			<!-- 购物车列表 -->
			<table>
				<thead>
					<tr>
						<th colspan="2"><span>商品</span></th>
						<th><span>单价(元)</span></th>
						<th><span>数量</span></th>
						<th><span>小计</span></th>
						<th><span>操作</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${accountCart}" var="accountCartList">
					<tr>
						<td class="gwc_list_pic"><a href=""><img src="${accountCartList.imageUrl}" /></a></td>
						<td class="gwc_list_title" width="490px"><a href="">${accountCartList.name} </a></td>
						<td class="gwc_list_danjia"><span>￥<strong id="danjia_001">${accountCartList.price}</strong></span></td>
						<td class="gwc_list_shuliang">
							<span>
								<a class="good_num_jian" cid="${accountCartList.id}" price="${accountCartList.price}" ty="-" valId="goods_${accountCartList.productId}" href="javascript:void(0);">-</a>
								<input style="width: 30px;text-align: center" type="text" value="${accountCartList.num}" readonly="readonly" id="goods_${accountCartList.productId}" class="good_nums" />
								<a href="javascript:void(0);" cid="${accountCartList.id}" price="${accountCartList.price}" ty="+" class="good_num_jia" valId="goods_${accountCartList.productId}">+</a>
							</span>
						</td>
						<td class="gwc_list_xiaoji"><span>￥<strong class="good_xiaojis">${accountCartList.money}</strong></span></td>
						<td class="gwc_list_caozuo"><a href="javascript:void(0);" class="shop_good_delete" cid="${accountCartList.id}" id="delCartItem">删除</a></td>
					</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<div class="gwc_foot_zongjia">商品总价(不含运费)<span>￥<strong id="good_zongjia">0.0</strong></span></div>
							<div class="clear"></div>
							<div class="gwc_foot_links">
								<a href="${pageContext.request.contextPath}/" class="go">继续购物</a>
								<a href="/flow2" class="op">确认并填写订单</a>
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
			<!-- 购物车列表 End -->

		</div>
		<!-- 购物车有商品 end -->
		</c:if>
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
                <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
            </div>
        </div>
	<!-- Footer End -->

</body>
<script>
	$(document).ready(function () {

		$("#delCartItem").click(function(){
			var cid = $(this).attr('cid');
			var $this = $(this);
			console.log(cid)
			if(confirm('确认删除该商品吗？')){
				$.ajax({
					url:'delCartItem',
					type:'POST',
					data:{cartId:cid},
					dataType:'json',
					success:function(data){
						if(data.code == 11){
							//alert('添加成功!');
							//window.location.href = 'index';
							$this.closest('tr').hide('1000').remove();
							alert(data.msg)
							calTotalMoney();
							window.location.reload();
						}else{
							alert("删除失败，请刷新页面");
						}
					}
				});
			}
		});
		$(".good_num_jian").click(function () {
			var num = parseInt($(this).next('input').val());
			num = num - 1;
			if (num < 1){
				return;
			}
			if(!updateNum($(this).attr('cid'),num))return;
			$(this).next('input').val(num);
			var money = parseFloat($(this).attr('price') * num).toFixed(2);
			$(this).closest(".gwc_list_shuliang").next(".gwc_list_xiaoji").find(".good_xiaojis").text(money);
			calTotalMoney();
		});
		$(".good_num_jia").click(function () {
			var num = parseInt($(this).prev('input').val());
			num = num + 1;
			if (num > 10){
				num = 10
				alert("限制10本")
			}
			if(!updateNum($(this).attr('cid'),num))return;
			$(this).prev('input').val(num);
			var money = parseFloat($(this).attr('price') * num).toFixed(2);
			$(this).closest(".gwc_list_shuliang").next(".gwc_list_xiaoji").find(".good_xiaojis").text(money);
			calTotalMoney()
		});


		calTotalMoney();
	});
	function calTotalMoney() {
		var totalMoney = 0;
		$(".good_xiaojis").each(function () {
			var money = parseFloat($(this).text());
			totalMoney += money
		});
		$("#good_zongjia").text(totalMoney);
	}
	function updateNum(cartId,num){
		var ret = false;
		$.ajax({
			url:'update_num',
			type:'POST',
			data:{num:num,cartId:cartId},
			dataType:'json',
			async:false,//设置为同步
			success:function(data){
				if(data.code == 6){
					//alert('添加成功!');
					//window.location.href = 'index';
					ret = true;
				}else{
					alert(data.msg);
				}
			}
		});
		return ret;
	}

</script>
</html>