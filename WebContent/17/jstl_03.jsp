<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>jstl_03.jsp</title>
</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp" %>
<div class="container">
<h4>if문</h4>
<p>JSTL 의 if문에 else 가 없습니다. 여러번 if 사용하셔야 합니다.</p>
<p>사용하시는 프레임워크에서 if ~ else 가 있을 수 있습니다.</p>
<c:set var="jumsu" value="89" />
<!-- 90 이상 "수", 80 이상 "우", 70 이상 "미", 70미만이면 "너 낳고 미역국 먹은 내가 잘못이당." -->
<c:if test="${jumsu >= 90}">
수
</c:if>
<c:if test="${jumsu >= 80 && jumsu < 90 }">
우
</c:if>
<c:if test="${jumsu ge 70 and jumsu lt 80}">
미
</c:if>
<c:if test="${jumsu < 70}">
너 낳고 미역국 먹은 내가 잘못이당
</c:if>

<h4>choose문</h4>
<!-- switch(){ 
			case ex1 : .... ; break;
			case ex2 : .... ; break;
			default : .....;
  -->
<c:choose>
	<c:when test="${jumsu >= 90 }">수</c:when>
	<c:when test="${jumsu >= 80 }">우</c:when>
	<c:when test="${jumsu >= 70 }">미</c:when>
	<c:otherwise>너 낳고 미역국 먹은 내가 잘못이당</c:otherwise>
</c:choose>

</div> <!-- container -->
</body>
</html>



