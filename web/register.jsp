<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Register</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/register.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/common.js"></script>
    <script>
        //校验密码
        function checkPassword() {
            //1.获取密码值
            var password = $("#password").val();
            //2.定义正则
            var reg_password = /^\w{6,10}$/;

            //3.判断，给出提示信息
            var flag = reg_password.test(password);
            if(flag){
                $("#tishi2").html("");
                //密码合法
                $("#password").css("border","");
            }else{
                $("#tishi2").html("密码必须是6到10位");
                //密码非法,加一个红色边框
                $("#password").css("border","1px solid red");
            }

            return flag;
        }
        function checkPwd() {
            var flag=false;
            //1.获取密码值
            var password = $("#password").val();
            //2:
            var pwd = $("#pwd").val();
            if(password==pwd){
                $("#tishi").html("");
                $("#password").css("border","");
                flag=true;
            }else {

                $("#tishi").html("两次密码不相同");

                $("#password").css("border","1px solid red");

            }
            return flag;
        }
        $(function () {
            //当表单提交时，调用所有的校验方法
            $("#registerForm").submit(function(){
                //1.发送数据到服务器
                if(checkPassword() && checkPwd() ){
                    return true;
                }else{
                    //2.不让页面跳转
                    return false;
                    //如果这个方法没有返回值，或者返回为true，则表单提交，如果返回为false，则表单不提交
                }

            });

            //当某一个组件失去焦点是，调用对应的校验方法
            $("#password").blur(checkPassword);
            $("#pwd").blur(checkPwd);



        });

    </script>
</head>
<body>
<div class="container">
    <center><h3>Register</h3></center>
    <form id="registerForm" name="registerForm" action="${pageContext.request.contextPath}/registerUserServlet" method="post">
        <div class="form-group">
            <label for="username">Name：</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Please entry your name">
        </div>



        <div class="form-group">
            <label for="password">Password：</label>
            <input type="text" class="form-control" id="password" name="password" placeholder="Please set your password">
            <span id="tishi2"></span>
        </div>


        <div class="form-group" style="margin-bottom: 25px">
            <label for="pwd">Password again：</label>
            <input type="text" class="form-control" id="pwd" name="pwd" placeholder="please entry your password again"/>
            <span id="tishi"></span>
        </div>

        <hr>

        <div class="form-group" style="text-align: center" id="button-group">
            <input class="btn btn-success" type="submit" value="Submit" />
            <br>
            <input class="btn btn-default" id="back" type="button" value="Back"/>
        </div>
    </form>
</div>
</body>
</html>