<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <title>Simple Responsive Admin</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet"/>
    <!-- FONTAWESOME STYLES-->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet"/>
    <!-- CUSTOM STYLES-->
    <link href="${pageContext.request.contextPath}/static/css/custom.css" rel="stylesheet"/>
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/main.js"></script> <!-- Resource jQuery -->
    <script>
        $(document).ready(function () {
            $("button").each(function () {
                $(this).click(function () {
                    //以button作为起节点，获取其父节点的兄弟节点
                    //获取tr再获取td
                    var tr = $(this).parent().prevAll().parent();
                    var id = tr.children("td:eq(0)").text();
                    var name = tr.children("td:eq(1)").text();
                    var price = tr.children("td:eq(2)").text();
                    /*alert(id)*/
                    var options = $("#tableno option:selected");
                    var tableno = options.val();
                    $.post('/add', {'id': id, 'name': name, 'price': price, "tableno": tableno}, function (data) {
                    })
                });
            });
           //获取a标签
            $("#food").click(function (){
                //获取座号
                var options = $("#tableno option:selected");
                var tableno = options.val();
                //通过链接绑定桌号
                $(this).attr("href","/food/" + tableno);
            });

        });
    </script>
</head>
<style type="text/css">
    #car {
        position: relative;
        top: 50px;
        left: -330px
    }
</style>
<body>
<center>
    <div class="col-lg-6 col-md-6">
        <p class="text-center">
        <h2>点菜信息</h2>
        </p>

        <div class="table-responsive">
            <div style="float:right">
                <a href="#" id="food"><img src="${pageContext.request.contextPath}/static/img/gwc.jpg"/></a>
            </div>
            <table class="table" id="tb">
                <thead>
                <tr>
                    <td>
                        <select id="tableno">
                            <option value="0">请选择桌号：</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>编号</th>
                    <th>菜品名称</th>
                    <th>单价</th>
                    <th> 菜品类型</th>
                    <th>显示图片</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty menus}">
                    <tr class="success">
                    <ul>
                    <c:forEach var="menu" items="${menus}">
                        <tr>
                        <td>${menu.mid}</td>
                        <td>${menu.name}</td>
                        <td>${menu.price}</td>
                        <td>${menu.type}</td>
                        <td><img src="${pageContext.request.contextPath}/static/img/image/${menu.mid}.jpg"/></td>
                        </ul>
                        <td>
                            <button id="btn" class="cd-add-to-cart" type="submit"><img src="${pageContext.request.contextPath}/static/img/add.jpg"/></button>
                        </td>
                    </c:forEach>
                    </tr>

                </c:if>
                </tbody>
            </table>
        </div>
    </div>
    <div class="cd-cart-container empty">
        <a href="#0" class="cd-cart-trigger" id="car">
            Cart
            <ul class="count"> <!-- cart items count -->
                <li>0</li>
                <li>0</li>
            </ul> <!-- .count -->
        </a>

        <div class="cd-cart">
            <div class="wrapper">
                <header>
                    <h2>菜单信息</h2>
                    <span class="undo">Item removed. <a href="#0">Undo</a></span>
                </header>

                <div class="body">
                    <ul>
                        <!-- products added to the cart will be inserted here using JavaScript -->
                    </ul>
                </div>

                <footer>
                    <a href="#0" class="checkout btn"><em>Checkout - $<span>0</span></em></a>
                </footer>
            </div>
        </div> <!-- .cd-cart -->
    </div> <!-- cd-cart-container -->

</center>
<script src="${pageContext.request.contextPath}/static/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>