<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/inc/header.jsp" %>
	<title>memberForm.jsp </title>
</head>
<body>
 <div class="container">	
	<h3>회원가입</h3>		
	<form action="memberRegist.jsp" method="post" >
	<table class="table table-striped ">
		<tbody>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="memId" ></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="memPass" ></td>
			</tr>
			<tr>
				<th>회원명</th>
				<td><input type="text" name="memName" ></td>
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="date" name="memBir" ></td>
			</tr>
			<tr>
				<th>헨드폰</th>
				<td><input type="tel" name="memHp" ></td>
			</tr>
			<tr>
				<th>직업</th>
				<td>
					<select name="memJob" >
						<option value="">-- 직업 선택 --</option>
						<option value="JB01">주부</option>
						<option value="JB02">은행원</option>
						<option value="JB03">공무원</option>
						<option value="JB04">축산업</option>
						<option value="JB05">회사원</option>
						<option value="JB06">농업</option>
						<option value="JB07">자영업</option>
						<option value="JB08">학생</option>
						<option value="JB09">교사</option>					
					</select>				
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>
					<select name="memLike" >
						<option value="">-- 취미 선택 --</option>
						<option value="HB01">서예</option>
						<option value="HB02">장기</option>
						<option value="HB03">수영</option>
						<option value="HB04">독서</option>
						<option value="HB05">당구</option>
						<option value="HB06">바둑</option>
						<option value="HB07">볼링</option>
						<option value="HB08">스키</option>
						<option value="HB09">만화</option>
						<option value="HB10">낚시</option>
						<option value="HB11">영화감상</option>
						<option value="HB12">등산</option>
						<option value="HB13">개그</option>
						<option value="HB14">카레이싱</option>					
					</select>				
				</td>
			</tr>			
			<tr>
			
				<td colspan="2"><button type="submit" class="btn btn-default" >
				<span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"></span>
				회원가입</button></td>
			</tr>
		</tbody>	
	</table>
	</form>
</div>

</body>
</html>