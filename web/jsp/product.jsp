
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="title" value="${product.name} - 产品页" />
<%@include file="include/header.jsp"%>
<%@include file="include/top.jsp"%>
<%@include file="include/simpleSearch.jsp"%>
<%@include file="include/product/productTop.jsp"%>
<%@include file="include/product/productCenter.jsp"%>
<%@include file="include/product/productBottom.jsp"%>
<%@include file="include/footer.jsp"%>
