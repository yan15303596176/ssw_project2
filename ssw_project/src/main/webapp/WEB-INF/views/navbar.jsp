<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="true">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">餐厅管理</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<c:choose>
					<c:when
						test="${fn:endsWith(pageContext.request.requestURI, 'views/home.jsp')}">
						<li class="active"><a
							href="${pageContext.request.contextPath}/">主页<span
								class="sr-only">(current)</span>
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/">主页</a></li>
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when
						test="${fn:endsWith(pageContext.request.requestURI, 'views/manager/EmpList.jsp')}">
						<li class="active"><a
							href="${pageContext.request.contextPath}/empList">员工信息管理<span
								class="sr-only">(current)</span>
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/empList">员工信息管理</a></li>
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when
						test="${fn:endsWith(pageContext.request.requestURI, 'manager/memberList.jsp')}">
						<li class="active"><a
							href="${pageContext.request.contextPath}/tasks">会员管理<span
								class="sr-only">(current)</span>
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/tasks">会员管理</a></li>
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when
							test="${fn:endsWith(pageContext.request.requestURI, 'manager/foodList.jsp')}">
						<li class="active"><a
								href="${pageContext.request.contextPath}/tasks">菜品信息管理<span
								class="sr-only">(current)</span>
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/tasks">菜品信息管理</a></li>
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when
							test="${fn:endsWith(pageContext.request.requestURI, 'home/foodList.jsp')}">
						<li class="active"><a
								href="${pageContext.request.contextPath}/tasks">点菜<span
								class="sr-only">(current)</span>
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/tasks">点菜</a></li>
					</c:otherwise>
				</c:choose>

				<c:choose>
					<c:when
							test="${fn:endsWith(pageContext.request.requestURI, 'manager/count.jsp')}">
						<li class="active"><a
								href="${pageContext.request.contextPath}/tasks">结账<span
								class="sr-only">(current)</span>
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/tasks">结账</a></li>
					</c:otherwise>
				</c:choose>

<%-- 				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Manage Users <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/users">List
								all users</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li> --%>
			</ul>
			<!-- <form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul></li>
			</ul> -->
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>