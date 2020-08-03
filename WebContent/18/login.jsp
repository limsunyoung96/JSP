<%@page import="com.study.common.util.CookieUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
 	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<%-- <fmt:setLocale value="en" scope="session"/> --%>
<fmt:bundle basename="resource.message" prefix="login.">
<head>
<meta charset=UTF-8">
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title><fmt:message key="title"/></title>
</head>
<body>
	<%@ include file ="/WEB-INF/inc/top.jsp" %>
	<div class="container">
	<div>
		<a href="localeChange.jsp?lang=en" class="btn btn-sm">ENG</a>
		<a href="localeChange.jsp?lang=ko" class="btn btn-sm">한국어</a>
		<a href="localeChange.jsp?lang=cn" class="btn btn-sm">中文</a>
		<a href="localeChange.jsp?lang=fr" class="btn btn-sm">français</a>			
	</div>
		<form action="loginCheck.jsp" class="loginForm">
			<h2><fmt:message key="title"/></h2>
			<c:set var="user" value='<%=new UserVO("malja","말자사랑","1004","ADMIN") %>'/>
			<fmt:message key="info">
				<fmt:param value="${user.userRole}"/>
				<fmt:param value="${user.userId}"/>
				<fmt:param value="${user.userName}"/>
			</fmt:message>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th><fmt:message key="id"/></th>
						<td><input type="text" name="userId" class="form-control input-sm" value=""
									placeholder=<fmt:message key="id.placeholder"/>></td>
					</tr>
					<tr>
						<th><fmt:message key="passwd"/></th>
						<td><input type="password" name="userPass" class="form-control input-sm"
									placeholder=<fmt:message key="passwd.placeholder"/>></td>
					</tr>
					<tr>
						<td colspan="2">
						<label><input type="checkbox" name="rememberMe" value="Y" > <fmt:message key="remember"/></label></td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" class="btn btn-primary btn-sm pull-right"><fmt:message key="btn.submit"/></button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- container -->
</body>
</fmt:bundle>
</html>