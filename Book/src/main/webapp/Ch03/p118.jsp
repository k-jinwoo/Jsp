<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial=scale=1.0"/>
	<title>표현식 에제</title>
</head>
<body>
	<h2>표현식 예제 - 배열원소 출력</h2>
	<%
		// 배열의 초기화 블럭 - 배열의 선언, 메모리 할당, 초기값 설정을 한 번에 함.
		String[] str = {"JSP","JAVA","Android","HTML5"};
	%>
	<table>
		<tr>
			<th>배열의 첨자번호
			<th>배열요소의 값
			<%
				for(int i=0;i<str.length;i++){ %>
				<tr>
					<td><%=i %>
					<td><%=str[i] %>
			<% } %>
	</table>
</body>
</html>