<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>포트폴리오</title>
	
	<!-- css 기본초기화 -->
	<link rel="stylesheet" href="https://unpkg.com/destyle.css@1.0.5/destyle.css">
	
	<!-- 뷰포트 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- 구글폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=DynaPuff&display=swap" rel="stylesheet">
	
	<!-- 아이콘 폰트 js -->
	<script src="https://kit.fontawesome.com/3367894b6f.js" crossorigin="anonymous"></script>
	
	<!-- 사용자정의 css -->
	<link href="/frontend_portfolio/css/main.css" rel="stylesheet">


</head>
<body>


	<div class="web_box"> <!-- 전체박스권 -->
	
		<header>
			<div class="m_body1"> <!-- 상단 헤더 -->
				<div class="m_hd1"> <!-- 이미지 + 메뉴 박스 -->
					<div class="m_title1"> <!-- 이미지 -->
							<a href="#"> HOME </a>
					</div>
						<ul id="m_menu">
							<li><a href="#"> ABOUT </a></li>
							<li><a href="#"> RESUME </a></li>
							<li><a href="#"> PROJECT </a></li>
						</ul>
				</div> <!-- 이미지 + 메뉴 박스end -->
			</div> <!-- 상단 헤더end -->
		</header>
			
			
		<div class="container"> <!-- 반응형 시작 -->
		
			<section class="part1"> <!-- 1구역 -->
				<div class="part1_box">
					<div>
						<div>
							<h4> 안녕하세요. 프론트엔드 개발자 성지혜입니다.</h4>
							<p> 어쩌고 저쩌고 하고싶은 일 모두 할 수 있음 좋겠네. </p>
						</div>
					</div>
						<del></del>
					<div>
						<div>
							<p> 간단 소개글 작성하는 칸 </p>
						</div>
					</div>
					<div class="part1_img"> <!-- 프로필 이미지 -->
						<img src="/frontend_portfolio/img/프로필1.jpg">
					</div>
				</div>
			</section>
		
<%-- <%--	
			<section class="part2">	<!-- 2구역 -->
				<div class="wrapper">
					<h3 class="title"> About me </h3>
					<div class="profile">
						<div class="p_box">
							<div class="part2_pimg"> <!-- 프로필 이미지  -->
								<img src="/frontend_portfolio/img/프로필1.jpg">
							</div>
							<div class="about_me"> <!-- 자기소개란 -->
								<span> 
									안녕하세요. 저는 취준생입니다.
									간단한 자기소개칸
								</span>
							</div>
						</div>
						<div class="privacy1"> <!-- 개인정보 -->
							<p class="c1"> 이름 : 성지혜 </p>
							<p class="c1"> 주소지 : 경기도 안산시 상록구 성호로19길 5 </p>
							
						</div>
						<div class="privacy2">
							<p class="c1"> 연락처 : 010-9760-2217 </p>
							<p class="c1"> 이메일 : wjlqlrll@naver.com </p>
							<p class="c1"> 이메일 : wjlqlrll012@gamil.com </p>
						</div>
					</div>
				</div>
			</section>
			
			<section class="part3"> <!-- 3구역 -->
				<div class="wrapper">
					<h3 class="title"> Resume </h3>
					<div class="profile">
						<h4> 학력 </h4>
							<div> <!-- 졸업대학, 성적증명서 -->
								<img>
							</div>
							
							<h4> 자격증 및 대외활동 </h4>
							<div>
								<img>
								<table></table>
							</div>
					</div>
				</div>
			</section> <!-- 3구역end -->
			
			
			<section class="part4"> <!-- 4구역 -->
				<h3 class="title"> Skills </h3>
				<div class="all_skill">
					<div class="skill_language"> <!-- 배운 기술 , 언어 -->
						<div class="skill"> HTML/CSS</div>
						<div class="skill"> JavaScript </div>
						<div class="skill"> MySQL </div>
						<div class="skill"> Java </div>
						<div class="skill"> JSP </div>
						<div class="skill"> Spring </div>
						<div class="skill"> React </div>
					</div>
					
					<div class="skills"> <!-- 4가지 스킬 -->
						<div class="skill_box">
							<div class="name"> HTML/CSS </div>
							<div class="contents">
								<div class="content_box">
									 웹 표준을 지키려고 노력합니다.
								</div>
								<div class="content_box">
									 열심히 합니다.
								</div>
							</div>
						</div>
						<div class="skill_box">
							<div class="name"> JavaScript </div>
							<div class="contents">
								<div class="content_box">
									 웹 표준을 지키려고 노력합니다.
								</div>
								<div class="content_box">
									 열심히 합니다.
								</div>
							</div>
						</div>
					</div>
					<div class="skills">
						<div class="skill_box">
							<div class="name"> 제목 </div>
							<div class="contents">
								<div class="content_box">
									 웹 표준을 지키려고 노력합니다.<br>
									 skfjskfjskjfkdsjfksdjfkdsssssssskfjskfjksjlsjksjksfjlsfksfks<br>
									 sfsjfkdsssssssssssssssssssssssssssssssssssssssssssssss
								</div>
								<div class="content_box">
									 열심히 합니다.
								</div>
							</div>
						</div>
						<div class="skill_box">
							<div class="name"> 제목 </div>
							<div class="contents">
								<div class="content_box">
									 웹 표준을 지키려고 노력합니다.
								</div>
								<div class="content_box">
									 열심히 합니다.
								</div>
							</div>
						</div>
					</div> <!-- 4가지 스킬end -->
				</div>
			</section>
			
			
			<section class="part5"> <!-- 5구역 -->
			
				<div>	<!-- 프로젝트1 -->
					<h3 class="title"> 프로젝트명 </h3>
					<p> 프로젝트 기간~ </p>
					<div>
						<div>
							<div> <!-- 프로젝트 이미지 -->
								<img>
							</div>
							<div>
								<div>
									<p> 프로젝트 개발 동기 </p>
								</div>
								<div>
									<p> 프로젝트 설명 </p>
								</div>
								<div>
									<a href="#"><button type="button" onclick="readme()"></button></a>
								</div>
							</div>
							
							<div>
								<ul>
									<li> 주요 기능 </li>
									<li> GitHub 주소 </li>
									<li> Skills </li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
				<div> <!-- 프로젝트2 -->
						<h3 class="title"> 레스토랑 소개 </h3>
						<p> 프로젝트 기간~ </p>
						<div>
							<div>
								<div> <!-- 프로젝트 이미지 -->
									<img>
								</div>
								<div>
									<div>
										<p> 프로젝트 개발 동기 </p>
									</div>
									<div>
										<p> 보험가입 게시판 </p>
									</div>
									<div>
										<a href="#"><button type="button" onclick="readme()"></button></a>
									</div>
								</div>
								
								<div>
									<ul>
										<li> 주요 기능 </li>
										<li> GitHub 주소 </li>
										<li> Skills </li>
									</ul>
								</div>
							</div>
					</div>
				</div>
				
			</section>
			
			
			<footer></footer>
			--%> 
	 	</div> <!-- 반응형페이지 end -->
		
	</div> <!-- 전체박스권 end -->

</body>
</html>