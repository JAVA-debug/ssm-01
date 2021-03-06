<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="/res/user/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_manager.css" type="text/css"/>
    <script type="text/javascript" src="/res/user/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/res/user/js/topNav.js"></script>
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
                                <table class="good" style="font-size: 12px">
                                    <thead>
                                    <tr>
                                        <th colspan="6">
                                            <span><strong>订单号码：</strong>${orders.sn}</span>
                                        </th>
                                            <c:if test="${orders.status == 0}">
                                                <span class="digndan_caozuo">待发货</span>
                                            </c:if>
                                            <c:if test="${orders.status == 1}">
                                                <span class="digndan_caozuo">已发货</span>
                                                <a href="javascript:void(0)" data-id="${orders.id}" class="finish-order-btn">[确认收货]</a>
                                            </c:if>
                                            <c:if test="${orders.status == 2}">
                                                <span class="digndan_caozuo">已完成</span>
                                            </c:if>
                                            <c:if test="${orders.status == 3}">
                                                <span class="digndan_caozuo">未支付订单,<a href="/showPay?orderId=${orders.id}">去支付</a></span>
                                            </c:if>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${orders.orderItems}" var="orderItem">
                                        <tr>
                                            <td class="dingdan_pic"><img src="${orderItem.imageUrl}"/></td>
                                            <td class="dingdan_title">
                                                <span><a href="">${orderItem.name}</a></span><br/>
                                            </td>
                                            <td class="dingdan_danjia">￥<strong>${orderItem.price}</strong></td>
                                            <td class="dingdan_shuliang">${orderItem.num}</td>
                                            <td class="dingdan_zongjia">￥<strong>${orderItem.money}</strong><br/>(免运费)</td>
                                            <td class="digndan_caozuo">

                                                <c:if test="${orders.status == 2 }">
                                                    <a href="/toAddComment?pid=${orderItem.productId}">评价</a>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
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
<c:import url="module/footer.jsp"></c:import>

<!-- Footer End -->
</body>
<script>
    $(document).ready(function(){
        $(".finish-order-btn").click(function(){
            var $this = $(this);
            if(confirm("确定收货?")){
                $.ajax({
                    url:'finish_order',
                    type:'POST',
                    data:{id:$this.attr('data-id')},
                    dataType:'json',
                    async:false,
                    success:function(data){
                        if(data.code == 1){
                            alert(data.msg);
                            window.location.reload();
                        }else{
                            alert(data.msg);
                        }
                    }
                });
            }
        });
    });

</script>
</html>