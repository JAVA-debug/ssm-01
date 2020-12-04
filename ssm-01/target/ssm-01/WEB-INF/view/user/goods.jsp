<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>商品详细页面</title>
    <link rel="stylesheet" href="css/base.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_list.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_goods.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/topNav.js"></script>
    <script type="text/javascript" src="js/shop_goods.js"></script>
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
    <div class="shop_hd_menu">
        <!-- 所有商品菜单 -->

        <c:import url="module/shopMenu.jsp"></c:import>
        <!-- 所有商品菜单 END -->

    </div>
    <!-- Header Menu End -->

</div>
<div class="clear"></div>
<!-- 面包屑 注意首页没有 -->
<div class="shop_hd_breadcrumb">
    <strong>当前位置：</strong>
    <span>
			<a href="">首页</a>&nbsp;›&nbsp;
			<a href="">商品分类</a>&nbsp;›&nbsp;
			<a href="">男装女装</a>&nbsp;›&nbsp;
			<a href="">男装</a>
		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->

<!-- Goods Body -->
<div class="shop_goods_bd clear">

    <!-- 商品展示 -->
    <div class="shop_goods_show">
        <div class="shop_goods_show_left">
            <!-- 京东商品展示 -->
            <link rel="stylesheet" href="css/shop_goodPic.css" type="text/css"/>
            <script type="text/javascript" src="js/shop_goodPic_base.js"></script>
            <script type="text/javascript" src="js/lib.js"></script>
            <script type="text/javascript" src="js/163css.js"></script>
            <div id="preview">
                <div class=jqzoom id="spec-n1" onClick="window.open('/')"><IMG height="350" src="images/img04.jpg"
                                                                               jqimg="images/img04.jpg" width="350">
                </div>
                <div id="spec-n5">
                    <div class=control id="spec-left">
                        <img src="images/left.gif"/>
                    </div>
                    <div id="spec-list">
                        <ul class="list-h">

                            <li><img src="images/img01.jpg"></li>
                            <li><img src="images/img02.jpg"></li>
                            <li><img src="images/img03.jpg"></li>
                            <li><img src="images/img04.jpg"></li>
                            <li><img src="images/img01.jpg"></li>
                            <li><img src="images/img02.jpg"></li>
                            <li><img src="images/img03.jpg"></li>
                            <li><img src="images/img04.jpg"></li>
                            <li><img src="images/img01.jpg"></li>
                            <li><img src="images/img02.jpg"></li>
                            <li><img src="images/img03.jpg"></li>
                            <li><img src="images/img04.jpg"></li>
                        </ul>
                    </div>
                    <div class=control id="spec-right">
                        <img src="images/right.gif"/>
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

                <ul>
                    <c:if test="${!empty goodInfo}">
                        <li>
                            <strong style="font-size:14px; font-weight:bold;">${goodInfo.name}</strong>
                        </li>
                        <li>
                            <label>价格：</label>
                            <span><strong>${goodInfo.price}</strong>元</span>
                        </li>
                        <li>
                            <label>运费：</label>
                            <span>卖家承担运费</span>
                        </li>
                        <li>
                            <label>累计售出：</label>
                            <span>${goodInfo.sellNum}件</span>
                        </li>
                        <li>
                            <label>评价：</label>
                            <span>${goodInfo.commentNum}条评论</span>
                        </li>
                        <li class="goods_num">
                            <label>购买数量：</label>
                            <span><a class="good_num_jian" id="good_num_jian" href="javascript:void(0);"></a>
                                <input type="text" value="1" id="good_nums" class="good_nums"/>
                                <a href="javascript:void(0);" id="good_num_jia" class="good_num_jia" stock="${goodInfo.stock}"></a>
                                (库存${goodInfo.stock}件)
                            </span>
                        </li>
                        <li style="padding:20px 0;">
                            <label>&nbsp;</label>
                            <span><a href="javascript:void(0);" id="add-cart" class="goods_sub goods_sub_gou">加入购物车</a></span>
                            <span><a href="javascript:void(0);" id="add-fav">加入收藏</a></span>
