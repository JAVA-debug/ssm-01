<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>购物车页面</title>
    <link rel="stylesheet" href="/res/user/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_gouwuche.css" type="text/css"/>
    <script type="text/javascript" src="/res/user/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/res/user/js/topNav.js"></script>


    <style type="text/css">
        .shop_bd_shdz_title {
            width: 1000px;
            margin-top: 10px;
            height: 50px;
            line-height: 50px;
            overflow: hidden;
            background-color: #F8F8F8;
        }

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

        .shop_bd_shdz_lists {
            width: 1000px;
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

        .shop_bd_shdz {
            width: 1000px;
            margin: 10px auto 0;
        }

        .shop_bd_shdz_new {
            border: 1px solid #ccc;
            width: 998px;
        }

        .shop_bd_shdz_new div.title {
            width: 990px;
            padding-left: 8px;
            line-height: 35px;
            height: 35px;
            border-bottom: 1px solid #ccc;
            background-color: #F2F2F2;
            font-color: #656565;
            font-weight: bold;
            font-size: 14px;
        }

        .shdz_new_form {
            width: 980px;
            padding: 9px;
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
    <div class="shop_gwc_bd_contents clearfix">

        <!-- 购物流程导航 -->
        <div class="shop_gwc_bd_contents_lc clearfix">
            <ul>
                <li class="step_a">确认购物清单</li>
                <li class="step_b hover_b">确认收货人资料及送货方式</li>
                <li class="step_c">购买完成</li>
            </ul>
        </div>
        <!-- 购物流程导航 End -->
        <div class="clear"></div>
        <!-- 收货地址 title -->
        <div class="shop_bd_shdz_title">
            <h3>收货人地址</h3>
            <p><a href="${pageContext.request.contextPath}/address">管理收货地址</a></p>
        </div>
        <div class="clear"></div>
        <!-- 收货人地址 Title End -->
        <div class="shop_bd_shdz clearfix">
            <div class="shop_bd_shdz_lists clearfix">
                <c:if test="${!empty address}">
                        <ul>
                    <c:forEach items="${address}" var="addressList">
                            <li>
                                <label>寄送至：<span><input type="radio" name="address"
                                                        value="${addressList.id}"/></span></label><em>${addressList.address}</em><em>${addressList.name}(收)</em><em>${addressList.phone}</em>
                            </li>
                    </c:forEach>
                        </ul>
                </c:if>
            </div>

        </div>
        <div class="clear"></div>
        <!-- 购物车列表 -->
        <div class="shop_bd_shdz_title">
            <h3>确认购物清单</h3>
        </div>
        <div class="clear"></div>
        <table>
            <thead>
            <tr>
                <th colspan="2"><span>商品</span></th>
                <th><span>单价(元)</span></th>
                <th><span>数量</span></th>
                <th><span>小计</span></th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${accountCart}" var="accountCartList">
                <tr>
                    <td class="gwc_list_pic">
                        <a href=""><img src="${accountCartList.imageUrl}"/></a>
                    </td>
                    <td class="gwc_list_title">
                        <a href="">${accountCartList.name}</a>
                    </td>
                    <td class="gwc_list_danjia">
                        <span>￥<strong id="danjia_001">${accountCartList.price}</strong></span>
                    </td>
                    <td class="gwc_list_shuliang">
                        <span value="${accountCartList.num}" readonly="readonly" id="goods_${accountCartList.productId}"
                              class="good_nums">${accountCartList.num}</span>
                    </td>
                    <td class="gwc_list_xiaoji">
                        <span>￥<strong id="xiaoji_001" class="good_xiaojis">${accountCartList.money}</strong></span>
                    </td>
                </tr>
            </c:forEach>


            </tbody>
            <tfoot>
            <tr>
                <td colspan="6">
                    <div class="gwc_foot_zongjia">商品总价(不含运费)<span>￥<strong id="good_zongjia">12750.00</strong></span>
                    </div>
                    <div class="clear"></div>
                    <div class="gwc_foot_links">
                        <a href="" class="go">返回上一步</a>
                        <a href="javascript:void(0)" class="op" id="submit-order-btn">确认下单</a>
                    </div>
                </td>
            </tr>
            </tfoot>
        </table>
        <!-- 购物车列表 End -->

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

    $(document).ready(function () {
        $("#submit-order-btn").click(function () {
            var addressId = $('input:radio:checked').val();
            console.log(addressId)
            if (addressId == '' || addressId == 'undefined' || addressId == null) {
                alert('请选择收货地址');
                return;
            }
            $.ajax({
                url: 'flow3',
                data: {addressId: addressId},
                dataType: 'json',
                async: false,
                success: function (data) {
                    if (data.code == 8) {
                        alert("下单成功");
                        // alert(window.location.href)
                        console.log(data.msg)
                        <%--window.location.href = ${pageContext.request.contextPath}+"/success?orderId"+data.msg;--%>
                        window.location.href = "http://localhost:8080/success?orderId="+data.msg
                    } else {
                        alert(data.msg);
                    }
                }
            });
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
</script>
</html>