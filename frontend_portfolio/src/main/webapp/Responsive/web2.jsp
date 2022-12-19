<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>web project2</title>
	
	<!-- 뷰포트 설정[ 웹 페이지의 너비를 모바일 기기의 뷰포트로 설정하여 각 비율이 다르게 표현된다.(F12로 확인) -->
	<meta name="viewport" content="width=device-width, inital-scale=1.0">
	
	<link href="/frontend_portfolio/css/Responsive/web2.css" rel="stylesheet">
	
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
	<div id="main_img"> <!-- 메인이미지 -->
		<div class="main_text">
			<h3>스튜디오 소개</h3>
			<p>제품 사진 활용을 위한 스튜디오 임대!</p>
		</div>
	</div>
	<div id="banners"> <!-- 배너 -->
		<div class="banner_box">
			<div class="banner">
				<ul>
					<li class="bn_col1"><img src="/frontend_portfolio/image/intro1.jpg"></li>
					<li class="bn_col2">	
						<h3> 최상의 결과</h3>
						<ul class="bn_col2_text"> 
							<li>"하나의 목표를 위해 최상의 노력을"</li>
							<li>스튜디오 촬영세트를 만드는데에 통상 많은 비용이 들어 제작비를 상승시키는 주원인이 됩니다.</li>
							<li>그러나 THE 스튜디오에서는 변수가 생기지 않도록 완벽한 촬영 준비와
							함께 가획 단계에 같이 함여하여 최상의 결과물을 얻을 수 있게 합니다.</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	

	<div id="banners2"> <!-- 배너 -->
		<div class="banner_box2">
			<div class="banner2">
				<ul>
					
					<li class="bn2_col2">	
						<h3> 최상의 결과</h3>
						<ul class="bn2_col2_text"> 
							<li>"하나의 목표를 위해 최상의 노력을"</li>
							<li>스튜디오 촬영세트를 만드는데에 통상 많은 비용이 들어 제작비를 상승시키는 주원인이 됩니다.</li>
							<li>그러나 THE 스튜디오에서는 변수가 생기지 않도록 완벽한 촬영 준비와
							함께 가획 단계에 같이 함여하여 최상의 결과물을 얻을 수 있게 합니다.</li>
						</ul>
					</li>
					<li class="bn2_col1"><img src="/frontend_portfolio/image/intro2.jpg"></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="footer"> <!-- 푸터 -->
		<div class="box">
			<div class="ft_item">
				<h3> 고객 센터</h3>
				<h1> Tel : 1588 - 1588</h1>
			</div>
			<div class="ft_item">
				<ul>
					<li>회사소개 |</li>
					<li>개인정보처리방침 |</li>
					<li>이용약관 |</li>
					<li>제휴안내 |</li>
				</ul>
				<p>
					주소 : 경기도 용인시 수지구 정광로 123
					email : photo@korea.com
					COPYTRIGHT &copy; 2021 The 스튜디오. ALL RIGHTS RESERVED.
				</p>
			</div>
			<div class="ft_sns">
				<a href="https://ko-kr.facebook.com/"><img src="/frontend_portfolio/image/facebook.png"></a>
				<a href="https://section.blog.naver.com/BlogHome.naver?directoryNo=0&currentPage=1&groupId=0"><img src="/frontend_portfolio/image/blog.png"></a>
				<a href="https://www.instagram.com/"><img src="/frontend_portfolio/image/instagram.png"></a>
			</div>
		</div>
	</div>
	
</body>
</html>