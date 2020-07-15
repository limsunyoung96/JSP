<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04/ sum.jsp</title>
</head>
<body>
	<%=sum(Integer.parseInt(request.getParameter("num1")), Integer.parseInt(request.getParameter("num2")))%>

</body>
</html>
<%!public String sum(int startNum, int endNum) {
		int sum = 0;
		for (int i = startNum; i <= endNum; i++) {
			sum += i;
		}
		return startNum + "부터 " + endNum + "까지의 합은 " + sum + "입니다.";
	}%> 