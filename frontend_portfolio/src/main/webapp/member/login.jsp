<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="../1.header.jsp" %>
	
	<div class="webbox">
		<h3> 로그인 페이지 </h3>
		ID : <input type="text" id="mid"><br>
		PW : <input type="text" id="mpassword"><br>
		
		<div id="loginconfirmbox"> </div>
		<button type="button" onclick="login()"> 로그인 </button>
		
		<ul>
			<li><a href="/frontend_portfolio/member/signup.jsp"> 회원가입 </a></li>
			<li><a href="/frontend_portfolio/member/findid.jsp"> 아이디찾기 </a></li>
			<li><a href="/frontend_portfolio/member/findpssword.jsp"> 비밀번호찾기 </a></li>
		</ul>
	</div>
	
	<script type="text/javascript" src="/frontend_portfolio/js/member/login.js"></script>

</body>
</html>