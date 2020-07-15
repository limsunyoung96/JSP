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
<title>Insert title here</title>
</head>
<body>
	<h3>사용자 정보</h3>
	<ul>
		<li>사용자 IP: <%=request.getRemoteAddr()%><br>
		<li>사용자 브라우저 정보 (User-Agent): <%=request.getHeader("User-Agent")%><br>
		<% System.out.println(request.getHeader("User-Agent")); %>
	</ul>
	<h3>사용자가 입력한 정보(파라미터)</h3>
	<ul>
		<li>아이디: <%=request.getParameter("id")%>
		<li>비밀번호: <%=request.getParameter("pw")%>
		<li>성별: <%=request.getParameter("gender")%>
		<li>나이: <%=request.getParameter("age")%>
		<li>취미: <%=request.getParameter("hobby")%>
		<li>자기소개: <%=request.getParameter("intro")%>
	</ul>
</body>
</html>