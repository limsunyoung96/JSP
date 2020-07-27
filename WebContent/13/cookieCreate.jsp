<%@page import="java.net.URLEncoder"%>
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
<title>13/ cookieCreate.jsp</title>
</head>
<body>
<h4>쿠키 생성할게요.</h4>
<%
	Cookie cookie = new Cookie("mycookie", URLEncoder.encode("Today 많이 졸려","utf-8"));
	// 유효시간 설정
	cookie.setMaxAge(120); // 2분간 유효시간 설정
	response.addCookie(cookie);	
%>

<a href="cookieView.jsp" class="btn btn-success btn-sm"> 뷰로 이동 </a>
</body>
</html>