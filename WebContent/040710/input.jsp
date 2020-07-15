<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04/ input.jsp</title>
</head>
<body>
	<h4>두 수 사이의 합을 조회</h4>
	<form action="sum.jsp">
		숫자 1: <input type="text" name="num1" value=""><br> 숫자 2:
		<input type="text" name="num2" value=""><br>
		<button type="submit">계산</button>
	</form>

	<%--sum.jsp 구현
		두 개의 파라미터를 받아서 처리
		숫자 1, 숫자 2
		1과 10 입력 
		"1부터 10까지의 합은 55입니다." 
		10과 15를 입력
		"10부터 15까지의 합은 2565입니다."
	--%>
</body>
</html>