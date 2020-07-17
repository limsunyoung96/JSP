<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>BLACKPINK</title>
</head>
<body>
	<h1>BLACKPINK</h1>
	<h3>클라이언트 정보 및 선택한 걸그룹</h3>
	<ul>
		<li>ip : <%=request.getRemoteAddr()%>
		<li>url : <%=request.getRequestURI()%>
		<li>user-agent :<%=request.getHeader("user-agent")%>
		<li>걸그룹 : <%=request.getParameter("girls")%>
	</ul>

	<h3>BLACKPINK 소개</h3>
	<img alt="aoa" src="<%=request.getContextPath()%>/images/blackpink.gif" width="300"><bR>
	소속사 :	<%=request.getParameter("agency")%><br>
	<h4>멤버</h4>
	<%
		List<String> li = (List) request.getAttribute("members");
	
	out.println("<ol>") ;
	for(String x: li){ 
		out.println("<li>");
		out.println(x);
	} 
	out.println("</ol>");%>
	
	<br> 2019년 수입액 <%=request.getParameter("income") %>
	
</body>
</html>

