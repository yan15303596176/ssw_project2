<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>

	<div class="col-lg-6 col-md-6">
                        <h2>点菜信息</h2>
                    <div>
                        <h3>座号：${tableno}</h3>
                    </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>菜品名称</th>
                                        <th>数量</th>
										<th>价格</th>
										<th>图片预览</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:if test="${not empty foods}">
                                <ul>
                                <c:forEach var="food" items="${foods}">
                                 <%--   <c:set value="${food.tableno}" var="table" scope="page"></c:set>--%>
                                    <tr>
                                    <tr class="success">
										<td><a javascript:deleteUser()><img src="${pageContext.request.contextPath}/static/img/del.jpg"/></a></td>
                                        <td>${food.fname}</td>
                                        <td>${food.fnum}</td>
										<td>${food.fprice}</td>
										<td><img src="${pageContext.request.contextPath}/static/img/image/${food.id}.jpg"/></td>
                                    </tr>
                                    </tr>
                                </c:forEach>
                                </ul>
                                </c:if>
                                </tbody>
                            </table>
                        </div>
    </div>
</body>
</html>