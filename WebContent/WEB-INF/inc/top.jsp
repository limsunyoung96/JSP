<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- top-->

<div id="top-menu">
	<ul>
		<li class="home"><a
			href="<%=request.getContextPath()%>/index.jsp">Home</a>
		<li>게시판 관리
		<li>회사 소개 <%=request.getParameter("age")%>
		<li><%=request.getParameter("result")%>
		<li><%=request.getParameter("likes")%>
		 <%
 	List<String> hate = (List) request.getAttribute("hate");
 if (hate != null) {
 	for (String x : hate) {
 		out.println("<li>" + x);
 	}
 }
 %>
	</ul>
</div>
