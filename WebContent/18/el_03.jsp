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
<title>18/ el_01.jsp</title>
</head>
<body>
<%@ include file ="/WEB-INF/inc/top.jsp" %>
<div class = "container">
<h3> JSP 2.3에서 새롭게 등장한 기능</h3>
<h4>문자열 연결</h4>
<c:set var="msg1" value="요즘 날씨가 더워졌어요"/>
<c:set var="i">춥기도 한 것 같은데...</c:set>
<pre>
	${msg1 +="....."+=i}<br>
	${msg1}....${i}
</pre>
<h4>EL내에서 직접 컬랙션 생성</h4>
<pre>
	EL내에서 [e1, e2, ..] 리스트
	EL내에서 {K1 : v1, K2 : v2, ..} 맵
	EL내에서 {e1, e2, .. } set : e1(리스트, 맵) 
</pre>
<pre>
	<%-- <c:forEach items="${['임소뇽','박성욘','호내윤']}" var="v">
		${v}
	</c:forEach> --%>
</pre>
<c:set var="map" value="${{'소뇽':'내 이름이 뭐라고~?','제리':'오줌똥쟁이야 방구쟁이기도 하지'}}"/>
<c:forEach items="${map}" var="entry">
${entry.key} : ${entry.value}" <br>
</c:forEach>

<h4>할당연산자 <small>변수생성 및 값 설정 가능 </small></h4>
${i=1004; j=4; ""}
<pre>
${i}
${j}
</pre>

</div> <!-- container -->
</body>
</html>