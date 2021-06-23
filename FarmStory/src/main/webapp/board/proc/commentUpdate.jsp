<%@page import="com.google.gson.JsonObject"%>
<%@page import="kr.co.FarmStory.dao.ArticleDao"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String seq = request.getParameter("seq");
	String parent = request.getParameter("parent");
	String content = request.getParameter("content");
	
	ArticleDao.getInstance().updateComment(content, seq);

	int result = ArticleDao.getInstance().updateComment(content, seq);
	
	JsonObject json = new JsonObject();
	json.addProperty("result", result);
	
	out.print(json);
%>