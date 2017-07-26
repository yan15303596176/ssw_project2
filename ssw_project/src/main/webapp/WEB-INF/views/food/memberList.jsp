<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<html>
<head>
<jsp:include page="/views/theme.jsp"></jsp:include>
<title>Taskify :: List of Users</title>
</head>
<body>
<jsp:include page="/views/navbar.jsp"></jsp:include>
<div class="container">
	<h1>菜品信息</h1>

	<hr />
	<p class="text-right">
		<a class="btn btn-primary" href="member/new" role="button">新增菜品</a>
	</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>编号</th>
				<th>菜品名称</th>
				<th>库存量</th>
				<th>菜品描述</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty member}">

				<ul>
					<c:forEach var="member" items="${member}">
						<tr>
							<td>1</td>
							<td>Mark</td>
							<td>Otto</td>
							<td>Otto</td>
							<td><a href="edit.jsp" class="btn btn-warning">修改</a></td>
						</tr>
					</c:forEach>
				</ul>

			</c:if>

		</tbody>
	</table>
</div>
</body>
</html>
