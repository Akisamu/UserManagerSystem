<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>添加</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/add.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/common.js"></script>
</head>
<body>
<div class="container">
    <center><h3>Add student</h3></center>
    <form action="${pageContext.request.contextPath}/addUserServlet" method="post">
        <div class="form-group">
            <label for="name">Name：</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">
        </div>

        <div class="form-group">
            <label>Gender：</label>
            <input type="radio" name="gender" value="男" checked="checked"/>Male
            <input type="radio" name="gender" value="女"/>Female
        </div>

        <div class="form-group">
            <label for="age">Age：</label>
            <input type="text" class="form-control" id="age" name="age" placeholder="Please entry your age">
        </div>

        <div class="form-group">
            <label for="address">Hometown：</label>
            <select name="address" class="form-control" id="address">
                <option value="江西">江西</option>
                <option value="四川">四川</option>
                <option value="河南">河南</option>
            </select>
        </div>

        <div class="form-group">
            <label for="qq">QQ：</label>
            <input type="text" class="form-control" id="qq" name="qq" placeholder="Please entry your QQ code"/>
        </div>

        <div class="form-group">
            <label for="email">E-mail：</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="Please entry your E-mail"/>
        </div>

        <hr>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-success" type="submit" value="Submit" style="width: 100%;margin-bottom: 20px"/>
            <br>
            <input class="btn btn-default"  id="back" type="button" value="Back" style="width: 100%;"/>
        </div>
    </form>
</div>
</body>
</html>