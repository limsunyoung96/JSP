<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05/result3.jsp</title>
</head>
<body>
	<%
		// hobby가
	// book : 헤더에 "APP_CLIENT_ID" 이때 개발자 모드에서 응답헤더
	// game : 500 에러를 전송
	// movie : /index.jsp 리다이렉트
	// sport : 그냥 출력

	String hobby = request.getParameter("hobby");
	if (hobby != null) {
		switch (hobby) {
		case "book":
			response.setHeader("APP_CLIENT", UUID.randomUUID().toString());
			break;
		case "game":
			response.sendError(500, "얼레리꼴레리 에러났대요~");//HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			break;
		case "movie":
			response.sendRedirect("../index.jsp");
			break;
		case "sport":
			out.print(hobby + "<br>");
		}
	}
	%>

</body>
</html>