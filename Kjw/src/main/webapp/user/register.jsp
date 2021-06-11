<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
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
					<li><a href="/Kjw/user/login.jsp">Login</a></li>
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

	<!-- 컨텐츠 -->
	<div class="container" id="contents" align="center">
		<h3>Register</h3>
		<form action="/Kjw/user/proc/register.jsp" method="post">
			<table class="table table-bordered" style="width: 700px;">
				<caption>사이트 이용정보 입력</caption>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" placeholder="아이디를 입력하세요" />
						<span class="resultId"></span></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass1" placeholder="비밀번호 입력" />
					</td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="pass2"
						placeholder="비밀번호 확인 입력" /> <span class="resultPass"></span></td>
				</tr>
			</table>
			<table class="table table-bordered" style="width: 700px;">
				<caption>개인정보 입력</caption>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름 입력" /> <span
						class="resultName"></span></td>
				</tr>
				<tr>
					<td>별명</td>
					<td>
						<p>공백없이 한글, 영문, 숫자만 입력가능</p> <input type="text" name="nick"
						placeholder="별명 입력" /> <span class="resultNick"></span>
					</td>
				</tr>
				<tr>
					<td>E-Mail</td>
					<td><input type="email" name="email" placeholder="이메일 입력" />
						<span class="resultEmail"></span></td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td><input type="text" name="hp" placeholder="- 포함 13자리 입력"
						minlength="13" maxlength="13" /> <span class="resultHp"></span></td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<div>
							<input type="text" id="zip" name="zip" placeholder="우편번호"
								readonly />
							<button type="button" class="btn btn-warning btn-xs"
								onclick="zipcode()">주소검색</button>
						</div>
						<div>
							<input type="text" id="addr1" name="addr1"
								placeholder="주소를 검색하세요." readonly />
						</div>
						<div>
							<input type="text" id="addr2" name="addr2"
								placeholder="상세주소를 입력하세요." />
						</div>
					</td>
				</tr>
				<tr align="right">
					<td colspan="2"><a href="/Kjw/user/login.jsp"
						class="btn btn-danger btn-xs">취소</a> <input type="submit"
						class="btn btn-warning btn-xs" value="회원가입" /></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 바닥글 -->
	<div class="container-fluid" id="footer">1</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="/Kjw/js/bootstrap.min.js"></script>
</body>
</html>