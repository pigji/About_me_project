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

	<%@include file="../1.header.jsp" %>
	
	<div class="webbox">
		<form class="signupform" action="/jspweb2/tsignup" method="post">
			<h2 class="pagetitle"> ♧ 회원가입 페이지 ♧ </h2>
			<h3 class="parttitle"> 기본정보 </h3>
			
			<table class="signuptable">
				<tr>
					<td class="col1"> ♧ 아이디 </td>
					<td class="col2"><input type="text" name="mid" id="mid" onkeyup="mevent1()"></td>
					<td class="col3">  </td>
				</tr>
				<tr>
					<td class="col1"> ♧ 비밀번호 </td>
					<td class="col2"><input type="text" name="mpassword" id="mpassword" onkeyup="mevent2()"></td>
					<td rowspan="2" class="col3">  </td>
				</tr>
				<tr>
					<td class="col1"> ♧ 비밀번호 확인 </td>
					<td class="col2"><input type="text" name="mpasswordconfirm" id="mpasswordconfirm" onkeyup="mevent3()"></td>
				</tr>
				<tr>
					<td class="col1"> ♧ 이름 </td>
					<td class="col2"><input type="text" name="mname" id="mname" onkeyup="mevent4()"></td>
					<td class="col3">  </td>
				</tr>
				<tr>
					<td class="col1"> ♧ 전화번호 </td>
					<td class="col2"><input type="text" name="mphone" id="mphone" onkeyup="mevent5()"></td>
					<td class="col3">  </td>
				</tr>
				<tr>
					<td class="col1"> ♧ 이메일 </td>
					<td class="col2"><input type="text" name="memail" id="memail" onkeyup="mevent6()"></td>
					<td class="col3">  </td>
				</tr>
				
				<tr>
				<!-- 카카오 우편 API : https://postcode.map.daum.net/guide -->
					<td rowspan="2" class="col1"> ♧ 주소 </td>
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
			
			<h3 class="parttitle"> 이용약관 </h3>
			
			<span class="confirmbox">
				<textarea readonly="readonly"> 
					<p>제 1장 총칙
						제 1 조(목적)
						본 약관은 국가공간정보포털 웹사이트(이하 "국가공간정보포털")가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 회원과 국가공간정보포털의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.
						제 2 조(약관의 효력과 변경)
						1. 본 ㅁㅁ사이트는 이용자가 본 약관 내용에 동의하는 경우, 국가공간정보포털의 서비스 제공 행위 및 회원의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다.
						2. 본 ㅁㅁ사이트는 약관을 개정할 경우, 적용일자 및 개정사유를 명시하여 현행약관과 함께 국가공간정보포털의 초기화면에 그 적용일 7일 이전부터 적용 전일까지 공지합니다. 단, 회원에 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 국가공간정보포털은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다.
						3. 변경된 약관은 ㅁㅁ홈페이지에 공지하거나 e-mail을 통해 회원에게 공지하며, 약관의 부칙에 명시된 날부터 그 효력이 발생됩니다. 회원이 변경된 약관에 동의하지 않는 경우, 회원은 본인의 회원등록을 취소(회원탈퇴)할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이내에 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우는 약관 변경에 대한 동의로 간주됩니다.
						제 3 조(약관 외 준칙)
						
						본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.</p>
				</textarea>
				<input id="confrim1" type="checkbox">	<span> [필수] 이용약관 동의 </span><br>
				
				<textarea readonly="readonly"> </textarea>
				<input id="confrim2" type="checkbox"><span> [필수] 개인정보 수집 및 이용동의 </span>
			</span>
		
			<div class="signupbtnbox">
				<button type="reset"> 취소하기 </button>
				<button type="button" onclick="formsubmit()"> 회원가입 </button>
			</div>
		</form>
	</div>
	
	
	<!-- JQUERY 라이브러리 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="../js/member/signup.js"></script>

	
</body>
</html>