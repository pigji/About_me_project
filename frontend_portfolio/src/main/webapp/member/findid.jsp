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
		<h3> 아이디 찾기 </h3>
		Name : <input type="text" id="mname"><br>
		Email : <input type="text" id="memail"><br>
		
		<!-- 결과 메시지 출력 박스 -->
		<div id="findconfirmbox"> </div>
		<button type="button" onclick="findid()"> 아이디찾기 </button>
		
	</div>
	
	<script type="text/javascript" src="/frontend_portfolio/js/member/find.js"></script>

</body>
</html>