<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>05/ form.jsp </title>
<style type="text/css">
	table { width: 80%; }
	td, th {border: solid 1px gray;}
</style>

</head>
<body>
<h3>회원가입</h3>
서버경로: <%=application.getRealPath("") %>

<form action="result.jsp" method="get"  enctype="application/x-www-form-urlencoded"  > 
<table>
	<colgroup>
		<col style="width: 20%" />
		<col />
	</colgroup>
	<tbody>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" value="" ></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="pw" value=""></td>
		</tr>
		<tr>
			<th>성명</th>
			<td><input type="text" name="name" value=""></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" value="male" name="gender" >남 
				<input type="radio" value="female" name="gender" >여
			</td>	 
		</tr>		
		<tr>
			<th>나이</th>
			<td><input type="text" name="age" value=""></td>
		</tr>
		<tr>
			<th>취미</th>
			<td>
				<br >
				<input type="checkbox" name="hobby" value="book"> 독서
				<input type="checkbox" name="hobby" value="game"> 게임하기
				<input type="checkbox" name="hobby" value="movie"> 영화감상
				<input type="checkbox" name="hobby" value="sport"> 스포츠
			</td>
		</tr>
		<tr>
			<th>자기소개</th>
			<td><textarea  rows="3" cols="50" name="intro"></textarea></td>  	    
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" formaction="result.jsp" >가입하기(result.jsp)</button>
				<button type="submit" formaction="result2.jsp" >가입하기(result2.jsp)</button>
				<button type="submit" formaction="result3.jsp" >response Test(result3.jsp)</button>
				<button type="reset">다시작성</button>
			</td>
		</tr>
	</tbody>
</table>
</form>



</body>
</html>