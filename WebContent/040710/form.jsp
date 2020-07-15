<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04/ form.jsp</title>
</head>
<body>
	<h3>아래 항목에 답변해주세요!</h3>
	<form action="result.jsp" method="post">
		이 반에서 가장 착한사람: <input type="text" name="kind" value=""> <br>

		이 반에서 가장 나쁜사람: <input type="text" name="bad" value=""> <br>
		<button type="submit">제출</button>

	</form>
	<hr>
	<%
		String app_path = request.getContextPath();
	%>
	<script type="text/javascript" src=""></script>
	다미1
	<img alt="다미1" src="../images/pig01.jpg">
	<br> 다미2
	<img alt="다미2" src="<%=app_path%>/images/pig01.jpg">
	<br> 다미3
	<img alt="다미3" src=".././030709/../040710/././../images/pig01.jpg">
	<br> 다미4
	<img alt="다미4" src="<%=app_path%>/images/pig01.jpg">
	<br> 다미5
	<img alt="다미5" src="http://localhost:8080/study/images/pig01.jpg">
	<br>

</body>
</html>