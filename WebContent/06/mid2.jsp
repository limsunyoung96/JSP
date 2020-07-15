<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("utf-8");%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/mid2.jsp</title>
</head>
<body>
	<%
		String msg = request.getParameter("msg");
	String result = request.getParameter("result");
	%>
	결과 <br>
	msg: <%=msg%><br> 
	result: <%=result%><br>
</body>
</html>