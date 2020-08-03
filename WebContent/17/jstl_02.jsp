<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>17/ jstl_02.jsp</title>
</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp" %>
<div class="container">
<c:set var="user" value='<%=new UserVO("malja", "말자사랑", "1004", "ADMIN") %>'  />
<c:set var="i" value="1000" />
<c:set var="j" value="${i + 4}" /> <!-- userRole : GUEST 로 변경, user.setUserRole("GUEST");  -->
<c:set target="${user}" property="userRole" value="GUEST" />
<pre>
${user.userName} ,${user.userId}
${i} , ${j}
${user.userRole}
<!-- 현재 i 가 1000 입니다., 현재 i의 값에 999를 더해서 i를 설정하세요 -->
<c:set var="i" value="${i + 999}"/>
${i}
</pre>

<h4>1 부터 100까지 짝수의 합을 구하세요 </h4>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="2" end="100" step="2" >
	<c:set var="sum" value="${sum + i}"/>
</c:forEach>
짝수의 합 ${sum} <br> 
<!-- 
  i = 1000;
  i = i + 999;
 -->

</div> <!-- container -->
</body>
</html>