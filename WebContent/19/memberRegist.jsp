<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>memberList.jsp</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<h3>회원등록</h3>
		<jsp:useBean id="member" class="com.study.member.vo.MemberVO" />
		<jsp:setProperty property="*" name="member" />
		${member}
		<%
			// 1. 드라이버 로딩 
		//Class.forName("oracle.jdbc.driver.OracleDriver");
		// 변수 선언 
		Connection conn = null;
		//Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 2. 커넥션 구하기 
		conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "java", "oracle");

		// 3. 구문 객체 생성 
		// pstmt = conn.prepareStatement(sb.toString());

		StringBuffer sb = new StringBuffer();

		sb.append("INSERT INTO member (                           ");
		sb.append("	      mem_id     , mem_pass   , mem_name      ");
		sb.append("	    , mem_bir    , mem_zip    , mem_add1      ");
		sb.append("	    , mem_add2   , mem_hp     , mem_mail      ");
		sb.append("	    , mem_job    , mem_like   , mem_mileage   ");
		sb.append("	    , mem_delete                              ");
		sb.append("	) VALUES (                                    ");
		sb.append(" ?, ?, ?");
		sb.append(" ,?, ?, ?");
		sb.append(" ,?, ?, ?");
		sb.append(" ,?, ?, 0");
		sb.append(" ,'N' ");
		sb.append("	)		                                          ");

		pstmt = conn.prepareStatement(sb.toString());
		// 구문 실행 전에 파라미터 설정
		int i = 1;
		pstmt.setString(i++, member.getMemId());
		pstmt.setString(i++, member.getMemPass());
		pstmt.setString(i++, member.getMemName());
		pstmt.setString(i++, member.getMemBir());
		pstmt.setString(i++, member.getMemZip());
		pstmt.setString(i++, member.getMemAdd1());
		pstmt.setString(i++, member.getMemAdd2());
		pstmt.setString(i++, member.getMemHp());
		pstmt.setString(i++, member.getMemMail());
		pstmt.setString(i++, member.getMemJob());
		pstmt.setString(i++, member.getMemLike());

		System.out.println(sb.toString());

		int cnt = pstmt.executeUpdate(); // 수정된 것이 있다면 그 카운트 리턴
		if (cnt > 0) {
		%>
		<div class="alert alert-success">정상적으로 회원등록 되었습니다.</div>
		<%
			}

		// 자원 종료 
		if (rs != null)
			try {
				rs.close();
			} catch (SQLException e) {
			}
		if (pstmt != null)
			try {
				pstmt.close();
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