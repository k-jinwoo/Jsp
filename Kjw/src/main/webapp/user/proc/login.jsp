<%@page import="kr.co.kjw.bean.MemberBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="kr.co.kjw.db.Sql"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.kjw.db.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
	
	MemberBean mb = null;
	
	try{
		// DB정보 가져오기 - DBConfig.java 안에 instance 와 Connection
		Connection conn = DBConfig.getInstance().getConnection();
		
		PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_MEMBER);
		psmt.setString(1, uid);
		psmt.setString(2, pass);
		
		ResultSet rs = psmt.executeQuery();
		
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
		
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}

	// 세션 처리*
		if(mb != null){
			// 회원일 경우
			session.setAttribute("sessMember", mb);
			// 리다이렉트
			response.sendRedirect("/Kjw/index.jsp");
		}else{
			// 회원이 아닐경우
			response.sendRedirect("/Kjw/user/login.jsp?success=100");
		}
%>