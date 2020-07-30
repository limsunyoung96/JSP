<%@page import="com.study.common.vo.ProdVO"%>
<%@page import="com.study.common.util.ProductList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="malja" uri="http://java.sun.com/jsp/jstl/core"%>
<%
 	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>16/ jstl_for.jsp</title>
</head>
<body>
<%@ include file ="/WEB-INF/inc/top.jsp" %>
<div class = "container">
<c:forEach begin="1" end="10" var="i">
	${i} <br>
</c:forEach>
<hr>
<malja:forEach begin="1" end="10" var="i" step="2">
	${i} <br>
</malja:forEach>
<hr>
<c:set var="list" value="<%=ProductList.getProductList() %>" />
<%--
	// 위 코드는 아래와 동급
	List<ProdVO> kkk = ProductList.getProductList();
	request.setAttribute("list2", kkk);
--%>
<c:forEach var="prod" items="${list}" varStatus="lsy">
	${lsy.count}, ${lsy.first}, ${lsy.last}, ${prod.prodId}, ${prod.prodName} <br>
	<c:if test="${lsy.count %3==0}">
		<hr>
	</c:if>
</c:forEach>



</div> <!-- container -->
</body>
</html>