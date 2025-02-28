<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>
<c:if test="${!empty user}">
    <script>
    $(function() {
    $.get("cartNumber",function(result) {
        var number = Number(result);
        if(number>-1){
            $("#cart-number").text(number);
    }
    });
    });
    </script>
</c:if>
<nav class="top">
    <div class="top-bar">
        <span class="top-left">
            <c:if test="${empty home}">
            <span><span class=" glyphicon glyphicon-home redColor"></span><a href="/${contextPath}">校园商城首页</a></span>
            </c:if>
            <span>hi，欢迎来到校园商城</span>

            <c:if test="${!empty user}">
                ${user.name}
                <a href="logout">退出</a>
            </c:if>
            <c:if test="${empty user}">
                <a href="login">请登录</a>
                <a href="register">免费注册</a>
            </c:if>
        </span>

        <span class="pull-right">
            <c:if test="${!empty user}">
            <a href="myOrder">我的订单</a>
            </c:if>
            <a href="cart"><span class=" glyphicon glyphicon-shopping-cart redColor"></span>
                购物车<c:if test="${!empty user}"><strong id="cart-number">0</strong>件</c:if></a>
            <c:if test="${user.group=='admin' || user.group=='superadmin'}">
                <a href="admin/">商城后台</a>
            </c:if>
        </span>
    </div>
</nav>