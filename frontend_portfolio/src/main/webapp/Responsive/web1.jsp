<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>web project1</title>
	
	<!-- 뷰포트 설정[ 웹 페이지의 너비를 모바일 기기의 뷰포트로 설정하여 각 비율이 다르게 표현된다.(F12로 확인) -->
	<meta name="viewport" content="width=device-width, inital-scale=1.0">
	
	<link href="/frontend_portfolio/css/Responsive/web1.css" rel="stylesheet">
	
</head>
<body>

	<div id="header">  <!-- 헤더 -->
		<div class="box">
			<h1 class="logo">
				<a href="/frontend_portfolio/Responsive/web2.jsp">
					<span class="logo_impact">THE</span> 스튜디오
				</a>
			</h1>
			<ul class="top_menu">
				<li><a href="/frontend_portfolio/Responsive/web1.jsp">스튜디오 소개 </a> </li>
				<li><a href="/frontend_portfolio/Responsive/web3.jsp">스튜디오 예약</a></li>
				<li><a href="#">블로그</a></li>
				<li><a href="#">포토 갤러리</a></li>
				<li><a href="#">오시는 길</a></li>
			</ul>
		</div>
	</div> 
	<div id="main_img">   <!-- 메인 이미지 -->
		<img alt="" src="/frontend_portfolio/image/c_main.jpg">
	</div>
	<div id="banners">  <!-- 배너 -->
		<div class="box"> 
			<div class="banner">
				<ul>
					<li class="bn_col1"><img src="/frontend_portfolio/image/icon1.png"></li>
					<li class="bn_col2"> 
						<h3> 예약안내 </h3>
						<p> 스튜디오 대여는 사전에 인터넷 예약을 하셔야 합니다. 예약은 1일 이전까지 가능합니다.</p>
					</li>
				</ul>
			</div>
			<div class="banner">
				<ul>
					<li class="bn_col1"><img src="/frontend_portfolio/image/icon2.png"></li>
					<li class="bn_col2"> 
						<h3> 포토갤러리 </h3>
						<p> 취업 사진, 가족 사진, 프로필 사진, 우정 사진 등 개인 또는 단체가 이용 할 수 있습니다.</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="items">  <!-- 아이템 소개  -->
		<div class="box">
			<div class="item">
				<ul>
					<li> <img alt="" src="/frontend_portfolio/image/image1.jpg"></li>
					<li> <h3>촬영 스튜디오</h3></li>
					<li> 카메라, 조명 등 촬영 정비 완비 </li>
				</ul>
			</div>
			<div class="item">
				<ul>
					<li> <img alt="" src="/frontend_portfolio/image/image2.jpg"></li>
					<li> <h3>촬영 스튜디오</h3></li>
					<li> 카메라, 조명 등 촬영 정비 완비 </li>
				</ul>
			</div>
			<div class="item">
				<ul>
					<li> <img alt="" src="/frontend_portfolio/image/image3.jpg"></li>
					<li> <h3>촬영 스튜디오</h3></li>
					<li> 카메라, 조명 등 촬영 정비 완비 </li>
				</ul>
			</div>
			<div class="item">
				<ul>
					<li> <img alt="" src="/frontend_portfolio/image/image4.jpg"></li>
					<li> <h3>촬영 스튜디오</h3></li>
					<li> 카메라, 조명 등 촬영 정비 완비 </li>
				</ul>
			</div>
		</div>
	 </div> 
	
	<div id="footer">  <!-- 푸터 -->
		<div class="box">
			<div class="ft_item">
				<h3> 고객 센터</h3>
				<h1> Tel : 1588 - 1588 </h1>
			</div>
			<div class="ft_item">
				<ul>
					<li>회사소개 | </li> 
					<li>개인정보처리방침 | </li> 
					<li>이용약관 | </li> 
					<li>제휴안내 | </li>
				</ul>
				<p>
					주소 : 경기도 용인시 수지구 정평로 123 <br>
					email : qweqwe@qweqwe.com <br>
					COPYRIGHT &copy; 2022 The 스튜디오. ALL RIGHTS RESERVED.
					<!--  &copy;  : HTML 특수문자  -->
				</p>
			</div>
			<div class="ft_sns">
				<a href="#"><img src="/frontend_portfolio/image/facebook.png"></a>
				<a href="#"><img src="/frontend_portfolio/image/blog.png"></a>
				<a href="#"><img src="/frontend_portfolio/image/instagram.png"></a>
			</div>
		</div>
	</div> 

</body>
</html>