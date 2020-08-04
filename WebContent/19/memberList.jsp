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
<title>memberList.jsp</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<h3>회원목록</h3>
		<%
			//1. 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		//2. 커넥션 구하기
		conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "java", "oracle");

		// 3. 구름 객체 생성
		stmt = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);

		rs = stmt.executeQuery("SELECT * FROM member");
		%>
		<div>
			<a href="memberForm.jsp" class="btn btn-primary btn-sm pull-right">회원등록</a>
		</div>
		<table class="table table-striped table-bordered">
			<caption class="hidden">회원목록 조회</caption>
			<colgroup>
				<col style="width: 15%;" />
				<col />
				<col style="width: 15%;" />
				<col style="width: 15%;" />
				<col style="width: 15%;" />
				<col style="width: 15%;" />
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>회원명</th>
					<th>HP</th>
					<th>생일</th>
					<th>직업</th>
					<th>마일리지</th>
				</tr>
			</thead>
			<tbody>
				<%
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getString("mem_id")%></td>
					<td><a href="memberView.jsp?memId=<%=rs.getString("mem_id")%>"><%=rs.getString("mem_name")%></a></td>
					<td><%=rs.getString("mem_hp")%></td>
					<td><%=rs.getString("mem_bir")%></td>
					<td><%=rs.getString("mem_job")%></td>
					<td><%=rs.getString("mem_mileage")%></td>
				</tr>
				<%}%>
			</tbody>
		</table>
	</div>
	<%
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
	%>
</body>
</html>