<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>商品详细页面</title>
    <link rel="stylesheet" href="/res/user/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_list.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_goods.css" type="text/css"/>
    <script type="text/javascript" src="/res/user/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/res/user/js/topNav.js"></script>
    <script type="text/javascript" src="/res/user/js/shop_goods.js"></script>
</head>
<style>
    .comment_items .items_right {
        width: 615px;
        float: left;
    }

    .comment_items .items_left_pic {
        float: right;
        width: 80px;
        padding: 15px;
    }

    .comment_items .items_left_pic span {
        margin-top: 15px;
    }

    .comment_items .describe_detail {
        line-height: 22px;
        position: relative;
        padding: 15px 15px 2px;
        clear: both;
    }

    .comment_items .items_right .starline {
        color: #969696;
        padding-top: 15px;
        padding-left: 15px;
    }

    .name-info{
        padding: 20px 6px 12px 0;
    }
    .name-info h1{
        line-height: 24px;
        max-height: 48px;
        overflow: hidden;
        color: #323232;
        font-size: 18px;
        margin-left: 80px;
    }

    .name-info h2{
        padding-top: 6px;
        max-height: 96px;
        overflow: hidden;
        font-size: 16px;
        line-height: 24px;
    }
    .messbox-info .t1{
        display: inline-block;
        padding-right: 25px;
    }
    .price-info{
        padding: 0 0 0 10px;
        margin: 25px 0 0 -10px;
        line-height: 24px;
        position: relative;
        width: 630px;
        z-index: 1;
    }
    .price-info .pc .price-d{
        font-size: 26px;
        color: #e52222;
    }
    .price-info .pc .price-d .yen{
        font-size: 14px;
    }
</style>
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

<!-- Header End -->

<!-- Goods Body -->
<div class="shop_goods_bd clear">

    <!-- 商品展示 -->
    <div class="shop_goods_show">
        <div class="shop_goods_show_left">
            <!-- 京东商品展示 -->
            <link rel="stylesheet" href="/res/user/css/shop_goodPic.css" type="text/css"/>
            <script type="text/javascript" src="/res/user/js/shop_goodPic_base.js"></script>
            <script type="text/javascript" src="/res/user/js/lib.js"></script>
            <script type="text/javascript" src="/res/user/js/163css.js"></script>
            <div id="preview">
                <div class=jqzoom id="spec-n1" onClick="window.open('/')"><IMG height="350" src="${goodInfo.imageMid }"
                                                                               jqimg="${goodInfo.imageMid }"
                                                                               width="350">
                </div>
                <div id="spec-n5">
                    <div class=control id="spec-left">
                        <img src="/res/user/images/left.gif"/>
                    </div>
                    <div id="spec-list">
                        <ul class="list-h">
                            <li><img src="${goodInfo.imageMid }"></li>
                        </ul>
                    </div>
                    <div class=control id="spec-right">
                        <img src="/res/user/images/right.gif"/>
                    </div>

                </div>
            </div>

            <SCRIPT type=text/javascript>
                $(function () {
                    $(".jqzoom").jqueryzoom({
                        xzoom: 400,
                        yzoom: 400,
                        offset: 10,
                        position: "right",
                        preload: 1,
                        lens: 1
                    });
                    $("#spec-list").jdMarquee({
                        deriction: "left",
                        width: 350,
                        height: 56,
                        step: 2,
                        speed: 4,
                        delay: 10,
                        control: true,
                        _front: "#spec-right",
                        _back: "#spec-left"
                    });
                    $("#spec-list img").bind("mouseover", function () {
                        var src = $(this).attr("src");
                        $("#spec-n1 img").eq(0).attr({
                            src: src.replace("\/n5\/", "\/n1\/"),
                            jqimg: src.replace("\/n5\/", "\/n0\/")
                        });
                        $(this).css({
                            "border": "2px solid #ff6600",
                            "padding": "1px"
                        });
                    }).bind("mouseout", function () {
                        $(this).css({
                            "border": "1px solid #ccc",
                            "padding": "2px"
                        });
                    });
                })
            </SCRIPT>
            <!-- 京东商品展示 End -->

        </div>
        <div class="shop_goods_show_right">
            <c:if test="${!empty goodInfo}">
                <div class="name-info">
                    <h1>${goodInfo.name}</h1>
                    <h2>${goodInfo.title}</h2>
                </div>
                <div class="messbox-info">
                    <span class="t1">作者：${goodInfo.author}</span>

                    <span class="t1">出版社：${goodInfo.publisher}</span>
                    <span class="t1">累计售出：${goodInfo.sellNum}件</span>
                </div>
                <div class="price-info">
                    <div class="pc" style="width: 206px;height: 64px">
                        <div class="price-d">
                            <p><span class="yen">￥</span>${goodInfo.price}</p>

                        </div>
                    </div>
                </div>
                <ul>
                    <li class="goods_num">
                        <label>购买数量：</label>
                        <span><a class="good_num_jian" id="good_num_jian" href="javascript:void(0);"></a>
                                <input type="text" value="1" id="good_nums" class="good_nums"/>
                                <a href="javascript:void(0);" id="good_num_jia" class="good_num_jia"
                                   stock="${goodInfo.stock}"></a>
                                (库存${goodInfo.stock}件)
                            </span>
                    </li>
                    <li style="padding:20px 0;">
                        <label>&nbsp;</label>
                        <span><a href="javascript:void(0);" id="add-cart"
                                 class="goods_sub goods_sub_gou">加入购物车</a></span>
                        <span><a href="javascript:void(0);" id="add-fav">加入收藏</a></span>
                            <%--                            <button type="submit" value="加入购物车">加入购物车</button>--%>
                    </li>
                </ul>
            </c:if>
        </div>
    </div>
    <!-- 商品展示 End -->

    <div class="clear mt15"></div>

    <!-- Goods Left -->
    <div class="shop_bd_list_left clearfix">
        <!-- 热卖推荐商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">浏览此商品的顾客也同时浏览</div>
            <div class="contents clearfix">
                <ul class="clearfix">
                    <c:forEach items="${tuijian}" var="tj">
                        <li class="clearfix">
                            <div class="goods_name"><a href="">${tj.name}</a></div>
                            <div class="goods_pic"><span class="goods_price">¥ ${tj.price} </span><a href=""><img
                                    src="${tj.imageUrl}"/></a></div>
                            <div class="goods_xiaoliang">
                                <span class="goods_xiaoliang_link"><a href="/good?bookid=${tj.id}">去看看</a></span>
                                <span class="goods_xiaoliang_nums">已销售<strong>${tj.sellNum}</strong>笔</span>
                            </div>
                        </li>
                    </c:forEach>


                </ul>
            </div>
        </div>
        <!-- 热卖推荐商品 -->
        <div class="clear"></div>

    </div>
    <!-- Goods Left End -->

    <!-- 商品详情 -->
    <script type="text/javascript" src="/res/user/js/shop_goods_tab.js"></script>
    <div class="shop_goods_bd_xiangqing clearfix">
        <div class="shop_goods_bd_xiangqing_tab">
            <ul>
                <li id="xiangqing_tab_1" onmouseover="shop_goods_easytabs('1', '1');"
                    onfocus="shop_goods_easytabs('1', '1');" onclick="return false;"><a href="#"><span>商品详情</span></a>
                </li>
                <li id="xiangqing_tab_2" onmouseover="shop_goods_easytabs('1', '2');"
                    onfocus="shop_goods_easytabs('1', '2');" onclick="return false;"><a
                        href="#"><span>商品评论</span><i>(${goodInfo.commentNum})</i></a></li>
                <input type="hidden" id="test" value="${goodInfo.id}">

            </ul>
        </div>
        <div class="shop_goods_bd_xiangqing_content clearfix">
            <div id="xiangqing_content_1" class="xiangqing_contents clearfix">
                <img src="${goodInfo.imageBig}" style="width: 770px">
            </div>
            <div id="xiangqing_content_2" class="xiangqing_contents clearfix">

            </div>
        </div>
    </div>
    <!-- 商品详情 End -->

