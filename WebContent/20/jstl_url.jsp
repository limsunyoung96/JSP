<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
 	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>20/ jstl_url.jsp</title>
</head>
<body>
<%@ include file ="/WEB-INF/inc/top.jsp" %>
<div class = "container">
<pre>
	<a href="<%=request.getContextPath()%>/14/login.jsp">로그인</a>
	<a href="${pageContext.request.contextPath}/14/login.jsp">로그인</a>
	<a href='<c:url value="/14/login.jsp"/>'>로그인</a>
	<c:url value="/download/down.jsp" var="down">
		<c:param name="fileId" value="2254558"/>
		<c:param name="type" value="json"/>
	</c:url>
	<a href="${down}">파일 다운로드</a>
</pre>

<c:set var="msg">
장난좀 쳐볼까?
<script>alert("이 사이트는 폐쇄되었습니다.")</script>
</c:set>

\${msg}<br>
<c:out value="${msg}" escapeXml="true"/>
<c:set var="today" value="<%=new Date() %>"/>
<c:set var="money" value="256500000"/>

<pre>
	${money}
	<fmt:formatNumber value="${money}"/>
	<fmt:formatNumber value="${money}" type="currency"/>
	<fmt:formatNumber value="${money}" pattern="#,##,##,##,##.00"/>
	
	${today}
	<fmt:formatDate value="${today}"/>
	<fmt:formatDate value="${today}" type="time"/>
	<fmt:formatDate value="${today}" dateStyle="full"/>
	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd HH:mm:ss"/>
</pre>


</div> <!-- container -->
</body>
</html>