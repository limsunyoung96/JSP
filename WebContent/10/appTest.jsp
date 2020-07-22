<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
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
<title>10/ appTest.jsp</title>
</head>
<body>

	<h3>초기화 파라미터(web.xml)</h3>

	<%=application.getInitParameter("DB_INFO")%>
	<%=application.getInitParameter("late")%>

	서블릿버전 :
	<%=application.getMajorVersion()%>,
	<%=application.getMinorVersion()%>,
	<%=application.getServerInfo()%>
	<%
		application.log(request.getRemoteAddr() + ": " + request.getRequestURI());
	%>
	
	<%
		// getRealPath : 다운로드, 개인정보 동의서
		String filePath = application.getRealPath("/10/song.txt");
	%>
	<br>
	서버경로 : <%= filePath %>
	<hr>
	<pre>
	<%
		char[] buff = new char[32];
		int len = -1;
		// java 1.5부터 closeable 구현 객체인 경우
		// try에서 생성된 경우 자동으로 close()
		/* try(InputStreamReader fr = new InputStreamReader(
											new FileInputStream(filePath)
											, "UTF-8"
											)){*/
		InputStreamReader fr = null;
		try{
			fr = new InputStreamReader(new FileInputStream(filePath), "UTF-8");
			while((len = fr.read(buff))!=-1){
				out.print(new String(buff,0,len));
			}
		}catch(IOException e){
			out.println("익셉션 발생: "+e.getMessage());
			application.log(e.getMessage(), e);
		}
	%>
	</pre>
</body>
</html>