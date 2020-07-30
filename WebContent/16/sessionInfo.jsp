<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>16/ sessionInfo.jsp</title>
</head>
<body>
<%@ include file ="/WEB-INF/inc/top.jsp" %>
<div class = "container">
세션 ID : <%=session.getId() %> <br>
<%
	long time = session.getCreationTime();
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	date.setTime(session.getCreationTime());
	out.println("생성시간: " + formatter.format(date) + "<br>");
	
	date.setTime(session.getLastAccessedTime());
	out.println("최근 접근 시간: " + formatter.format(date) + "<br>");
	
	out.println("유지 시간: " + session.getMaxInactiveInterval() + "<br>");
	
%>
time : <%= time %> <br>

</div> <!-- container -->
</body>
</html>