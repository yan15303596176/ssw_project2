<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<html>
<head>
<jsp:include page="/WEB-INF/views/theme.jsp"></jsp:include>
<title>Taskify :: Home</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
	<%--<div class="container">--%>
		<h1>欢迎来到XXX餐厅!</h1>
		<hr />
	<%--</div>--%>
 <img src="${pageContext.request.contextPath}/static/imgs/homePage.png">
</body>
</html>
