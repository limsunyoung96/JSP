<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03/ love.jsp</title>
</head>
<body>
	<h3>말자야 사랑해!!! 3번 출력</h3>
	<%
		out.print(love(3, "말자"));
	%>

	<h3>다음날 주무관이 "말자야 사랑해!!!" 5번 출력</h3>
	<%=love(5, "말자")%>
	<br>

	<h3>다음날 주무관이 "순자야 사랑해!!!" 2번 출력</h3>
	<%=love(2, "순자")%>
	<br>

	<%=name%>
</body>
</html>
<%!private String name = "Milkis";

	public String love(int cnt, String name) {
		String result = "";
		for (int i = 0; i < cnt; i++) {
			result += name + "야 사랑해!!! <br>";
		}
		return result;
	}
	/* OOP(객체지향 프로그램): 하나의 메소드 이름과 return 을 동일하게.
								단, 파라미터의 타입 또는 갯수가 다른 것
								override(정답), overloading, aop, di, mvc
								*/%>