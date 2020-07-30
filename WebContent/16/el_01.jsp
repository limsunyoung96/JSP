<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>16/ 3l_01.jsp</title>
</head>
<body>
<%@ include file ="/WEB-INF/inc/top.jsp" %>
<div class = "container">
<%
	// 앞 페이지에서 저장한 정보	
	UserVO vo = new UserVO("lim","착한선영","1111","MEMBER");
	request.setAttribute("user", vo);
	
	// 포워드 된 현재 페이지
	UserVO v = (UserVO)request.getAttribute("user");
%>
<pre>
v= <%= v%>
	<%-- 아이디 : <%=v.getUserId() %>
	이름 : <%=v.getUserName() %> --%>
	<hr>
	<!-- null이 들어와도 밑에는 오류 없이 빈공간으로 나옴 -->
	user : ${user}
	아이디 : ${user.userId}
	이름 : ${user.userName}
</pre>
</div> <!-- container -->
</body>
</html>