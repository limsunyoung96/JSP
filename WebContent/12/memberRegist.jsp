<%@page import="com.study.member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/inc/header.jsp"  %>
<title>memberRegist.jsp </title>
</head>
<body>

 <h2>입력한 정보 출력하기</h3>

 <h4>직접 파라미터 조회 (getParameter)</h4>
	아이디 :   <%=request.getParameter("memId") %><br>
	비밀번호 :  <%=request.getParameter("memPass") %><br>
	회원명 :   <%=request.getParameter("memName") %><br>
	직업 :   <%=request.getParameter("memJob") %><br>	
 <hr>
 
 <h4>VO 객체에 파라미터 직접담고 출력하기</h4>
 <%	
 		MemberVO member1 = new MemberVO();
 		member1.setMemId(request.getParameter("memId"));
 		member1.setMemPass(request.getParameter("memPass"));
 		member1.setMemName(request.getParameter("memName"));
 		member1.setMemJob(request.getParameter("memJob"));
 %>
 아이디 :    <%=member1.getMemId() %> <br>
 비밀번호 :   <%=member1.getMemPass() %> <br>
 회원명 :    <%=member1.getMemName() %> <br>
 직업 :      <%=member1.getMemJob() %> <br>
 <hr>
 
	<h4> &lt;useBean /&gt; 과 &lt;setProperty /&gt; , &lt;getProperty /&gt; 사용 </h4>
	<jsp:useBean id="member2" class="com.study.member.vo.MemberVO" scope="page"/>
	<jsp:setProperty property="memId" name="member2" value="zzzz"/>
	<jsp:setProperty property="memPass" name="member2" value='<%=request.getParameter("memPass")%>'/>
	<jsp:setProperty property="memName" name="member2" param="memLike"/>
	<jsp:setProperty property="memJob" name="member2" param="memJob"/>
	 아이디 :  <jsp:getProperty property="memId" name="member2"/> <br>
	 비밀번호 : <jsp:getProperty property="memPass" name="member2"/> <br>
	 회원명 :  <jsp:getProperty property="memName" name="member2"/> <br>
	 직업 :  <jsp:getProperty property="memJob" name="member2"/> <br>
 
	 <h4> &lt;useBean /&gt; 과 &lt;setProperty property="*" /&gt; , &lt;%=표현식 /&gt; 사용 </h4>
	 <jsp:useBean id="member3" class="com.study.member.vo.MemberVO"/>
	 <!-- //파라미터 이름과 객체의 프로퍼티 이름이 같으면 자동 설정  -->
	 <jsp:setProperty property="*" name="member3"/>
 	
	 아이디 : <jsp:getProperty property="memId" name="member3"/> <br>
	 비밀번호 : <%=member3.getMemPass() %>  <br>
	 회원명 :  <%=member3.getMemName() %>  <br>
	 직업 :    ${member3.memJob} <br>

</body>
</html>