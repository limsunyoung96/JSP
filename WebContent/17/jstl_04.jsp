<%@page import="java.util.Map"%>
<%@page import="com.study.common.util.UserList"%>
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
<title>jstl_04.jsp </title>
</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp" %>
<div class="container">
<h3>단순 for문 </h3>
<%
	// 단순 for 
	for(int i = 1; i <= 10; i++){
		out.println(i);
	}
%>
<hr>
<c:forEach var="i" begin="1" end="10">
	${i}
</c:forEach>

<h3>배열 for문 </h3>
<%
	String[] st = {"창희선생님", "임선영엄마", "나리누나"};
/*   
  int len = st.length;
  for(int i =0; i< len; i++){
	  out.println(st[i]);
  } */
  for(String a : st){
	  out.println(a);
  }
%>
<hr>
<c:set var="hates" value="<%=st%>" />
<c:forEach items="${hates}" var="na">
	${na}
</c:forEach>

<h3>List for문 </h3>
<%	
	List<UserVO> users = (new UserList()).getUserList();
	for(UserVO vo  : users ){
		out.println(vo.getUserId() + ", " + vo.getUserName() + "<br>");
	}
%>
<hr>
<c:forEach items="<%=users %>" var="vo"  >
	${vo.userId} , ${vo.userName} <br>
</c:forEach>

<h3>Map for문 </h3>
<p>Map인 경우 Map.Entry 객체를 통해서 객체에 접근합니다.</p>
<%
	Map<String, UserVO> myMap = (new UserList()).getUsersMap();
	for(Map.Entry<String, UserVO> entry : myMap.entrySet()){
		// UserVO vo = entry.getValue();
		out.print(entry.getKey() + " : " + entry.getValue().getUserId() + ", " 
		           + entry.getValue().getUserRole() + "<br>");
	}
%>
<hr>

<c:forEach items="<%=myMap%>" var="entry">
	${entry.key }	: ${entry.value.userId }, ${entry.value.userRole } <br>
</c:forEach>







</div> <!-- container -->
</body>
</html>






