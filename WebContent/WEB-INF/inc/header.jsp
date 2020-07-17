<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- header.jsp 
	 js, css, 일부 헤더 --%>

<!-- 어플리케이션에서 요청하는 것은 study/를 쓰지 않아도 괜찮지만 main.css(header.jsp안에 있음)는 study/가 필요함 -->
<link href="<%=request.getContextPath()%>/css/main.css"
	rel="stylesheet">