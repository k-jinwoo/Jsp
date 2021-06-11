<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>
  <!-- 부트스트랩 -->
  <link href="/Kjw/css/bootstrap.min.css" rel="stylesheet">
  <link href="/Kjw/css/style.css" rel="stylesheet">
 <%
	request.setCharacterEncoding("utf-8");
	String success = request.getParameter("success");
%>
   <script>
    	var success = "<%= success %>";
    	
    	if(success == 100){
    		alert('해당하는 회원이 없습니다.\n아이디, 비밀번호를 다시 확인해 주세요.');
    	}else if(success == 101){
    		alert('먼저 로그인을 하셔야 합니다.');
    	}else if(success == 102){
    		alert('정상적으로 로그아웃이 되었습니다.');
    	}
    </script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/Kjw/index.jsp">Logo</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/Kjw/user/login.jsp">Login</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Menu <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">notice</a></li>
            <li><a href="#">community</a></li>
            <li><a href="#">image</a></li>
            <li class="divider"></li>
            <li><a href="#">?</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<!-- 컨텐츠 -->
<div class="container" id="contents" align="center">
	<h3>Login</h3>
	<form action="/Kjw/user/proc/login.jsp" method="post">
		<table class="table table-bordered" style="width:400px;">
			<tr>
				<td><img src="/JBoard1/img/login_ico_id.png" alt="아이디" class="loginimg"/>
				<input type="text" name="uid" style="width:90%;" placeholder="아이디를 입력하세요."/></td>
			</tr>
			<tr>
				<td><img src="/JBoard1/img/login_ico_pw.png" alt="비밀번호" class="loginimg"/>
					<input type="password" name="pass" style="width:90%;" placeholder="비밀번호를 입력하세요."/></td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" class="btn btn-success btn-sm" value="로그인"/>
					<input type="button" class="btn btn-info btn-sm" value="회원가입" onclick="location='/Kjw/user/register.jsp'"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<!-- 바닥글 -->
<div class="container-fluid" id="footer">
1
</div>

  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="/Kjw/js/bootstrap.min.js"></script>
</body>
</html>