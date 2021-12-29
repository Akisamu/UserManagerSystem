<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>The management system of student</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/list.css" rel="stylesheet">
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>

    <script>
        function deleteUser(id){
            //用户安全提示
            if(confirm("Are you shore DELETE？")){
                //访问路径
                location.href="${pageContext.request.contextPath}/delUserServlet?id="+id;
            }
        }

        window.onload = function(){
            //给删除选中按钮添加单击事件
            document.getElementById("delSelected").onclick = function(){
                if(confirm("Are you shore DELETE？")){

                   var flag = false;
                    //判断是否有选中条目
                    var cbs = document.getElementsByName("uid");
                    for (var i = 0; i < cbs.length; i++) {
                        if(cbs[i].checked){
                            //有一个条目选中了
                            flag = true;
                            break;
                        }
                    }

                    if(flag){//有条目被选中
                        //表单提交
                        document.getElementById("form").submit();
                    }

                }

            }
            //1.获取第一个cb
            document.getElementById("firstCb").onclick = function(){
                //2.获取下边列表中所有的cb
                var cbs = document.getElementsByName("uid");
                //3.遍历
                for (var i = 0; i < cbs.length; i++) {
                    //4.设置这些cbs[i]的checked状态 = firstCb.checked
                    cbs[i].checked = this.checked;

                }

            }


        }


    </script>
</head>
<body style="text-align: center">
<div class="container">
    <h3 style="text-align: center">List of Students' Information</h3>

    <div style="float: left;" id="search">
        <form class="form-inline" action="${pageContext.request.contextPath}/findUserByPageServlet" method="post">
            <div class="form-group">
                <label for="exampleInputName2">Name</label>
                <input type="text" name="name" value="${condition.name[0]}" class="form-control" id="exampleInputName2" >
            </div>
            <div class="form-group">
                <label for="exampleInputName3">Hometown</label>
                <input type="text" name="address" value="${condition.address[0]}" class="form-control" id="exampleInputName3" >
            </div>

            <div class="form-group">
                <label for="exampleInputEmail2">E-mail</label>
                <input type="text" name="email" value="${condition.email[0]}" class="form-control" id="exampleInputEmail2"  >
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form>

        <div style="float: left;margin-top: 5px;width: 100%">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/add.jsp" style="width: 100%;margin-bottom: 10px;margin-top: 20px">Add student</a>
            <br>
            <a class="btn btn-primary" href="javascript:void(0);" id="delSelected" style="width: 100%">Delete selected</a>
        </div>

    </div>

    <hr style="width: 100%">

    <form id="form" action="${pageContext.request.contextPath}/delSelectedServlet" method="post">
        <table border="1" class="table table-bordered table-hover table-striped">
        <tr class="info">
            <th><input type="checkbox" id="firstCb"/></th>
            <th>Number</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Age</th>
            <th>Hometown</th>
            <th>Telegram</th>
            <th>E-mail</th>
            <th>Operation</th>
        </tr>

        <c:forEach items="${pb.list}" var="student" varStatus="s">
            <tr>
                <td><input type="checkbox" name="uid" value="${student.id}"></td>
                <td>${s.count}</td>
                <td>${student.name}</td>
                <td>${student.gender}</td>
                <td>${student.age}</td>
                <td>${student.address}</td>
                <td>${student.qq}</td>
                <td>${student.email}</td>
                <td><a class="btn btn-default btn-sm" href="${pageContext.request.contextPath}/findUserServlet?id=${student.id}">Change</a>&nbsp;
                    <a class="btn btn-default btn-sm" href="javascript:deleteUser(${student.id});">Delete</a></td>
            </tr>

        </c:forEach>
    </table>
    </form>

    <div>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <c:if test="${pb.currentPage == 1}">
                    <li class="disabled">
                </c:if>

                <c:if test="${pb.currentPage != 1}">
                    <li>
                </c:if>


<%--                    <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pb.currentPage - 1}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}" aria-label="Previous">--%>
<%--                        <span aria-hidden="true">&laquo;</span>--%>
<%--                    </a>--%>
<%--                </li>--%>


<%--                <c:forEach begin="1" end="${pb.totalPage}" var="i" >--%>


<%--                    <c:if test="${pb.currentPage == i}">--%>
<%--                        <li class="active"><a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${i}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}">${i}</a></li>--%>
<%--                    </c:if>--%>
<%--                    <c:if test="${pb.currentPage != i}">--%>
<%--                        <li><a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${i}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}">${i}</a></li>--%>
<%--                    </c:if>--%>

<%--                </c:forEach>--%>


<%--                <li>--%>
<%--                    <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pb.currentPage + 1}&rows=5&name=${condition.name[0]}&address=${condition.address[0]}&email=${condition.email[0]}" aria-label="Next">--%>
<%--                        <span aria-hidden="true">&raquo;</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <span style="font-size: 25px;margin-left: 5px;">--%>
<%--                    共${pb.totalCount}条记录，共${pb.totalPage}页--%>
<%--                </span>--%>

            </ul>
        </nav>


    </div>


</div>


</body>
</html>
