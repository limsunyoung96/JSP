<%@page import="com.study.common.util.StudyFileUtil"%>
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
<title>18/ el_04.jsp</title>
</head>
<body>
<%@ include file ="/WEB-INF/inc/top.jsp" %>
<div class = "container">
<h3>객체의 메서드 호출</h3>
<c:set var="user" value ='<%=new UserVO("milkis","사랑헤여","1004","ADMIN") %>'></c:set>
<pre>
	${user.userId}
	${user.getUserId()}
	${user.setUserName("ㅎㅇ")}
	${user.userName}
</pre>
<h3>클래스의 정적메서드 호출(jsp 2.3)</h3>
<pre>
	\${StudyFileUtil.fancySize(897)} = ${StudyFileUtil.fancySize(897)}
	\${StudyFileUtil.fancySize(20109)} = ${StudyFileUtil.fancySize(20109)}
	\${StudyFileUtil.fancySize(2414476)} = ${StudyFileUtil.fancySize(2414476)}
</pre>

</div> <!-- container -->
</body>
</html>