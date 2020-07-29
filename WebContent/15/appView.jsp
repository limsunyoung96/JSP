<%@page import="com.study.login.vo.UserVO"%>
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
<title>15/ appView.jsp</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<%
		String url = (String) application.getAttribute("DB.URL");
	%>
	url = <%= url %>
	<hr>
	<%
		UserVO vo = (UserVO)session.getAttribute("USER_INFO");
	%>
	로그인 사용자 <br>
	이름: <%=vo.getUserName() %><br>
	역할: <%=vo.getUserRole() %><br>
</body>
</html>