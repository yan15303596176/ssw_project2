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
	<h1>会员信息</h1>

	<hr />
	<p class="text-right">
		<a class="btn btn-primary" href="member/new" role="button">新增会员</a>
	</p>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>卡号</th>
				<th>会员姓名</th>
				<th>手机号</th>
				<th>卡类型</th>
				<th>累计积分</th>
				<th>优惠</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty member}">

				<ul>
					<c:forEach var="member" items="${member}">
						<tr>
							<td>${member.memberId}</td>
							<td>${member.mName}</td>
							<td>${member.mPhoneNumber}</td>
							<td>${member.mType}</td>
							<td>${member.count}</td>
							<td>${member.favorable}</td>
							<td><a href="/${member.memberId}" class="btn btn-warning">修改</a>
						</tr>
					</c:forEach>
				</ul>

			</c:if>

		</tbody>
	</table>
</div>
</body>
</html>
