<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>商品列表页</title>
    <link rel="stylesheet" href="/res/user/css/base.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="/res/user/css/shop_list.css" type="text/css"/>
    <script type="text/javascript" src="/res/user/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="/res/user/js/topNav.js"></script>
    <script type="text/javascript" src="/res/user/js/shop_list.js"></script>
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
			<a href="">商品分类</a>&nbsp;›&nbsp;
			<a href="">男装女装</a>&nbsp;›&nbsp;
			<a href="">男装</a>
		</span>
</div>
<div class="clear"></div>
<!-- 面包屑 End -->

<!-- Header End -->


<!-- List Body 2013/03/27 -->
<div class="shop_bd clearfix">
    <div class="shop_bd_list_left clearfix">

        <!-- 热卖推荐商品 -->
        <div class="shop_bd_list_bk clearfix">
            <div class="title">热卖推荐商品</div>
            <div class="contents clearfix">
                <ul class="clearfix">
                    <c:forEach items="${productTuijian}" var="tuijian">
                        <li class="clearfix">
                            <div class="goods_name"><a href="">${tuijian.name}</a></div>
                            <div class="goods_pic"><span class="goods_price">¥ ${tuijian.price}</span><a href=""><img
                                    src="${tuijian.imageUrl}"/></a></div>
                            <div class="goods_xiaoliang">
                                <span class="goods_xiaoliang_link"><a href="/good?bookid=${tuijian.id}">去看看</a></span>
                                <span class="goods_xiaoliang_nums">已销售<strong>${tuijian.sellNum}</strong>笔</span>
                            </div>
                        </li>
                    </c:forEach>


                </ul>
            </div>
        </div>
        <!-- 热卖推荐商品 -->
        <div class="clear"></div>

    </div>

    <div class="shop_bd_list_right clearfix">

        <!-- 显示菜单 -->
        <div class="sort-bar">
<%--            <div class="bar-l">--%>
<%--                <!-- 查看方式S -->--%>
<%--                <!-- 查看方式E -->--%>
<%--                <!-- 排序方式S -->--%>
<%--                <ul class="array">--%>
<%--                    <li class="selected"><a title="默认排序" onclick="javascript:dropParam(['key','order'],'','array');"--%>
<%--                                            class="nobg" href="javascript:void(0)">默认</a></li>--%>
<%--                    <li><a title="点击按销量从高到低排序"--%>
<%--                           onclick="javascript:replaceParam(['key','order'],['sales','desc'],'array');"--%>
<%--                           href="javascript:void(0)">销量</a></li>--%>
<%--                    <li><a title="点击按人气从高到低排序"--%>
<%--                           onclick="javascript:replaceParam(['key','order'],['click','desc'],'array');"--%>
<%--                           href="javascript:void(0)">人气</a></li>--%>
<%--                    <li><a title="点击按信用从高到低排序"--%>
<%--                           onclick="javascript:replaceParam(['key','order'],['credit','desc'],'array');"--%>
<%--                           href="javascript:void(0)">信用</a></li>--%>
<%--                    <li><a title="点击按价格从高到低排序"--%>
<%--                           onclick="javascript:replaceParam(['key','order'],['price','desc'],'array');"--%>
<%--                           href="javascript:void(0)">价格</a></li>--%>
<%--                </ul>--%>
<%--                <!-- 排序方式E -->--%>
<%--                <!-- 价格段S -->--%>
<%--                <div class="prices"><em>¥</em>--%>
<%--                    <input type="text" value="" class="w30">--%>
<%--                    <em>-</em>--%>
<%--                    <input type="text" value="" class="w30">--%>
<%--                    <input type="submit" value="确认" id="search_by_price">--%>
<%--                </div>--%>
<%--                <!-- 价格段E -->--%>
<%--            </div>--%>
        </div>
        <div class="clear"></div>
        <!-- 显示菜单 End -->

        <!-- 商品列表 -->
        <div class="shop_bd_list_content clearfix">
            <ul>
                <c:if test="${!empty books}">
                    <c:forEach items="${books}" var="book">
                        <li>
                            <dl>
                                <dt><a href="/good?bookid=${book.id}"><img src="${book.imageUrl}"/></a></dt>
                                <dd class="title"><a href="/good?bookid=${book.id}">${book.name}</a></dd>
                                <dd class="content">
                                    <span class="goods_jiage">￥<strong>${book.price}</strong></span>
                                    <span class="goods_chengjiao">最近成交${book.sellNum}笔</span>
                                </dd>
                            </dl>
                        </li>
                    </c:forEach>
                </c:if>
                <c:if test="${!empty searchContext}">
                    <c:forEach items="${searchContext}" var="searchList">
                        <li>
                            <dl>
                                <dt><a href="/good?bookid=${searchList.id}"><img src="${searchList.imageUrl}"/></a></dt>
                                <dd class="title"><a href="/good?bookid=${searchList.id}">${searchList.name}</a></dd>
                                <dd class="content">
                                    <span class="goods_jiage">￥<strong>${searchList.price}</strong></span>
                                    <span class="goods_chengjiao">最近成交${searchList.sellNum}笔</span>
                                </dd>
                            </dl>
                        </li>
                    </c:forEach>
                </c:if>
            </ul>
        </div>
        <div class="clear"></div>
        <div class="pagination">
            <ul>
                <c:if test="${pageInfo.pageNum!=1}">
                    <li><span><a href="/novel?pageNum=1&id=${id}">首页</a></span></li>
                    <li><span><a href="/novel?pageNum=${pageInfo.prePage}&id=${id}">上一页</a></span></li>
                </c:if>
                <li><span class="currentpage">第${pageInfo.pageNum}页</span></li>
                <li><span>共${pageInfo.pages}页</span></li>
                <c:if test="${pageInfo.pageNum != pageInfo.pages}">
                    <li><span><a href="/novel?pageNum=${pageInfo.nextPage}&id=${id}">下一页</a></span></li>
                    <li><span><a href="/novel?pageNum=${pageInfo.pages}&id=${id}">末页</a></span></li>
                </c:if>

            </ul>
        </div>
        <!-- 商品列表 End -->


    </div>
</div>
<!-- List Body End -->

<!-- Footer - wll - 2013/3/24 -->
<c:import url="module/footer.jsp"></c:import>

<!-- Footer End -->

</body>
<script>

</script>
</html>