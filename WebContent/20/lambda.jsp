<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html >
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>20/ lambda.jsp</title>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<pre>
			${max=(a,b)-> a>b?a:b;''}
			${max(34,78)}
			${factorial = n -> n==1? 1:n * factorial(n-1);''}
			${factorial(7)}
		</pre>
		<code>
		1부터 100까지의 합을 구하는 람다식
		\${1,100} 1+(2, 100)
		a, b 값이 같으면 a리턴 후 끝
		</code>
		<pre>
		${sum=(a,b)-> a==b?a:a+sum(a+1,b); ''}
		${sum(1,100)}
		</pre>
		<pre>
		어느날 초등학교 3학년 산수를 가르치던 선생님은
		학생들에게 조금 어려운 문제를 내고 쉬려고 했다.
		<code>1부터 100까지의 합</code>을 구하는 문제를 냈다.
		그런데, 어느 생각 없는 꼬맹이가 바로 답을 말하는 것이었다.
		<b>이 꼬뱅이는 누구인가? -> 가우스</b>
		</pre>
		<pre>
		${(1+100)*100 /2}
		${gause=(a,b) -> (a+b)*(b-a+1)/2;'' }
		${gause(5,10)}
		${gause(1,100)}
		${gause(2,7)}
		</pre>
	</div>
	<!-- container -->
</body>
</html>