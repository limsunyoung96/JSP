<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>ManyconnManyJob4DBCP.jsp</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<h3>회원목록</h3>
		<%
			long startTime = System.currentTimeMillis();
		//1. 드라이버 로딩
		for (int i = 0; i < 18; i++) {
			//변수 선언
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;

			//2. 커넥션 구하기
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:study");

			// 3. 구름 객체 생성
			stmt = conn.createStatement();

			rs = stmt.executeQuery("SELECT * FROM member WHERE rownum=1");
			if (rs.next()) {
				out.println(rs.getString("mem_name") + ", ");
			}

			// 자원 종료
			if (rs != null)
				try {
			rs.close();
				} catch (SQLException e) {
				}
			if (stmt != null)
				try {
			stmt.close();
				} catch (SQLException e) {
				}
			if (conn != null)
				try {
			conn.close();
				} catch (SQLException e) {
				}
		}
		out.println("수행시간: " + (System.currentTimeMillis() - startTime) + "ms</br>");
		%>
	
</body>
</html>