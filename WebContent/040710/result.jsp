<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 출력 스트림의 인코딩을 utf-8로 설정
// response.setContentType("text/html; charset=UTF-8");

// 요청파라미터는 기본이 라틴어입니다.(post)
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04/ result.jsp</title>
</head>
<body>
	<h3>클라이언트 정보</h3>
	IP:
	<%=request.getRemoteAddr()%><br> 웹경로:
	<%=request.getContextPath()%><br> 요청URI:
	<%=request.getRequestURI()%><br> URL:
	<%=request.getRequestURL()%><br>
	<hr>
	<h3>요청 파라미터 정보</h3>
	kind:
	<%=request.getParameter("kind")%><br> bad:

	<%=request.getParameter("bad")%>

	<h3>요청 헤더 정보</h3>
	사용자 브라우저 정보 : <%=request.getHeader("User-Agent")%><br>
	요청 페이지 : <%=request.getHeader("Referer") %><br>


</body>
</html>