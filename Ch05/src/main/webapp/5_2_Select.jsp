<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sub1.MemberBean"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//DB 정보
	String host = "jdbc:mysql://54.180.160.240:3306/kim415272";
	String user = "kim415272";
	String pass = "1234";
	
	List<MemberBean> members = new ArrayList<>(); // members 리스트 생성
	
	try{
	// 1단계 - JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	
	// 2단계 - 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	// 3단계 - SQL 싱행객체 생성
	Statement stmt = conn.createStatement();
	
	// 4단계 - SQL 실행
	String sql = "SELECT * FROM `MEMBER`";
	ResultSet rs = stmt.executeQuery(sql);
	
	// 5단계 - SQL 결과셋 처리
	while(rs.next()){
		MemberBean mb = new MemberBean();
		
		String uid = rs.getString(1);
		String name = rs.getString(2);
		String hp = rs.getString(3);
		String pos = rs.getString(4);
		int dep = rs.getInt(5);
		String rdate = rs.getString(6);
		
		mb.setUid(uid); // mb에 값을 넣어줌
		mb.setName(name);
		mb.setHp(hp);
		mb.setPos(pos);
		mb.setDep(dep);
		mb.setRdate(rdate);
		
		
		// 한번에 하는 모양
		// mb.setUid(rs.getString(1)); 
		// mb.setName(rs.getString(2));
		// mb.setHp(rs.getString(3));
		// mb.setPos(rs.getString(4));
		// mb.setDep(rs.getInt(5));
		// mb.setRdate(rs.getString(6));
		
		members.add(mb); // 리스트안에 mb 값을 넣어줌
	}
	
	// 6단계 - 데이터베이스 종료
	conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>5_2_Select</title>
</head>
<body>
	<h3>2.select 실습하기</h3>
	
	<a href="./5_1_Insert.jsp">직원등록</a>
	
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>휴대폰</td>
			<td>직급</td>
			<td>부서</td>
			<td>입사일</td>
			<td>기타</td>
		</tr>
		<% for(MemberBean mb : members){ %>
		<tr>
			<td><%= mb.getUid() %></td>
			<td><%= mb.getName() %></td>
			<td><%= mb.getHp() %></td>
			<td><%= mb.getPos() %></td>
			<td><%= mb.getDep() %></td>
			<td><%= mb.getRdate().substring(2, 10) %></td>
			<td>
				<a href="./5_3_Update.jsp?uid=<%= mb.getUid() %>">수정</a>
				<a href="./deleteProc.jsp?uid=<%= mb.getUid() %>">삭제</a>
			</td>
		</tr>
		<% } %>
	</table>
</body>
</html>