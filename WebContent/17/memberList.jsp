<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>17/ memberList.jsp</title>
</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp" %>
<div class="container">
<%
	// 1. 드라이버 로딩
	OracleDriver driver = new OracleDriver();

	Connection conn = null;
	Statement  stmt = null;
	ResultSet  rs = null;
	
	// 2. 커넥션 구하기 
	conn = DriverManager.getConnection(
			 "jdbc:oracle:thin:@127.0.0.1:1521:xe", "java", "oracle");
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery("select * from member");
%>
	<table class="table table-border">
	<%
		while(rs.next()){
	%>
		<tr>
			<td><%=rs.getString("mem_id") %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString("mem_hp") %></td>		
		</tr>	
	<%
		} 
	%>
	</table>
<%
	// 자원 반납 
	if( rs != null ) rs.close();
	if( stmt != null ) stmt.close();
	// * 커넥션은 꼭 반납하셔야 합니다.
	if( conn != null ) conn.close(); 
%>










</div> <!-- container -->
</body>
</html>