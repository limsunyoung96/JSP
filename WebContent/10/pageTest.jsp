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
<body>
	<h3>request</h3>
	<ul>
		<li>사용자 IP: <%=request.getRemoteAddr()%>
		<li>컨텍스트 패스: <%=request.getContextPath()%>
		<li>uri: <%=request.getRequestURI()%>
		<li>url: <%=request.getRequestURL()%>
	</ul>

	<h3>pageContext 에서 request 구해서</h3>
	<%
		HttpServletRequest myReq = (HttpServletRequest) pageContext.getRequest();
	%>
	<ul>
		<li>사용자 IP: <%=pageContext.getRequest().getRemoteAddr()%>
		<li>컨텍스트 패스: <%=myReq.getContextPath()%>
		<li>uri: <%=myReq.getRequestURI()%>
		<li>url: <%=myReq.getRequestURL()%>
	</ul>


	<h3>(EL)pageContext 에서 request 구해서</h3>
	<%--  EL : 표현언어, 기존의 표기법이외에 별도의 표기법, ${ } --%>
	<ul>
		<li>사용자 IP: <%=pageContext.getRequest().getRemoteAddr()%>
		<li>사용자 IP: ${pageContext.request.remoteAddr}
		<li>컨텍스트 패스: ${pageContext.request.contextPath}
		<li>uri: ${pageContext.request.getRequestURI()
		<li>url: ${pageContext.request.getRequestURL()
	</ul>

</body>
</html>