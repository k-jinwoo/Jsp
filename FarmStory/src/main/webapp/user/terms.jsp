<%@page import="kr.co.FarmStory.db.Sql"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="kr.co.FarmStory.db.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.FarmStory.bean.TermsBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	TermsBean tb = new TermsBean();
	
	try{
		// 1,2단계
		Connection conn = DBConfig.getInstance().getConnection();
		
		// 3단계
		Statement stmt = conn.createStatement();
		
		// 4단계
		ResultSet rs = stmt.executeQuery(Sql.SELECT_TERMS);
		
		// 5단계
		if(rs.next()){
			tb.setTerms(rs.getString(1));
			tb.setPrivacy(rs.getString(2));
		}
		
		// 6단계
		conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<%@ include file="../_header.jsp" %>
        <section id="user" class="terms">
            <table>
                <caption>사이트 이용약관</caption>
                <tr>
                    <td>
                        <textarea readonly><%= tb.getTerms() %></textarea>
                        <p>
                            <label><input type="checkbox" name="chk1"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <table>
                <caption>개인정보 취급방침</caption>
                <tr>
                    <td>
                        <textarea readonly><%= tb.getPrivacy() %></textarea>
                        <p>
                            <label><input type="checkbox" name="chk2"/>동의합니다.</label>
                        </p>
                    </td>
                </tr>
            </table>
            <div>
                <a href="./login.jsp">취소</a>
                <a href="./register.jsp">다음</a>
            </div>
        </section>
    </div>
<%@ include file="../_footer.jsp" %>