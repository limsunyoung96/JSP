<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>17/ el_02.jsp </title>
</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp" %>
<div class="container">
<h3>EL에서 제공하는 간단한 연산</h3>
<h4>산술연산</h4>
<%
	pageContext.setAttribute("i", 1000);
	pageContext.setAttribute("j", 4);
%>
<div class="alert alert-success">
	java 에서 문자열에 <code>+</code>연산자는 문자열 더하기<br>
	EL에서 <code>+</code>연산자는 <b>오직 산술연산자입니다.</b> 
</div>
<c:catch var="ex">
	<pre>
	&#x0024;{i + j} = ${i + j}
	\${i + 23} = ${i + 23}
	\${i / j} = ${i div j}
	\${5 % j} = ${5 mod j}
	
	${"1000" + 4}
	\${"천" + 4}  
	</pre>
</c:catch>

<c:if test="${not empty ex}">
	${ex.message}
</c:if>


<h4>논리, 비교 연산</h4>
<pre>
\${i == 1000} = ${i == 1000}
\${i ge 5000} = ${i ge 5000}

\${i > 100 && j > 3} = ${i > 100 && j > 3}
\${i gt 100 and j gt 3} = ${i gt 100 and j gt 3}
\${i > 100 or j > 30} = ${i gt 100 or j gt 30}
</pre>

</div> <!-- container -->
</body>
</html>


