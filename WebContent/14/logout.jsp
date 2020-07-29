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
<title>Insert title here</title>
</head>
<%
	System.out.println("session id 1: " + session.getId());
//현재 세션을 삭제하고 새로운 세션을 생성
session.invalidate();
System.out.println("session id 2: " + session.getId());
%>
<body>
	<%
		response.sendRedirect(request.getContextPath() + "/");
	%>

	<%-- <%@ include file="/WEB-INF/inc/top.jsp"%> --%>

	<h3>정상적으로 로그아웃되었습니다.</h3>
</body>
</html>