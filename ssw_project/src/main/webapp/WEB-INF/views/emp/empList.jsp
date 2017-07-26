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
	<h1>员工信息</h1>

	<hr />
	<p class="text-right">
		<a class="btn btn-primary" href="users/new" role="button">新增员工</a>
	</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>编号</th>
				<th>员工信息</th>
				<th>性别</th>
				<th>出生日期</th>
				<th>入职日期</th>
				<th>员工住址</th>
				<th>备注</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty users}">

				<ul>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>1</td>
							<td>Mark</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td>Otto</td>
							<td><a href="updateUser.jsp" class="btn btn-warning">修改</a></td>
						</tr>
					</c:forEach>
				</ul>

			</c:if>

		</tbody>
	</table>
</div>
</body>
</html>