<%--                            <button type="submit" value="加入购物车">加入购物车</button>--%>
                        </li>
                    </c:if>
                </ul>

        </div>
    </div>
    <!-- 商品展示 End -->

    <div class="clear mt15"></div>
    <!-- Goods Left -->
    <div class="shop_bd_list_left clearfix">
        <!-- 左边商品分类 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">商品分类</div>
            <div class="contents clearfix">
                <dl class="shop_bd_list_type_links clearfix">
                    <dt><strong>女装</strong></dt>
                    <dd>
                        <span><a href="">风衣</a></span>
                        <span><a href="">长袖连衣裙</a></span>
                        <span><a href="">毛呢连衣裙</a></span>
                        <span><a href="">半身裙</a></span>
                        <span><a href="">小脚裤</a></span>
                        <span><a href="">加绒打底裤</a></span>
                        <span><a href="">牛仔裤</a></span>
                        <span><a href="">打底衫</a></span>
                        <span><a href="">情侣装</a></span>
                        <span><a href="">棉衣</a></span>
                        <span><a href="">毛呢大衣</a></span>
                        <span><a href="">毛呢短裤</a></span>
                    </dd>
                </dl>
            </div>
        </div>
        <!-- 左边商品分类 End -->

        <!-- 热卖推荐商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">热卖推荐商品</div>
            <div class="contents clearfix">
                <ul class="clearfix">

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img
                                src="images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg"/></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img
                                src="images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg"/></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img
                                src="images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg"/></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
        <!-- 热卖推荐商品 -->
        <div class="clear"></div>

        <!-- 浏览过的商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">浏览过的商品</div>
            <div class="contents clearfix">
                <ul class="clearfix">

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img
                                src="images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg"/></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img
                                src="images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg"/></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                    <li class="clearfix">
                        <div class="goods_name"><a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a></div>
                        <div class="goods_pic"><span class="goods_price">¥ 279.00 </span><a href=""><img
                                src="images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg"/></a></div>
                        <div class="goods_xiaoliang">
                            <span class="goods_xiaoliang_link"><a href="">去看看</a></span>
                            <span class="goods_xiaoliang_nums">已销售<strong>99</strong>笔</span>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
        <!-- 浏览过的商品 -->

    </div>
    <!-- Goods Left End -->

    <!-- 商品详情 -->
    <script type="text/javascript" src="js/shop_goods_tab.js"></script>
    <div class="shop_goods_bd_xiangqing clearfix">
        <div class="shop_goods_bd_xiangqing_tab">
            <ul>
                <li id="xiangqing_tab_1" onmouseover="shop_goods_easytabs('1', '1');"
                    onfocus="shop_goods_easytabs('1', '1');" onclick="return false;"><a href="#"><span>商品详情</span></a>
                </li>
                <li id="xiangqing_tab_2" onmouseover="shop_goods_easytabs('1', '2');"
                    onfocus="shop_goods_easytabs('1', '2');" onclick="return false;"><a href="#"><span>商品评论</span></a></li>
                <input type="hidden" id="test" value="${goodInfo.id}">

            </ul>
        </div>
        <div class="shop_goods_bd_xiangqing_content clearfix">
            <div id="xiangqing_content_1" class="xiangqing_contents clearfix">
                <img src="${goodInfo.imageBig}">
            </div>
            <div id="xiangqing_content_2" class="xiangqing_contents clearfix">

            </div>
        </div>
    </div>
    <!-- 商品详情 End -->

</div>
<!-- Goods Body End -->

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
            if (num == '' || parseInt(num) < 1){
                alert("请选择正确数量！");
                return;
            }

            $.ajax({
                url:'add',
                data:{num:num,productId: ${goodInfo.id}},
                dataType:'json',
                async:false,
                success:function (data) {
                    if (data.code == 1){
                        alert(data.msg)
                    }else {
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
                url:"addFav",
                data:{productId:value},
                dataType: 'json',
                async:false,
                success:function (data) {
                    if (data.code == 9){
                        alert(data.msg)
                    }else {
                        alert(data.msg)
                    }
                }
            })
        })
    )


</script>
</html>