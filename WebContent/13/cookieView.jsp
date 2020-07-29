<%@page import="com.study.common.util.CookieUtils"%>
<%@page import="java.net.URLDecoder"%>
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
<title>13/ cookieView.jsp</title>
</head>
<body>

	<h3>쿠키 확인</h3>
	<%--
		Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		out.println("<ul>");
		for (int i = 0; i < cookies.length; i++) {
			Cookie c = cookies[i];
			out.println("<li>");
			out.println(c.getName() + ", ");
			out.println(c.getDomain() + ", ");
			out.println(URLDecoder.decode(c.getValue(), "utf-8"));
		}
		out.println("</ul>");
	} else {
		out.println("쿠키 없어요...ㅠㅠ");
	}
	--%>

	<%
		CookieUtils cookieUtils = new CookieUtils(request);
	%>

	mycookie의 값 <%=cookieUtils.getValue("mycookie") %>body>
</html>