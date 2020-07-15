<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/ main.jsp</title>
</head>
<body>
	<h3>Main.jsp</h3>
	<a href="mid1.jsp">mid1 요청</a>
	<br>
	<form action="mypage.jsp">
		나이: <input type="number" name="id_age" min="10" max="99"> <br>
		<button type="submit">제출</button>
	</form>
	<%
		
	%>

	<%--
	<a href="mid1.jsp">mid1 요청 </a>
	<%
		String user = "milkis";
	String role = "Manager";
	%>
	<hr>
	<!--  XML 주석
	<%=user%>님 방가, 당신의 롤은 <%="DYN이 T1 이겼어요"%>
	--> --%>
	<%--<%=user%>님 방가, 당신의 롤은 <%="DYN이 T1 이겼어요"%> --%>
</body>
</html>