<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int age = Integer.parseInt(request.getParameter("id_age"));
	IsError(age);
	%>

	입력하신 나이는
	<%=age%>입니다.
</body>
</html>
<%!public void IsError(int age) {
		if (age < 30) {
			throw new ClassCastException("너무 나이 많아");
		}
		if (age % 2 == 0) {
			throw new IndexOutOfBoundsException("나이 짝수");
		}
	}%>