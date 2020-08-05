<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>20/ jstl_fn.jsp</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
	<c:set var="msg" value="Hello 고양이"/>
	<pre>
	${fn:length(msg)}
	${fn:startsWith(msg,"H") }
	${fn:toUpperCase(msg)}
	</pre>
	<h3>JSP2.2 부터 스테틱 메서드 직접 호출 가능</h3>
	<pre>
	${msg.length()}
	${msg.startsWith("H")}
	${msg.toUpperCase()}
	</pre>
	
	</div>
	<!-- container -->
</body>
</html>