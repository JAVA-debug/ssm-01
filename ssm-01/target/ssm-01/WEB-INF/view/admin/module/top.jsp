<%--
  Created by IntelliJ IDEA.
  User: ZSY
  Date: 2020/12/17
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<header class="publicHeader">
    <h1>管理系统</h1>

    <div class="publicHeaderR">
        <p><span id="">下午好！</span><span style="color: #fff21b"> ${user.username}</span> , 欢迎你！</p>
        <a href="login">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2015年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
</body>
<script>
    function fn(){
        var time = new Date();
        var str= "";
        var div = document.getElementById("time");
        var hour = document.getElementById("hours");
//    console.log(time);
        var year = time.getFullYear();
        var mon = time.getMonth()+1;
        var day = time.getDate();
        var h = time.getHours();
        var m = time.getMinutes();
        var s = time.getSeconds();
        var week = time.getDay();
        switch (week){
            case 0:week="日";
                break;
            case 1:week="一";
                break;
            case 2:week="二";
                break;
            case 3:week="三";
                break;
            case 4:week="四";
                break;
            case 5:week="五";
                break;
            case 6:week="六";
                break;
        }
        str = year +"年"+totwo(mon)+"月"+totwo(day)+"日"+"&nbsp;"+totwo(h)+":"+totwo(m)+":"+totwo(s)+"&nbsp;"+"星期"+week;
        div.innerHTML = str;
        if(h < 6){
            hour.innerHTML = "凌晨好";
        } else if(h < 12){
            hour.innerHTML = "上午好";
        } else if(h < 15){
            hour.innerHTML = "中午好";
        } else if(h < 18){
            hour.innerHTML = "下午好";
        } else if(h < 21){
            hour.innerHTML = "傍晚好";
        } else {
            hour.innerHTML = "深夜好";
        }
    }
    fn();
    setInterval(fn,1000);
    function totwo(n){
        if(n<=9){
            return n = "0"+n;
        }
        else{
            return n =""+n;
        }
    }
</script>

</html>
