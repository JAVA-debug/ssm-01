<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>ShopCZ-首页</title>
    <link rel="stylesheet" href="css/base.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_common.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_header.css" type="text/css"/>
    <link rel="stylesheet" href="css/shop_home.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/topNav.js"></script>
    <script type="text/javascript" src="js/focus.js"></script>
    <script type="text/javascript" src="js/shop_home_tab.js"></script>
</head>

<%--<script>--%>
<%--    $(document).ready(--%>
<%--        $.get("/special", {"start": 12, "end": 17}, function (data) {--%>

<%--            var uls = '<ul>'--%>
<%--            for (var i = 0; i < data.length; i++) {--%>
<%--                var li = '<li><dt><a href="/novel" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +--%>
<%--                    '<dd><a href="#" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +--%>
<%--                    '<dd>¥:<em>' + data[i].price + '</em></dd></li>'--%>
<%--                uls += li--%>
<%--            }--%>
<%--            uls += '</ul>'--%>
<%--            $("#product").html(uls)--%>
<%--        }),--%>

<%--        $.get("/limit2", {}, function (data) {--%>

<%--            var uls = '<ul>'--%>
<%--            for (var i = 0; i < data.length; i++) {--%>
<%--                var li = '<li><dt><a href="#" title="' + data[i].name + '"><img src="' + data[i].imageUrl + '"/></a></dt>' +--%>
<%--                    '<dl><dd><a href="#" title="' + data[i].name + '">' + data[i].name + '</a></dd>' +--%>
<%--                    '<dd>¥:<em>' + data[i].price + '</em></dd></dl></li>'--%>
<%--                uls += li--%>
<%--            }--%>
<%--            uls += '</ul>'--%>
<%--            $("#limit2").html(uls)--%>
<%--        })--%>
<%--    )--%>
<%--</script>--%>

