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
	
	<!-- 세션을 이용한 페이지 제어 -->
	<%
		// header.jsp 파일의 변수 호출
		if( loginid == null ){ response.sendRedirect("/frontend_portfolio/member/login.jsp"); }
	%>
	
	<div class="webbox">
		<form class="signupform" action="/frontend_portfolio/member/signup" method="post">
		<h2 class="pagetitle"> 회원정보 </h2>
		<h3 class="parttitle"> 기본정보 </h3>
		
		<table class="signuptable">
			<tr>
				<td class="col1"> 회원번호 </td>
				<td class="col2" id="mno"> </td>
			</tr>
			<tr>
				<td class="col1"> 가입일 </td>
				<td class="col2" id="mdate"> </td>
			</tr>
			<tr>
				<td class="col1"> 회원번호 </td>
				<td class="col2" id="mno"> </td>
			</tr>
			<tr>
				<td class="col1"> 포인트 </td>
				<td class="col2" id="mpoint"> </td>
			</tr>
			<tr>
				<td class="col1"> 아아디 </td>
				<td class="col2" id="mid"> </td>
			</tr>
			<tr>
				<td class="col1"> 비밀번호 </td>
				<td class="col2"><input readonly="readonly" type="pasword" name="mpassword"> </td>
				<td class="col3"><button type="button"> 수정 </button></td>
			</tr>
			<tr>
				<td class="col1"> 이름 </td>
				<td class="col2"><input readonly="readonly" type="text" name="mname"> </td>
				<td class="col3"><button type="button"> 수정 </button></td>
			</tr>
			<tr>
				<td class="col1"> 전화번호 </td>
				<td class="col2"><input readonly="readonly" type="text" name="mphone"> </td>
				<td class="col3"><button type="button"> 수정 </button></td>
			</tr>
			<tr>
				<td class="col1"> 이메일 </td>
				<td class="col2"><input readonly="readonly" type="text" name="memail"> </td>
				<td class="col3"><button type="button"> 수정 </button></td>
			</tr>
			<tr>
				<td rowspan="2" class="col1" > 주소  </td>
				<td colspan="2" class="col2"> 
					<span>
						<input readonly="readonly" type="text" id="sample4_postcode" placeholder="우편번호" name="maddress1">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					</span>
					<span>
						<input readonly="readonly" type="text" id="sample4_roadAddress" placeholder="도로명주소" name="maddress2">
						<input readonly="readonly" type="text" id="sample4_jibunAddress" placeholder="지번주소" name="maddress3">
					</span>
				</td>
			</tr>
			<tr>
				<td class="col2"> <input readonly="readonly" type="text" id="sample4_detailAddress" placeholder="상세주소" name="maddress4"> </td>
				<td class="col3"><button type="button"> 수정 </button> </td>
			</tr>
		</table>
		
		<div class="signupbtnbox">
			<button type="button" onclick="formsubmit()"> 회원탈퇴 </button>
		</div>
		</form>
	</div>
	
	<script type="text/javascript" src="/frontend_portfolio/js/member/info.js"></script>

</body>
</html>