</div>
<!-- Goods Body End -->

<!-- Footer - wll - 2013/3/24 -->
<c:import url="module/footer.jsp"></c:import>

<!-- Footer End -->

</body>
<script>

    var test = document.getElementById("test");
    var value = test.value;
    console.log(value)
    $(document).ready(
        $.get("/comment", {"bookid": value}, function (data) {
            if (data.length == 0) {
                $("#xiangqing_content_2").html("暂时还没有评论")
            } else {
                var con = "";
                for (let i = 0; i < data.length; i++) {
                    con += '<div class="comment_items clearfix">'
                    con += '<div class="items_right"><div class="describe_detail"><span>' + data[i].content + '</span></div>'
                    con += '<div class="starline clearfix"><span>' + data[i].createTime + '</span></div></div>'
                    con += '<div class="items_left_pic"><a href="javascript:"><img  src="http://img7x1.ddimg.cn/imghead/6/23/6502092228231-1_o.png"></a>'
                    con += '<span>' + data[i].username + '</span></div></div><hr>'
                }
                $("#xiangqing_content_2").html(con)
            }
            console.log(data)

        }),
        $("#add-cart").click(function () {
            var num = $("#good_nums").val();
            if (num == '' || parseInt(num) < 1) {
                alert("请选择正确数量！");
                return;
            }

            $.ajax({
                url: 'add',
                data: {num: num, productId: ${goodInfo.id}},
                dataType: 'json',
                async: false,
                success: function (data) {
                    if (data.code == 1) {
                        alert(data.msg)
                    } else {
                        alert(data.msg)
                    }
                }
            })

            <%--$.ajax("add",{num:num,productId:${goodInfo.id}},"json",function (data) {--%>
            <%--    if (data.code == 1){--%>
            <%--        alert(data.msg)--%>
            <%--    }else {--%>
            <%--        alert(data.msg)--%>
            <%--    }--%>
            <%--})--%>
        }),
        $("#add-fav").click(function () {
            $.ajax({
                url: "addFav",
                data: {productId: value},
                dataType: 'json',
                async: false,
                success: function (data) {
                    if (data.code == 9) {
                        alert(data.msg)
                    } else {
                        alert(data.msg)
                    }
                }
            })
        })
    )


</script>
</html>