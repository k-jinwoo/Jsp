<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>modify</title>
</head>
<body>
	<a href="/Ch08/user/list.do">사용자목록</a>

	<h4>직원수정</h4>
	<form action="/Ch08/user/modify.do" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" readonly value="${requestScope.userVo.uid}"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="${userVo.name}"/></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="tel" name="hp" value="${userVo.hp}"/></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="number" name="age" value="${userVo.age}"/></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="사용자 수정"/>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>