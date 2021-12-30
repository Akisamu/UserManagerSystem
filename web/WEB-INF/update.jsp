<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Update</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/update.css">
        <script src="js/jquery-2.1.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/common.js"></script>

    </head>
    <body>
        <div class="container" style="width: 800px;">
        <h3 style="text-align: center;">Update</h3>
        <form action="${pageContext.request.contextPath}/updateUserServlet" method="post" id="info">
            <!--  隐藏域 提交id-->
            <input type="hidden" name="id" value="${student.id}">

          <div class="form-group info">
            <label for="name">Name：</label>
            <input type="text" class="form-control" id="name" name="name"  value="${student.name}" readonly="readonly" placeholder="请输入姓名" />
          </div>

          <div class="form-group info">
            <label>Gender：</label>
              <c:if test="${student.gender == '男'}">
                  <input type="radio" name="gender" value="男" checked />Male
                  <input type="radio" name="gender" value="女"  />Female
              </c:if>

              <c:if test="${student.gender == '女'}">
                  <input type="radio" name="gender" value="男"  />Male
                  <input type="radio" name="gender" value="女" checked  />Female
              </c:if>


          </div>

          <div class="form-group info">
            <label for="age">Age：</label>
            <input type="text" class="form-control" value="${student.age}" id="age"  name="age" placeholder="请输入年龄" />
          </div>

          <div class="form-group info">
            <label for="address">Hometown：</label>
             <select name="address" id="address" class="form-control" >
                 <c:if test="${student.address == '陕西'}">
                    <option value="陕西" selected>陕西</option>
                    <option value="北京">北京</option>
                    <option value="上海">上海</option>
                 </c:if>

                 <c:if test="${student.address == '北京'}">
                     <option value="陕西" >陕西</option>
                     <option value="北京" selected>北京</option>
                     <option value="上海">上海</option>
                 </c:if>

                 <c:if test="${student.address == '上海'}">
                     <option value="陕西" >陕西</option>
                     <option value="北京">北京</option>
                     <option value="上海" selected>上海</option>
                 </c:if>
            </select>
          </div>

          <div class="form-group info">
            <label for="qq">QQ：</label>
            <input type="text" id="qq" class="form-control" value="${student.qq}" name="qq" placeholder="Please entry QQ code"/>
          </div>

          <div class="form-group info">
            <label for="email">E-mail：</label>
            <input type="text" id="email" class="form-control" value="${student.email}" name="email" placeholder="Please entry Email address"/>
          </div>
          <div class="form-group info" style="text-align: center">
             <input class="btn btn-primary" type="submit" value="Submit" />
             <input class="btn btn-default" id="back" type="button" value="Back"/>
          </div>
        </form>
        </div>
    </body>
</html>