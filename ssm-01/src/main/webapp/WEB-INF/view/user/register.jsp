<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>用户登录</title>
    <link rel="stylesheet" href="/res/user/css/base.css"/>
    <link rel="stylesheet" href="/res/user/css/global.css"/>
    <link rel="stylesheet" href="/res/user/css/login-register.css"/>

</head>
<body>
<div class="header wrap1000">
    <a href=""><img src="/res/user/images/dingdang.png" alt="" width="180px" height="75px"/></a>
</div>

<div class="main">
    <div class="login-form fr">
        <div class="form-hd">
            <h3>用户注册</h3>
        </div>
        <div class="form-bd">
            <form action="doReg" method="POST">
                <dl>
                    <dt>用户名</dt>
                    <dd><input type="text" name="username" class="text" required/></dd>
                </dl>
                <dl>
                    <dt>密码</dt>
                    <dd><input type="password" name="password" id="password" class="text" required/></dd>
                </dl>
                <dl>
                    <dt>确认密码</dt>
                    <dd><input type="password" name="repwd" id="repassword" class="text" required onblur="fun1()"/></dd>
                    <dd><span id="error" style="color: red"></span></dd>
                </dl>
                <dl>
                    <dt>邮箱</dt>
                    <dd><input type="text" name="email" class="text" required/></dd>
                </dl>
                <dl>
                    <dt>验证码</dt>
                    <dd><input type="text" name="code" class="text" size="10" style="width:100px;height: 32px;"> <img
                            src="checkCode" alt="" align="absmiddle" style="position:relative;top:-2px;"/> <a href="" style="color:#999;">看不清，换一张</a>
                    </dd>
                </dl>
                <dl>
                    <dt>&nbsp;</dt>
                    <dd><input type="submit" value="立即注册" class="submit"/> <input type="checkbox" checked="checked"/>阅读并同意<a
                            href="" class="forget">服务协议</a></dd>
                </dl>
                <div style="color: red">${resInfo}</div>
            </form>

        </div>
        <div class="form-ft">

        </div>
    </div>

    <div class="login-form-left fl">
        <img src="/res/user/images/left.png" alt="" style="width: 450px;"/>
    </div>
</div>

<div class="footer clear wrap1000">
    <p><a href="">首页</a> | <a href="">招聘英才</a> | <a href="">广告合作</a> | <a href="">关于ShopCZ</a> | <a href="">联系我们</a></p>
    <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
</div>

<script>
    function fun1() {
        var password = document.getElementById("password");
        var repassword = document.getElementById("repassword");
        var error = document.getElementById("error")

        if (password.value != repassword.value) {
            error.innerHTML = "两次输入的密码不一致，请重新输入"
        }
    }

    var code = document.getElementById("code");

    //图片点击事件
    function changeCheckCode() {
        code.src = "checkCode?" + new Date().getTime();
    }

</script>
</body>
</html>
