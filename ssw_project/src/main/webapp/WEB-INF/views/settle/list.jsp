<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2017/7/24
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
    <!-- BOOTSTRAP STYLES-->

    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="${pageContext.request.contextPath}/static/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<div class="col-lg-6 col-md-6">
    <h3>点菜信息</h3>
    <div class="row">

            <%--<div class="input-group">--%>
                <%--<span class="input-group-addon">桌号</span>--%>
               <%--<a href="/settle/1"><input type="text" class="form-control" style="height:40px;width:80px" id="id"/></a>--%>
                <%--<button class="btn btn-default" style="margin-left: 20px">确定</button>--%>
            <%--</div>--%>
        <%--<form:form action="/settles/${foodorder.tableId}" method="post">--%>
            <%--<div class="input-group">--%>
            <%--<label for="tableId" class="input-group-addon">桌号</label>--%>
            <%--<form:input class="form-control" id="tableId" name="tableId" value="${foodorder.tableId}" style="height:40px;width:80px" path="tableId" />--%>
            <%--<button class="btn btn-default" style="margin-left: 20px">确定</button>--%>
            <%--</div>--%>
        <%--</form:form>--%>
    <%--</div>--%>
    <div class="table-responsive">
        <table class="table">
            <thead>
            <tr>
                <th>桌号</th>
                <th>菜名</th>
                <th>单价</th>
                <th>数量</th>
            </tr>
            </thead>
            <tbody>

        <c:forEach var="foodorder" items="${Foodorder}">
            <tr class="success" id="bd">
                <td><a href='<c:url value="/settles/${foodorder.tableId}"/>'>${foodorder.tableId}</a> </td>
                <td>${foodorder.fname}</td>
                <td class="price">${foodorder.fprice}</td>
                <td class="fnum">${foodorder.fnum}</td>
            </tr>
        </c:forEach>

            </tbody>
        </table>
    </div>

    </div>
</div>
</body>


</html>
