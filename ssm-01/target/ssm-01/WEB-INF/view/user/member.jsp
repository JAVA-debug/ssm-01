<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="css/base.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_manager.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/topNav.js"></script>
</head>
<body>
<!-- Header  -wll-2013/03/24 -->
<div class="shop_hd">
    <!-- Header TopNav -->
    <div class="shop_hd_topNav">
        <c:import url="module/top.jsp"></c:import>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <!-- Header TopNav End -->

    <!-- TopHeader Center -->
    <div class="shop_hd_header">
        <div class="shop_hd_header_logo"><h1 class="logo"><a href="${pageContext.request.contextPath}/"><img
                src="images/logo.png" alt="ShopCZ"/></a><span>ShopCZ</span></h1></div>
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
                <th style="width:410px;"><span>商品信息</span></th>
                <th style="width:100px;"><span>单价</span></th>
                <th style="width:80px;"><span>数量</span></th>
                <th style="width:100px;"><span>订单总价</span></th>
                <th style="width:115px;"><span>状态与操作</span></th>
                </thead>
                <tbody>
                <c:if test="${!empty order}">
                    <c:forEach items="${order}" var="orders">
                        <tr>
                            <td colspan="5">
                                <table class="good">
                                    <thead>
                                    <tr>
                                        <th colspan="6">
                                            <span><strong>订单号码：</strong>${orders.sn}</span>
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${item}" var="items" begin="1" end="${one}">
                                        <tr>
                                            <td class="dingdan_pic"><img src="${items.imageUrl}"/></td>
                                            <td class="dingdan_title">
                                                <span><a href="">${items.name}</a></span><br/>
                                            </td>
                                            <td class="dingdan_danjia">￥<strong>${items.price}</strong></td>
                                            <td class="dingdan_shuliang">${items.num}</td>
                                            <td class="dingdan_zongjia">￥<strong>${items.money}</strong><br/>(免运费)</td>
                                            <c:if test="${orders.status == 0}">
                                                <td class="digndan_caozuo"><a href="">等待买家付款</a></td>
                                            </c:if>
                                            <c:if test="${orders.status == 1}">
                                                <td class="digndan_caozuo"><a href="">已付款</a></td>
                                            </c:if>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>

                <%--						<tr><td colspan="5">--%>
                <%--							<table class="good">--%>
                <%--								<thead >--%>
                <%--									<tr><th colspan="6">--%>
                <%--										<span><strong>订单号码：</strong>2013032905510051</span>--%>
                <%--									</th></tr>--%>
                <%--								</thead>--%>
                <%--								<tbody>--%>
                <%--									<tr>--%>
                <%--										<td class="dingdan_pic"><img src="images/1dbc94fa0d60cba3990b89ccb01f82c2.jpg_tiny.jpg" /></td>--%>
                <%--										<td class="dingdan_title"><span><a href="">李宁 lining 专柜正品 足球鞋 女式运动鞋【演示数据】</a></span><br />鞋码:37 颜色:黑色 </td>--%>
                <%--										<td class="dingdan_danjia">￥<strong>25.00</strong></td>--%>
                <%--										<td class="dingdan_shuliang">1</td>--%>
                <%--										<td class="dingdan_zongjia">￥<strong>25.00</strong><br />(免运费)</td>--%>
                <%--										<td class="digndan_caozuo"><a href="">等待买家付款</a></td>--%>
                <%--									</tr>--%>
                <%--								</tbody>--%>
                <%--							</table>--%>
                <%--						</td></tr>--%>

                <%--						<tr><td colspan="5">--%>
                <%--							<table class="good">--%>
                <%--								<thead >--%>
                <%--									<tr><th colspan="6">--%>
                <%--										<span><strong>订单号码：</strong>2013032905510051</span>--%>
                <%--									</th></tr>--%>
                <%--								</thead>--%>
                <%--								<tbody>--%>
                <%--									<tr>--%>
                <%--										<td class="dingdan_pic"><img src="images/1dbc94fa0d60cba3990b89ccb01f82c2.jpg_tiny.jpg" /></td>--%>
                <%--										<td class="dingdan_title"><span><a href="">李宁 lining 专柜正品 足球鞋 女式运动鞋【演示数据】</a></span><br />鞋码:37 颜色:黑色 </td>--%>
                <%--										<td class="dingdan_danjia">￥<strong>25.00</strong></td>--%>
                <%--										<td class="dingdan_shuliang">1</td>--%>
                <%--										<td class="dingdan_zongjia">￥<strong>25.00</strong><br />(免运费)</td>--%>
                <%--										<td class="digndan_caozuo"><a href="">等待买家付款</a></td>--%>
                <%--									</tr>--%>
                <%--								</tbody>--%>
                <%--							</table>--%>
                <%--						</td></tr>--%>


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
</html>