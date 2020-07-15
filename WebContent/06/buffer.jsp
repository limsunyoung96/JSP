<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06/buffer.jsp</title>
</head>
<body>
	<%
		// 혹시 기존 버퍼내용을 지우고자 한다면
	out.clearBuffer();
	%>
	<ul>
		<li>버퍼 사이즈 <%=out.getBufferSize()%>
		<li>남은 버퍼 <%=out.getRemaining()%>
		<li>자동 플래시 여부 <%=out.isAutoFlush()%>
	</ul>
	<%
		out.flush();
	// 복잡한 작업(외부 API 연계, 복잡한 DB 쿼리 호출)
	delay();
	%>

	<ol>
		미운 사람들
		<li>임선영1
		<li>임선영2
		<li>임선영3
		<li>임선영4
		<li>임선영5
	</ol>

	<%!public void delay() throws Exception {
		Thread.sleep(5000);
	}%>
</body>
</html>