<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09/ form.jsp</title>
<%@ include file="/WEB-INF/inc/header.jsp"%>

</style>
</head>
<body>
	<h3>회원가입</h3>
	서버경로: <%=application.getRealPath("/")%>
	<form action="result.jsp" method="get"
		enctype="application/x-www-form-urlencoded">
		<table>
			<colgroup>
				<col style="width: 20%" />
				<col />
			</colgroup>
			<tbody>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" value="" placeholder="아이디"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" value="" placeholder="비밀번호" ></td>
				</tr>
				<tr>
					<th>성명</th>
					<td><input type="text" name="name" value=""></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" value="male" name="gender">남 <input
						type="radio" value="female" name="gender">여</td>
				</tr>
				<tr>
					<th><label for="id_age">나이</label></th>
					<td><input id="id_age" type="text" name="age" value=""></td>
				</tr>
				<tr>
					<th>걸그룹</th>
					<td>
						<label><input type="radio" name="girls" value="black">블랙핑크</label>
						<label><input type="radio" name="girls" value="aoa">AOA</label> 
						<label><input type="radio" name="girls" value="twice">트와이스</label>
					</td>
				</tr>
				<tr>
					<th>취미</th>
					<td><br> <input type="checkbox" name="hobby" value="book">
						독서 <input type="checkbox" name="hobby" value="game"> 게임하기
						<input type="checkbox" name="hobby" value="movie"> 영화감상 <input
						type="checkbox" name="hobby" value="sport"> 스포츠</td>
				</tr>
				<tr>
					<th>자기소개</th>
					<td><textarea rows="3" cols="50" name="intro"></textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" formaction="result.jsp">가입하기(result.jsp)</button>
						<button type="reset">다시작성</button>
					</td>
				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>