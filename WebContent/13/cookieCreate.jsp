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
	//	cookie.setMaxAge(120); // 2분간 유효시간 설정\
	// cookie.setMaxAge(60*60*24*7); // 1주일간 유효시간 설정
	cookie.setMaxAge(180);
	// path 설정
	cookie.setPath("/"); // /(로컬호스트) or study(application에서만 사용)
	response.addCookie(cookie);	
%>

<a href="cookieView.jsp" class="btn btn-success btn-sm"> 뷰로 이동 </a>
<!-- 같은 폴더 내에서만 쿠키 유지 -->
<a href="../13_2/cookieView.jsp" class="btn btn-success btn-sm"> 13_2 뷰로 이동 </a>

</body>
</html>