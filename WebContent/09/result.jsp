<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>Insert title here</title>
</head>
<body>
	<h3>클라이언트 정보 및 선택한 걸그룹</h3>
	<ul>
		<li>ip : <%=request.getRemoteAddr()%>
		<li>url : <%=request.getRequestURI()%>
		<li>user-agent :<%=request.getHeader("user-agent")%>
		<li>걸그룹 ::<%=request.getParameter("girls")%>
	</ul>
	<%-- 각 걸그룹별 정보를 외부 API 통해 가져오려고 하는데
	 문제는 각 보여주는 형식이 달라.. 현재 페이지에서 처리하기 어렵다는 결론이 났다 
	 그래서 각 그룹별 별도의 페이지를 작성하기로 했다. 
	 
	 하지만 외부 API는 이곳에서 처리하기로 했고
	 결과만 각 화면에 전달해 주기로 했습니다.
	 
	 소속사는 단순 문자열이므로 파라미터
	 수입금액 일반 리터럴이므로 파라미터
	 멤버는 리스트로 담아서 속성
	 
	 --%>

	<%
		String girl = request.getParameter("girls");
	String agency = "";
	List<String> members = new ArrayList();
	String view = "";
	int income = 0;
	switch (girl) {
	case "aoa":
		agency = "FNC Ent";
		members.add("메인보컬 유나");
		members.add("리드보컬 혜정");
		members.add("센터 설현");
		members.add("래퍼 찬미");
		income = 378500000;
		view = "aoa.jsp";
		break;
	case "twice":
		agency = "JYP Ent";
		members.add("리드보컬 나연");
		members.add("리드보컬 정연");
		members.add("서브보컬 모모");
		members.add("서브보컬 사나");
		members.add("메인보컬 지효");
		members.add("서브보컬 미나");
		members.add("서브보컬 다현");
		members.add("메인래퍼 채영");
		members.add("서브보컬 쯔위");
		income = 378500000;
		view = "twice.jsp";
		break;
	case "black":
		agency = "YG Ent";
		members.add("리드보컬 지수");
		members.add("메인래퍼 제니");
		members.add("메인보컬 로제");
		members.add("메인댄서 리사");
		income = 378500000;
		view = "blackpink.jsp";
		break;
	}
	request.setAttribute("members", members);

	if (!view.isEmpty()) { // 비어있지 않으면
	%>

	<jsp:forward page="<%=view%>">
		<jsp:param value="<%=agency%>" name="agency" />
		<jsp:param value="<%=income%>" name="income" />
	</jsp:forward>
	<%
		}
	%>
</body>
</html>