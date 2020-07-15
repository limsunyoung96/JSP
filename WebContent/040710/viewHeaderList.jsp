<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04/ viewHeaderList</title>
</head>
<body>
	<%
		Enumeration headerEnum = request.getHeaderNames();
	while (headerEnum.hasMoreElements()) {
		String headerName = (String) headerEnum.nextElement();
		String headerValue = request.getHeader(headerName);
		out.println(headerName + " = " + headerValue + "<br>");
	}
	%>

</body>
</html>