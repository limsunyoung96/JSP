<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03/ today.jsp</title>
</head>
<body>
	<%
		java.util.Calendar cal = java.util.Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	%>

	<span> 오늘은 <%
		out.println(sdf.format(cal.getTime()));
	%>
	</span>
	<br>
	<span> 오늘은 <%=sdf.format(cal.getTime())%>
	</span>

</body>
</html>