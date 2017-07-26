<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<html>
<head>
<jsp:include page="/views/theme.jsp"></jsp:include>
<title>Spring MVC JPA Starter: Edit User</title>
<script type="text/javascript">
	function deleteMember(id) {
		if (confirm("是否确定删除ID"+id)) {
			//document.forms[0].method
			with (document.forms[0]) {
				_method.value = "DELETE";
				submit();
			}
		}

	}
</script>
</head>
<body>
<jsp:include page="/views/navbar.jsp"></jsp:include>
	<h1 class="text-center">修改菜品信息</h1>
	<hr>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">输入信息....</h3>
			</div>
			<div class="panel-body">

				<form:form action="../${user.id}" method="PUT" commandName="member">
					<div class="form-group">
						<label for="txtUserName">菜品名称</label>
						<form:input path="userName" class="form-control" id="txtUserName"/>
					</div>
					<div class="form-group">
						<label for="txtCount">库存量</label>
						<form:input path="name" class="form-control"
							id="txtSex"/>
					</div>
					<div class="form-group">
						<label for="txtDesc">菜品描述</label>
						<form:input path="password" class="form-control" id="txtPassWord" />
					</div>
					<button type="submit" class="btn btn-success">保存</button>
					<a href='<c:url value="/member/${user.id}"/>'
						class="btn btn-primary">返回</a>
					<a href="javascript:deleteMember('${user.id}');"
						class="btn btn-danger">删除</a>
				</form:form>
			</div>
		</div>

	</div>
</body>
</html>
