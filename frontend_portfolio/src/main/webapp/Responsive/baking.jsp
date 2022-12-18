<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>web project1</title>
	
	<link href="/frontend_portfolio/css/Responsive/baking.css" rel="stylesheet">
	
</head>
<body>

	<!-- 헤더 -->
	<header>
		<div class="box">
			<div id="logo">
				<img src="/frontend_portfolio/image/baking_logo.png">
			</div>
			<nav id="menu">
				<ul id="top_menu">
					<li> 김지영(jykim)님</li><li>|</li>
					<li> 로그아웃 </li><li>|</li>
					<li> 정보수정 </li>
				</ul>
				<ul id="main_menu">
					<li> HOME </li>
					<li> 출석부 </li>
					<li> 작품갤러리 </li>
					<li> 게시판 </li>
				</ul>
			</nav>
		</div>
	</header>
	
	<!-- 메인이미지 -->
	<section id="main_image">
		<a href="#"><img src="/frontend_portfolio/image/btn_class.png"></a>
	</section>
	
	<!-- 사이드바 -->
	<div class="box2">
		<aside>
			<h2 class="title1"> The 베이킹</h2>
			<p class="commnet"> 안녕하세요. 쿠키와 빵 만들기 정보를 공유하고 소통하는 공간입니다. </p>
			<div class="search">
				<input type="text"><button> 검색 </button>
			</div>
			<div class="">
				<h2 class="title2"> 베이킹/요리 </h2>
				<ul class="list">
					<li> 쿠키 만들기 </li>
					<li> 빵 만들기 </li>
					<li> 마카롱 만들기 </li>
				</ul>
			</div>
			
			
			<div class="ripple">
				<h2 class="title3"> 최근 댓글 </h2>
				<ul>
					<li> 안녕하세요 </li>
					<li> 반갑습니다. </li>
					<li> 안녕하세요 </li>
				</ul>
			</div>
		</aside>
	</div>
	
	<!-- 메인섹션  -->
	<div class="box">
		<section id="main">
			<div id="main1">
				<h3 class="title1"> 알림 </h3>
				<ul class="latest">
					<li class="items">
						<div class="subject"> 쿠킹 클래스 연기합니다. </div>
						<div class="date"> 09.30 </div>
					</li>
					<li class="items">
						<div class="subject"> 쿠킹 클래스 연기합니다. </div>
						<div class="date"> 09.30 </div>
					</li>
					<li class="items">
						<div class="subject"> 쿠킹 클래스 연기합니다. </div>
						<div class="date"> 09.30 </div>
					</li>
					<li class="items">
						<div class="subject"> 쿠킹 클래스 연기합니다. </div>
						<div class="date"> 09.30 </div>
					</li>
					<li class="items">
						<div class="subject"> 쿠킹 클래스 연기합니다. </div>
						<div class="date"> 09.30 </div>
					</li>
				</ul>
				
				<h3 class="title2"> 게시판 </h3>
				<ul class="latest">
					<li class="items">
						<div class="subject"> 안녕하세요. 반갑습니다. </div>
						<div class="date"> 09.30 </div>
					</li>
				</ul><ul class="latst">
					<li class="items">
						<div class="subject"> 안녕하세요. 반갑습니다. </div>
						<div class="date"> 09.30 </div>
					</li>
				</ul><ul class="latst">
					<li class="items">
						<div class="subject"> 안녕하세요. 반갑습니다. </div>
						<div class="date"> 09.30 </div>
					</li>
				</ul><ul class="latst">
					<li class="items">
						<div class="subject"> 안녕하세요. 반갑습니다. </div>
						<div class="date"> 09.30 </div>
					</li>
				</ul><ul class="latst">
					<li class="items">
						<div class="subject"> 안녕하세요. 반갑습니다. </div>
						<div class="date"> 09.30 </div>
					</li>
				</ul>
			</div>
			
			<div id="main2">
					<h3 class="title1"> 제빵 클래스 </h3>
					<ul class="item1">
						<li><img src="/frontend_portfolio/image/bread1.png"></li>
						<li> 도너츠 만들기[3] </li>
						<li> 21.09.30 </li>
					</ul>
					<ul class="item2">
						<li><img src="/frontend_portfolio/image/bread2.png"></li>
						<li> 도너츠 만들기[3] </li>
						<li> 21.09.30 </li>
					</ul>
					<ul class="item1">
						<li><img src="/frontend_portfolio/image/bread3.png"></li>
						<li> 도너츠 만들기[3] </li>
						<li> 09.30 </li>
					</ul>
					<ul class="item2">
						<li><img src="/frontend_portfolio/image/bread4.png"></li>
						<li> 도너츠 만들기[3] </li>
						<li> 09.30 </li>
					</ul>
			</div>
		</section>
	</div>

</body>
</html>