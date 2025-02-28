<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header class="product">
    <a href="/${contextPath}" class="logo">
        <img src="img/logo2.png">
    </a>
    <div class="search">
        <form action="search" >
        <input type="text" placeholder="搜索 商品/品牌/店铺" name="keyword">
        <button class="search-button" type="submit">搜索</button>
        </form>
        <ul class="search-below">
            <c:forEach items="${categories}" var="c" varStatus="vs">
                <li><a href="category?cid=${c.id}">${c.name}</a></li>
            </c:forEach>
        </ul>

    </div>

</header>