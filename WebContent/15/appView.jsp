<%@page import="java.util.Enumeration"%>
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
	
	<ol>
<%
	Enumeration<String> en = application.getAttributeNames();
	while(en.hasMoreElements()){
		String key = en.nextElement();
%>
	<li><%=key %> : <%=application.getAttribute(key) %>
	
<%
	}
%>	
</ol>
	
	
	
	<%
		UserVO vo = (UserVO)session.getAttribute("USER_INFO");
	if(vo != null){
	%>
		로그인 사용자 <br>
		이름: <%=vo.getUserName() %><br>
		역할: <%=vo.getUserRole() %><br>
	<%
	}
	%>
</body>
</html>