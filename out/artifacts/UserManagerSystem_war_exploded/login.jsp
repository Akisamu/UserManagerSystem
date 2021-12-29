<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Longing System</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        //切换验证码
        function refreshCode(){
            //1.获取验证码图片对象
            var vcode = document.getElementById("vcode");

            //2.设置其src属性，加时间戳
            vcode.src = "${pageContext.request.contextPath}/checkCodeServlet?time="+new Date().getTime();
        }
    </script>
</head>
<body>
<div class="container" id="main">
    <h3>Longing System</h3>
    <form action="${pageContext.request.contextPath}/loginServlet" method="post">
        <div class="form-group">
            <label for="student">User name :</label>
            <input type="text" name="username" class="form-control" id="student" placeholder="Please entry your name"/>
        </div>

        <div class="form-group">
            <label for="password">Password：</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="Please entry your password"/>
        </div>

        <div class="form-inline" id="cap">
            <label for="vcode">verifycode ： </label>
            <input type="text" name="verifycode" class="form-control" id="verifycode" placeholder="Verification code" style="width: 140px;"/>
            <a href="javascript:refreshCode();">
                <img src="${pageContext.request.contextPath}/checkCodeServlet" id="vcode"/>
            </a>
        </div>
        <hr/>
        <div class="form-group" id="button-group">
            <input class="btn btn-default" type="submit" value="Sign in">
            <br>
            <a class="btn btn-default" href="${pageContext.request.contextPath}/register.jsp">Sign up</a>
        </div>
    </form>

    <!-- 出错显示的信息框 -->
    <div role="alert" id="alert">
        <button type="button" class="close" data-dismiss="ale rt" ></button>
        <strong style="color: #b92c28">${login_msg}</strong>
    </div>
</div>
</body>
</html>