<body>
<!-- Header  -wll-2013/03/24 -->
<div class="shop_hd">
    <c:import url="module/top.jsp"></c:import>
    <!-- Header TopNav End -->

    <!-- TopHeader Center -->
    <c:import url="module/serach.jsp"></c:import>
    <!-- TopHeader Center End -->

    <!-- Header Menu -->
    <div class="shop_hd_menu">
        <!-- 所有商品菜单 -->

        <div class="shop_hd_menu_all_category shop_hd_menu_hover">
            <!-- 首页去掉 id="shop_hd_menu_all_category" 加上clsss shop_hd_menu_hover -->
            <div class="shop_hd_menu_all_category_title"><h2 title="所有商品分类"><a href="javascript:void(0);">所有商品分类</a>
            </h2><i></i></div>
            <div id="shop_hd_menu_all_category_hd" class="shop_hd_menu_all_category_hd">
                <ul class="shop_hd_menu_all_category_hd_menu clearfix">
                    <!-- 单个菜单项 -->
                    <li id="cat_1" class="">
                        <h3><a href="" title="童书 育儿">童书 育儿</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="0-6岁" href="">0-6岁</a></dt>
                                <dd>
                                    <a href="">幼儿绘本</a>
                                    <a href="">幼儿启蒙</a>
                                    <a href="">国学启蒙</a>
                                    <a href="">趣味童书</a>
                                    <a href="">注音读物</a>
                                    <a href="">中外名著</a>
                                    <a href="">智力开发</a>
                                    <a href="">幼小衔接入学</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="6岁以上" href="">6岁以上</a></dt>
                                <dd>
                                    <a href="">少儿科普</a>
                                    <a href="">少儿童书</a>
                                    <a href="">儿童文学</a>
                                    <a href="">少儿读物</a>
                                    <a href="">少儿英语</a>
                                    <a href="">兴趣培养</a>
                                    <a href="">注音读物</a>
                                    <a href="">童话故事</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <!-- 单个菜单项 End -->

                    <li id="cat_2" class="">
                        <h3><a href="" title="文学 小说">文学 小说</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="文学" href="">文学</a></dt>
                                <dd>
                                    <a href="">现当代文学</a>
                                    <a href="">民间文学</a>
                                    <a href="">民间故事</a>
                                    <a href="">经典国学</a>
                                    <a href="">经典国学解析</a>
                                    <a href="">外国文学</a>
                                    <a href="">外国文学研究</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="小说" href="">小说</a></dt>
                                <dd>
                                    <a href="">青春小说</a>
                                    <a href="">情感小说</a>
                                    <a href="">武侠小说</a>
                                    <a href="">科幻小说</a>
                                    <a href="">历史、军事小说</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="漫画" href="">漫画</a></dt>
                                <dd>
                                    <a href="">幽默漫画</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="诗歌散文" href="">诗歌散文</a></dt>
                                <dd>
                                    <a href="">诗歌</a>
                                    <a href="">散文</a>
                                    <a href="">杂文</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="名著古籍" href="">名著古籍</a></dt>
                                <dd>
                                    <a href="">四大名著</a>
                                    <a href="">历史古籍</a>
                                    <a href="">名著读物</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="传记" href="">传记</a></dt>
                                <dd>
                                    <a href="">中国名人传记</a>
                                    <a href="">外国名人传记</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="作品集" href="">作品集</a></dt>
                                <dd>
                                    <a href="">作家作品集</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_3" class="">
                        <h3><a href="" title="社科 经营">社科 经营</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">经济</a></dt>
                                <dd>
                                    <a href="">大众经济读物</a>
                                    <a href="">经济理论、法规</a>
                                    <a href="">商业贸易</a>
                                    <a href="">WTO</a>
                                    <a href="">财政金融</a>
                                    <a href="">统计</a>
                                    <a href="">经济考试</a>
                                    <a href="">工具书</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="管理" href="">管理</a></dt>
                                <dd>
                                    <a href="">管理学</a>
                                    <a href="">企业管理</a>
                                    <a href="">战略管理</a>
                                    <a href="">人力资源</a>
                                    <a href="">市场营销</a>
                                    <a href="">项目管理</a>
                                    <a href="">职业经理</a>
                                    <a href="">物流管理</a>
                                    <a href="">质量管理</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="政治" href="">政治</a></dt>
                                <dd>
                                    <a href="">中国共产党</a>
                                    <a href="">领导人著作</a>
                                    <a href="">政治理论</a>
                                    <a href="">马列主义</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="军事" href="">军事</a></dt>
                                <dd>
                                    <a href="">中国军事</a>
                                    <a href="">外国军事</a>
                                    <a href="">军事科技装备</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="社科" href="">社科</a></dt>
                                <dd>
                                    <a href="">新闻传播</a>
                                    <a href="">公共关系</a>
                                    <a href="">社科总论</a>
                                    <a href="">工具书</a>
                                    <a href="">综合</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="金融和投资" href="">金融和投资</a></dt>
                                <dd>
                                    <a href="">股票期货</a>
                                    <a href="">房地产</a>
                                    <a href="">保险</a>
                                    <a href="">财富论坛</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="历史文化" href="">历史文化</a></dt>
                                <dd>
                                    <a href="">中国历史</a>
                                    <a href="">外国历史</a>
                                    <a href="">中外文化</a>
                                    <a href="">文物考古</a>
                                    <a href="">史学理论</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="哲学宗教" href="">哲学宗教</a></dt>
                                <dd>
                                    <a href="">宗教</a>
                                    <a href="">中国哲学</a>
                                    <a href="">外国哲学</a>
                                    <a href="">逻辑伦理学</a>
                                    <a href="">心理学</a>
                                    <a href="">美学</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="地理地图" href="">地理地图</a></dt>
                                <dd>
                                    <a href="">中外地图挂图</a>
                                    <a href="">中国行政地图</a>
                                    <a href="">中国交通地图</a>
                                    <a href="">世界地图</a>
                                    <a href="">地球仪</a>
                                    <a href="">地理</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_4" class="">
                        <h3><a href="" title="行业 职业">行业 职业</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">计算机/网络</a></dt>
                                <dd>
                                    <a href="">编程语言</a>
                                    <a href="">数据库</a>
                                    <a href="">网络技术</a>
                                    <a href="">操作系统</a>
                                    <a href="">软硬件技术</a>
                                    <a href="">网页制作</a>
                                    <a href="">图形图像</a>
                                    <a href="">计算机基础</a>
                                    <a href="">计算机考试</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="西医" href="">西医</a></dt>
                                <dd>
                                    <a href="">外科</a>
                                    <a href="">内科</a>
                                    <a href="">儿科</a>
                                    <a href="">医学/医药教材</a>
                                    <a href="">影像学</a>
                                    <a href="">皮肤学</a>
                                    <a href="">医学/医药考试</a>
                                    <a href="">护理</a>
                                    <a href="">遗传生物学</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="中医" href="">中医</a></dt>
                                <dd>
                                    <a href="">中医各科</a>
                                    <a href="">中医古籍</a>
                                    <a href="">中药学</a>
                                    <a href="">方剂学‘针灸推拿</a>
                                    <a href="">中西医结合</a>
                                    <a href="">中医考试</a>
                                    <a href="">中医教材</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="工业技术" href="">工业技术</a></dt>
                                <dd>
                                    <a href="">轻工业</a>
                                    <a href="">机械工程</a>
                                    <a href="">培训教材</a>
                                    <a href="">家电维修</a>
                                    <a href="">电子、电工</a>
                                    <a href="">通讯</a>
                                    <a href="">水利水电</a>
                                    <a href="">纳米技术</a>
                                    <a href="">交通运输</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="法律" href="">法律</a></dt>
                                <dd>
                                    <a href="">法律单行本</a>
                                    <a href="">法律教材</a>
                                    <a href="">法律实务</a>
                                    <a href="">法律类考试</a>
                                    <a href="">法学理论</a>
                                    <a href="">法律工具书</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="农业" href="">农业</a></dt>
                                <dd>
                                    <a href="">种植业</a>
                                    <a href="">养殖</a>
                                    <a href="">兽医</a>
                                    <a href="">农业科学</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_5" class="">
                        <h3><a href="" title="教材 教辅">教材 教辅</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="小学教辅" href="">小学教辅</a></dt>
                                <dd>
                                    <a href="">语文</a>
                                    <a href="">数学</a>
                                    <a href="">英语</a>
                                    <a href="">作文</a>
                                    <a href="">阅读</a>
                                    <a href="">奥赛和华赛</a>
                                    <a href="">学生字帖</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="初中教辅" href="">初中教辅</a></dt>
                                <dd>
                                    <a href="">语文</a>
                                    <a href="">数学</a>
                                    <a href="">英语</a>
                                    <a href="">理化生</a>
                                    <a href="">政史地</a>
                                    <a href="">作文</a>
                                    <a href="">阅读</a>
                                    <a href="">中考</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="高中教辅" href="">高中教辅</a></dt>
                                <dd>
                                    <a href="">语文</a>
                                    <a href="">数学</a>
                                    <a href="">英语</a>
                                    <a href="">理化生</a>
                                    <a href="">政史地</a>
                                    <a href="">作文</a>
                                    <a href="">阅读</a>
                                    <a href="">高考</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="英语" href="">英语</a></dt>
                                <dd>
                                    <a href="">英语四级</a>
                                    <a href="">英语六级</a>
                                    <a href="">专业四级</a>
                                    <a href="">专业八级</a>
                                    <a href="">雅思</a>
                                    <a href="">托福</a>
                                    <a href="">GRE考试</a>
                                    <a href="">SAT考试</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="其他语种" href="">其他语种</a></dt>
                                <dd>
                                    <a href="">综合</a>
                                    <a href="">日语</a>
                                    <a href="">韩语</a>
                                    <a href="">法语</a>
                                    <a href="">德语</a>
                                    <a href="">俄语</a>
                                    <a href="">小语种</a>
                                </dd>
                            </dl>
                        </div>
                    </li>

                    <li id="cat_6" class="">
                        <h3><a href="" title="生活 艺术">生活 艺术</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="成功励志" href="">成功励志</a></dt>
                                <dd>
                                    <a href="">成功学</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="婚姻家庭" href="">婚姻家庭</a></dt>
                                <dd>
                                    <a href="">孕产育儿</a>
                                    <a href="">亲子家教</a>
                                    <a href="">两性关系</a>
                                    <a href="">家庭保健</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美食/旅游" href="">美食/旅游</a></dt>
                                <dd>
                                    <a href="">烹饪</a>
                                    <a href="">旅游</a>
                                    <a href="">旅游地图</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="艺术" href="">艺术</a></dt>
                                <dd>
                                    <a href="">美术</a>
                                    <a href="">设计</a>
                                    <a href="">收藏</a>
                                    <a href="">年历</a>
                                    <a href="">书法</a>
                                    <a href="">音乐</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li id="cat_7" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                    <li id="cat_8" class="">
                        <h3><a href="" title="美容美妆">美容美妆</a></h3>
                        <div class="cat_menu clearfix" style="">
                            <dl class="clearfix">
                                <dt><a href="美容" href="">美容</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>

                            <dl class="clearfix">
                                <dt><a href="美妆" href="">美妆</a></dt>
                                <dd>
                                    <a href="">风衣</a>
                                    <a href="">长袖连衣裙</a>
                                    <a href="">毛呢连衣裙</a>
                                    <a href="">半身裙</a>
                                    <a href="">小脚裤</a>
                                    <a href="">加绒打底裤</a>
                                    <a href="">牛仔裤</a>
                                    <a href="">打底衫</a>
                                    <a href="">情侣装</a>
                                    <a href="">棉衣</a>
                                    <a href="">毛呢大衣</a>
                                    <a href="">毛呢短裤</a>
                                </dd>
                            </dl>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 所有商品菜单 END -->

        <!-- 普通导航菜单 -->
        <ul class="shop_hd_menu_nav">
            <li class="link"><a href="/novel?id=10"><span>童书绘本</span></a></li>
            <li class="link"><a href="/novel?id=11"><span>小说文学</span></a></li>
            <li class="link"><a href="/novel?id=12"><span>社科经营</span></a></li>
            <li class="link"><a href="/novel?id=13"><span>网络科技</span></a></li>
            <li class="link"><a href="/novel?id=18"><span>成功励志</span></a></li>
            <li class="link"><a href="/novel?id=14"><span>教材教辅</span></a></li>
            <li class="link"><a href="/novel?id=16"><span>生活艺术</span></a></li>
        </ul>
        <!-- 普通导航菜单 End -->
    </div>
    <!-- Header Menu End -->


