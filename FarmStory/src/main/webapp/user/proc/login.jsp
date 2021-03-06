<%@page import="kr.co.FarmStory.db.Sql"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.FarmStory.db.DBConfig"%>
<%@page import="kr.co.FarmStory.bean.MemberBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
	
	MemberBean mb = null;
	
	try{
		// 1,2단계
		Connection conn = DBConfig.getInstance().getConnection();
		// 3단계
		PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_MEMBER);
		psmt.setString(1, uid);
		psmt.setString(2, pass);
		// 4단계
		ResultSet rs = psmt.executeQuery();
		// 5단계*
		if(rs.next()){
			mb = new MemberBean();
			mb.setUid(rs.getString(1));
			mb.setPass(rs.getString(2));
			mb.setName(rs.getString(3));
			mb.setNick(rs.getString(4));
			mb.setEmail(rs.getString(5));
			mb.setHp(rs.getString(6));
			mb.setGrade(rs.getInt(7));
			mb.setZip(rs.getString(8));
			mb.setAddr1(rs.getString(9));
			mb.setAddr2(rs.getString(10));
			mb.setRegip(rs.getString(11));
			mb.setRdate(rs.getString(12));
		}
		// 6단계
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	// 세션 처리*
	if(mb != null){
		// 회원일 경우
		session.setAttribute("sessMember", mb);
		// 리다이렉트
		response.sendRedirect("/FarmStory/");
	}else{
		// 회원이 아닐경우
		response.sendRedirect("/FarmStory/user/login.jsp?success=100");
		
	}
	

	
%>