<%@page import="java.util.Enumeration"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사용자가 입력한 정보(파라미터)</h3>
	<ul>
		<li>아이디: <%=request.getParameter("id")%>
		<li>비밀번호: <%=request.getParameter("pw")%>
		<li>성별: <%=request.getParameter("gender")%>
		<li>나이: <%=request.getParameter("age")%>
		<li>취미: <%=request.getParameter("hobby")%>
		<li>자기소개: <pre><%=request.getParameter("intro")%></pre>
	</ul>
	<h3>request.getParameterName()</h3>
	취미는:
	<%=request.getParameterValues("hobby")%>
	<br>

	<%
		String[] hobbies = request.getParameterValues("hobby");
	if (hobbies != null) {
		for (int i = 0; i < hobbies.length; i++) {
			String h = hobbies[i];
			out.println(i + "번째 취미 = " + h + "<br>");
		}
	}
	%>
	<hr>
	<%
		// for each ()
	if (hobbies != null) {
		int i = 0;
		for (String h : hobbies) {
			out.println(++i + "번째 취미 = " + h + "<br>");
		}
	}
	%>
	<h3>request.getParameterName()</h3>
	<%
		Enumeration<String> en = request.getParameterNames();
	while (en.hasMoreElements()) {
		String key = en.nextElement();
		String value = request.getParameter(key);
		out.println(key + "=" + value + "<br>");
	}
	%>
	<h3>request.getParameterMap()</h3>
	<p>서블릿에서는 파라미터는 기본적으로 Stringp[]로 인식합니다.</p>
	<%
		/* Enumeration java 1.0부터 있던 열거형 en.hasMoreElements(), en.nextElement() 
	Iterator java 1.2에서 추가된 열거형 en.hasNext
	*/
	Map<String, String[]> paramMap = request.getParameterMap();

	/* 문제: 맵에 있는 키와 값을 출력하세요
		구글링해서 맵을 조회하는 방법
		1번째 keySet().Iterator()으로 구현*/
	Iterator<String> iteratorK = paramMap.keySet().iterator();
	/* while (iteratorK.hasNext()) {
		String key = iteratorK.next();
		String[] value = paramMap.get(key);
		out.println("[key]: " + key + ", [value]: " + value[0] + "<br>");
	}
	out.println("<hr>");
	for(String key : paramMap.keySet() ){
		String[] values = paramMap.get(key);
		out.println("[key]: " + key + ", [value]: " + values[0] + "<br>");
	}
	out.println("<hr>");
	// 2번째 entrySet().Iteator()로 구현
	Iterator<Map.Entry<String, String[]>> iteratorE = paramMap.entrySet().iterator();
	while (iteratorE.hasNext()) {
		Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) iteratorE.next();
		String key = entry.getKey();
		String[] value = entry.getValue();
		out.println("[key]: " + key + ", [value]: " + value[0] + "<br>");
	}
	 */
	
	out.println("여기아래부터~<hr>");
	while (iteratorK.hasNext()) {
		String key = iteratorK.next();
		String value = paramMap.get(key).toString();
		out.println("[key]: " + key + ", [value]: " + value + "<br>");
	}


	out.println("<hr>");
	// 2번째 entrySet().Iteator()로 구현
	Iterator<Map.Entry<String, String[]>> iteratorE = paramMap.entrySet().iterator();
	while (iteratorE.hasNext()) {
		Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) iteratorE.next();
		String key = entry.getKey();
		String value = entry.getValue().toString();
		out.println("[key]: " + key + ", [value]: " + value + "<br>");
	}
	
	
while (iteratorK.hasNext()) {
	String key = iteratorK.next();
	String[] value = paramMap.get(key);
	out.println("[key]: " + key + ", [value]: " + value[0] + "<br>");
}
out.println("<hr>");
for(String key : paramMap.keySet() ){
	String[] values = paramMap.get(key);
	out.println("[key]: " + key + ", [value]: " + values[0] + "<br>");
}
out.println("<hr>");

	%>

</body>
</html>