</div>
<div class="clear"></div>
<!-- Header End -->


<!-- Body -wll-2013/03/24 -->
<div class="shop_bd clearfix">
    <!-- 第一块区域  -->
    <div class="shop_bd_top clearfix">
        <div class="shop_bd_top_left"></div>
        <div class="shop_bd_top_center">
            <!-- 图片切换  begin  -->
            <div class="xifan_sub_box">
                <div id="p-select" class="sub_nav">
                    <div class="sub_no" id="xifan_bd1lfsj">
                        <ul></ul>
                    </div>
                </div>
                <div id="xifan_bd1lfimg">
                    <div>
                        <dl class=""></dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo1.jpg"></a></dt>
                        </dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo2.jpg"></a></dt>
                        </dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo3.jpg"></a></dt>
                        </dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo4.jpg"></a></dt>
                        </dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo5.jpg"></a></dt>
                        </dl>

                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo6.jpg"></a></dt>
                        </dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo7.jpg"></a></dt>
                        </dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo8.jpg"></a></dt>
                        </dl>
                        <dl class="">
                            <dt><a href="#" title=""><img
                                    src="images/lunbo9.jpg"></a></dt>
                        </dl>
                    </div>
                </div>
            </div>
            <script type="text/javascript">movec();</script>

        </div>

        <!-- 右侧 -->
        <div class="shop_bd_top_right clearfix">

            <div class="shop_bd_top_right-style1 nc-home-news">
                <ul class="tabs-nav">
                    <li><a href="javascript:void(0);" class="hover">商城公告</a></li>

                </ul>
                <div class="clear"></div>
                <div class="tabs-panel">
                    <ul class="list-style01">
                        <li><a title="如何申请开店" href="article-15.html">如何申请开店</a><span>(2011-01-11)</span></li>
                        <li><a title="商城商品推荐" href="article-14.html">商城商品推荐</a><span>(2011-01-11)</span></li>
                        <li><a title="如何发货" href="article-13.html">如何发货</a><span>(2011-01-11)</span></li>
                        <li><a title="查看售出商品" href="article-12.html">查看售出商品</a><span>(2011-01-11)</span></li>
                        <li><a title="如何管理店铺" href="article-11.html">如何管理店铺</a><span>(2011-01-11)</span></li>
                        <li><a title="如何申请开店" href="article-15.html">如何申请开店</a><span>(2011-01-11)</span></li>
                        <li><a title="商城商品推荐" href="article-14.html">商城商品推荐</a><span>(2011-01-11)</span></li>
                        <li><a title="如何发货" href="article-13.html">如何发货</a><span>(2011-01-11)</span></li>
                        <li><a title="查看售出商品" href="article-12.html">查看售出商品</a><span>(2011-01-11)</span></li>
                        <li><a title="如何管理店铺" href="article-11.html">如何管理店铺</a><span>(2011-01-11)</span></li>


                    </ul>
                </div>
            </div>
        </div>
        <!-- 右侧 End -->
    </div>
    <div class="clear"></div>

    <div class="shop_bd_home_block clearfix">
        <c:import url="module/middle.jsp"></c:import>
    </div>
    <div clas="clear"></div>
    <!-- 第三块区域 End -->


</div>
<!-- Body End -->

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