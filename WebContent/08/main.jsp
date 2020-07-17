<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>08/main.jsp<%-- <%=hate%> --%></title>
<%@ include file="/WEB-INF/inc/header.jsp"%>


<%-- <% String hate = "배동환" %> --%>

</head>
<body>
	<div class="container">
		<!-- //START : top.jsp -->
		<jsp:include page="/WEB-INF/inc/top.jsp" />
		<!-- //END : top.jsp -->

		<!-- //START : left.jsp -->
		<jsp:include page="/WEB-INF/inc/left.jsp" />
		<!-- //END : left.jsp -->
		<div id="content">

			<h3>다음주 월,화 휴가다~~</h3>
			<form action="other.jsp">
				나이: <input type="number" name="age" min="10" max="99"> <br>
				<button type="submit">제출</button>
			</form>
			<!-- <a href="other.jsp">링크</a> -->

		</div>
		<!-- //START : footer.jsp -->
		<jsp:include page="/WEB-INF/inc/footer.jsp" />
		<!-- //END : footer.jsp -->

	</div>
</body>
</html>