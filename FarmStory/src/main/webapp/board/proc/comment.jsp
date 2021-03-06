<%@page import="kr.co.FarmStory.dao.ArticleDao"%>
<%@page import="kr.co.FarmStory.bean.ArticleBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 전송 데이터 수신
	request.setCharacterEncoding("utf-8");
	String group   = request.getParameter("group");
	String cate    = request.getParameter("cate");
	String comment = request.getParameter("comment");
	String parent  = request.getParameter("parent");
	String uid     = request.getParameter("uid");
	String regip   = request.getRemoteAddr();
	
	ArticleBean ab = new ArticleBean();
	ab.setParent(parent);
	ab.setContent(comment);
	ab.setUid(uid);
	ab.setRegip(regip);
	
	ArticleDao dao = ArticleDao.getInstance();
	
	// 댓글 등록
	dao.insertComment(ab);
	
	// 댓글 카운트 +1
	dao.updateCommentCount(parent, +1);
			
	// 리다이렉트
	response.sendRedirect("/FarmStory/board/view.jsp?group="+group+"&cate="+cate+"seq="+parent);

%>