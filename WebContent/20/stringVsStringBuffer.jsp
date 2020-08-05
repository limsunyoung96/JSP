<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>20/ stringVsStringBuffer.jsp</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<%
			long startTime = System.currentTimeMillis();
		String str = "";
		for (int i = 1; i < 10000; i++) {
			str += "사랑해요!! " + i;
		}
		out.println(str);
		out.println("<br>");
		System.out.println("수행시간: " + (System.currentTimeMillis() - startTime) + "ms</br>");
		//---------------------------------------
		startTime = System.currentTimeMillis();
		StringBuffer sb = new StringBuffer();
		
		for (int i = 1; i < 10000; i++) {
			sb.append("사랑해요!! " + i);
		}
		out.println(sb.toString());
		out.println("<br>");
		System.out.println("수행시간: " + (System.currentTimeMillis() - startTime) + "ms</br>");
		
		%>




	</div>
	<!-- container -->
</body>
</html>