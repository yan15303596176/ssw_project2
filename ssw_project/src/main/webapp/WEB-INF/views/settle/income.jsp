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
        <div class="table-responsive">
            <form:form action="/settles/${foodorders[0].tableId}" method="delete" commandName="foodorders">
                <c:forEach items="${foodorders}" var="foodorders">
             <div class="form-group">
                 <label for="fname">菜名</label>
                 <input  placeholder="Foodorder Name" value="${foodorders.fname}" id="fname"/>

                 <label for="fprice">价钱</label>
                 <input class="fprice" id="fprice" value="${foodorders.fprice}" placeholder="Foodorder Price" />

                 <label for="fnum">数量</label>
                 <input id="fnum" class="fnum" value="${foodorders.fnum}" placeholder="Foodorder Num" />
             </div>
                </c:forEach>
                <div class="row">
                    <div class="input-group">
                        <span class="input-group-addon">合计</span>
                        <input type="text" class="form-control" value="0" id = "fprice1"/>
                        <span class="input-group-addon" >.00</span>
                        <span class="input-group-addon" style="margin-left:50px">实收</span>
                        <input type="text" class="form-control" id="receipts"/>
                        <span class="input-group-addon">.00</span>
                        <span class="input-group-addon" style="margin-left: 50px">找零</span>
                        <input type="text" class="form-control" id="accounts"/>
                        <span class="input-group-addon">.00</span>
                    </div>
                </div>
                <%--<a class="btn btn-primary btn-lg btn-block" href="javascript:deleteFoodorder('${foodorders[0].tableId}');" >结账</a>--%>
                <button class="btn btn-primary btn-lg btn-block" type="submit">结账</button>
                <%--<input type="hidden" name="del" value="${foodorders[0].tableId}">--%>
            </form:form>

        </div>
    </div>
</div>
</body>
<script>


    var price = [];
    $('.fprice').each(function () {
        price.push($(this).val());
    });
    var fnum = [];
    $('.fnum').each(function () {
        fnum.push($(this).val());
    });
    var i = 0;
    var num = 0;
    $('.form-group').each(function () {
        if(price[i] != null ){
            num = num/1 + price[i] * fnum[i];
        }
        i++;
    });
    $("#fprice1").val(num);
    $("#receipts").keyup(function () {

        var receipts =  document.getElementById("receipts").value;
        var accounts = receipts/1 - num/1;
        $("#accounts").val(accounts);


    })
</script>
<%--<script type="text/javascript">--%>
    <%--function deleteFoodorder(id) {--%>

<%--//			//获取表单对象，//设置method值=delete--%>
<%--//			document.forms[0].method="DELETE";--%>
<%--//			//提交表单--%>
<%--//			document.forms[0].submit();--%>
            <%--with (document.forms[0]) {//?--%>
                <%--_method.value = "DELETE";--%>
                <%--submit();--%>
            <%--}--%>
    <%--}--%>

<%--</script>--%>
</html>
