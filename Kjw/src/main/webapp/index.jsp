<%@page import="kr.co.kjw.bean.MemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
MemberBean mb = (MemberBean) session.getAttribute("sessMember");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<!-- 부트스트랩 -->
<link href="/Kjw/css/bootstrap.min.css" rel="stylesheet">
<link href="/Kjw/css/style.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/Kjw/index.jsp">Logo</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<%
					if (mb != null) {
					%>
					<li><a href="/Kjw/user/proc/logout.jsp">Logout</a></li>
					<%
					} else {
					%>
					<li><a href="/Kjw/user/login.jsp">Login</a></li>
					<%
					}
					%>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Menu
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">notice</a></li>
							<li><a href="#">community</a></li>
							<li><a href="#">image</a></li>
							<li class="divider"></li>
							<li><a href="#">?</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- 이미지 -->
	<div class="container-fluid">
		<div class="images" style="border: 1px solid #000">1111</div>
	</div>
	<div class="gap"></div>
	<!-- 컨텐츠 -->
	<div class="container" id="contents">
		<div class="row">
			<div class="col-md-6" style="border: 1px solid #000" align="center">
				<h3>notice</h3>
				<table class="table table-bordered" style="font-size: 0.9em">
					<tr>
						<td>제목</td>
						<td>날짜</td>
					</tr>
					<tr>
						<td>공지사항 제목입니다</td>
						<td>2021-06-11</td>
					</tr>
				</table>
			</div>
			<div class="col-md-6" style="border: 1px solid #000">123</div>
		</div>
	</div>
	<!-- 바닥글 -->
	<div class="container-fluid" id="footer">1</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="/Kjw/js/bootstrap.min.js"></script>
</body>
</html>