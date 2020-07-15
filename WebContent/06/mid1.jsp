<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page buffer="none"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/ mid1.jsp</title>
</head>
<body>
	<%
		// 리다이렉트 전에 이미 8K 이상의 내용으로 이미 출력이 됐다면
	/* 	// 버퍼사이즈를 늘려서 에러가 안노오도록 하면 된다.  
	for (int i = 0; i < 1000; i++) {
		out.println("hello World I Love yous Milkis!!!!<br>");
	} */
	/* out.flush(); */

	// mid2.jsp?msg=홍길동&result=false
	// 리다이렉트의 문제점
	// 리다이렉트 이후 새로고침(F5)을 하면 그대로 재요청을 하죠
	 response.sendRedirect("mid2.jsp?msg=" + URLEncoder.encode("홍길동", "utf-8") + "&result=false"); 

	// forward(서버 내부적으로 요청을 제어)
	// pageContext.forward("mid2.jsp?msg=홍길동&result=false");
	%>
</body>
</html>