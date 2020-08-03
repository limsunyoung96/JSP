<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
 	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>18/ el_05.jsp</title>
</head>
<body>
<%@ include file ="/WEB-INF/inc/top.jsp" %>
<div class = "container">
<h3>EL에서 제공하는 기본객체</h3>
<pre>
	ip: <%=request.getRemoteAddr() %>
	ip2: <%=pageContext.getRequest().getRemoteAddr() %>
	user-agent: <%=request.getHeader("user-agent")%>
	param: <%=request.getParameter("msg")%>
</pre>
<pre>
	ip: ${pageContext.request.remoteAddr}
	user-agent: ${header["user-agent"]}
	param: ${param.msg}
	cookie: ${cookie.SAVE_ID.value}, ${cookie.SAVE_ID.name}
</pre>

<h3>EL에서 객체 탐색</h3>
<c:set var="hate" value="벌레"/> <!-- scope: default는 page -->
<c:set var="hate" value="모기" scope="request"/>
<%
	session.setAttribute("hate", "더위");
%>
<pre>
	\${hate} = ${hate}
	\${requestScope.hate} = ${requestScope.hate}
	\${sessionScope.hate} = ${sessionScope.hate}
</pre>
<div class="alert alert-info">
	세션영역이상은 scope을 붙여주세요
</div>

</div> <!-- container -->
</body>
</html>