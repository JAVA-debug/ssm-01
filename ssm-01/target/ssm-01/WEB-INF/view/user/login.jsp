<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <title>用户登录</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" href="css/global.css"/>
    <link rel="stylesheet" href="css/login-register.css"/>

</head>
<body>
<div class="header wrap1000">
    <a href=""><img src="images/logo.png" alt=""/></a>
</div>

<div class="main">
    <div class="login-form fr">
        <div class="form-hd">
            <h3>用户登录</h3>
        </div>
        <div class="form-bd">
            <form action="dologin" method="POST">
                <dl>
                    <dt>用户名</dt>
                    <dd><input type="text" name="username" class="text"/></dd>
                </dl>
                <dl>
                    <dt>密&nbsp;&nbsp;&nbsp;&nbsp;码</dt>
                    <dd><input type="password" name="password" class="text"/></dd>
                </dl>
                <dl>
                    <dt>验证码</dt>
                    <dd><input type="text" name="code" class="text" size="10" style="width:100px;height: 32px"> <img
                            src="checkCode" alt="" align="absmiddle" style="position:relative;top:-2px;" id="code"/> <a
                            href="#" style="color:#999;" onclick="changeCheckCode()">看不清，换一张</a></dd>

                </dl>
                <dl>
                    <dt>&nbsp;</dt>
                    <dd><input type="submit" value="登  录" class="submit"/> <a href="" class="forget">忘记密码?</a></dd>
                </dl>
                <div style="color: red">${error}</div>
                ${test}
            </form>
            <dl>
                <dt>&nbsp;</dt>
                <dd> 还不是本站会员？立即 <a href="${pageContext.request.contextPath}/regist" class="register">注册</a></dd>
            </dl>
            <dl class="other">
                <dt>&nbsp;</dt>
                <dd>
                    <p>您可以用合作伙伴账号登录：</p>
                    <a href="" class="qq"></a>
                    <a href="" class="sina"></a>
                </dd>
            </dl>
        </div>
        <div class="form-ft">

        </div>
    </div>

    <div class="login-form-left fl">
        <img src="images/left.jpg" alt=""/>
    </div>
</div>

<div class="footer clear wrap1000">
    <p><a href="">首页</a> | <a href="">招聘英才</a> | <a href="">广告合作</a> | <a href="">关于ShopCZ</a> | <a href="">联系我们</a></p>
    <p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
</div>


</body>
<script type="text/javascript">
    var code = document.getElementById("code");

    //图片点击事件
    function changeCheckCode() {
        code.src = "checkCode?" + new Date().getTime();
    }
</script>
</html>
