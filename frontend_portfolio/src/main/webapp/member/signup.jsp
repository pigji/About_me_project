<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Signup </title>
	
	<!-- 사용자지정 css -->
	<link href="/frontend_portfolio/css/member/signup.css" rel="stylesheet">

	
</head>
<body>

	<%@include file="1.header.jsp" %>
	
	<div class="webbox">
		<form class="signupform" action="/frontend_portfolio/member/signup" method="post"></form>
		<h2 class="pagetitle"> 회원가입 </h2>
		<h3 class="parttitel"> 기본정보 </h3>
		<table class="signuptable">
			<tr>
				<td class="col1"> 아이디 </td>
				<td class="col2"><input type="text" name="mid" id="mid" onkeyup="mevent1()"></td>
				<td class="col3"></td>
			</tr>
			<tr>
				<td class="col1"> 비밀번호 </td>
				<td class="col2"><input type="text" name="mpassword" id="mpassword" onkeyup="mevent2()"></td>
				<td class="col3"></td>
			</tr>
			<tr>
				<td class="col1"> 비밀번호확인 </td>
				<td class="col2"><input type="text" name="mpasswordconfirm" id="mpasswordconfirm" onkeyup="mevent3()"></td>
				<td class="col3"></td>
			</tr>
			<tr>
				<td class="col1"> 이름 </td>
				<td class="col2"><input type="text" name="mname" id="mname" onkeyup="mevent4()"></td>
				<td class="col3"></td>
			</tr>
			<tr>
				<td class="col1"> 전화번호 </td>
				<td class="col2"><input type="text" name="mphone" id="mphone" onkeyup="mevent5()"></td>
				<td class="col3"></td>
			</tr>
			<tr>
				<td class="col1"> 이메일 </td>
				<td class="col2"><input type="text" name="memail" id="memail" onkeyup="mevent6()"></td>
				<td class="col3"></td>
			</tr>
			
			<tr>
			<!-- 카카오 우편 API : https://postcode.map.daum.net/guide -->
				<td rowspan="2" class="col1"> 주소 * </td>
				<td colspan="2" class="col2">
					<span>
						<input type="text" id="sample4_postcode" placeholder="우편번호" name="maddress1">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					</span>	
					<span>
						<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="maddress2">
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소" name="maddress3">
					</span>
				</td>
			</tr>
			<tr>
				<td class="col2"><input type="text" id="sample4_detailAddress" placeholder="상세주소" name="maddress4"></td>
				<td class="col3">  </td>
			</tr>
		</table>
	
	</div>

	
</body>
</html>