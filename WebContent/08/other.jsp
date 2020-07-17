<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.nio.charset.Charset"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08/other.jsp</title>
<%@include file="/WEB-INF/inc/header.jsp"%>

</head>
<body>
	<div class="container">
		<%
			int age = Integer.parseInt(request.getParameter("age"));
		List list = new ArrayList();

		String res = "애기";
		if (age < 20) {
			res = "청소년";
			list.add("로제");
			list.add("다미");
		} else if (age < 30) {
			res = "청년";
			list.add("말자");
			list.add("순자");
			list.add("놀자");
			list.add("하자");
		} else {
			res = "노인네";
			list.add("박성연");
			list.add("허내윤");
			list.add("임선영");
			list.add("천영주");
		}
		/* System.out.println(list.toString()); */
		request.setAttribute("hate", list);
		%>
		<!-- //START : top.jsp -->
		<!-- 어플리케이션에서 요청하는 것은 study/를 쓰지 않아도 괜찮지만 main.css(header.jsp안에 있음)는 study/가 필요함 -->
		<jsp:include page="/WEB-INF/inc/top.jsp">
			<jsp:param value="<%=res%>" name="result" />
			<jsp:param value="<%=list%>" name="likes" />
		</jsp:include>
		<!-- //END : top.jsp -->

		<!-- //START : left.jsp -->
		<jsp:include page="/WEB-INF/inc/left.jsp" />
		<!-- //END : left.jsp -->

		<div id="content">

			<h3>세상은 재밌어여</h3>
			<p>난 애인이 있지 캬캬켜켜쿄쿄</p>

		</div>

		<!-- //START : footer.jsp -->
		<jsp:include page="/WEB-INF/inc/footer.jsp" />
		<!-- //END : footer.jsp -->

	</div>
</body>
</html>