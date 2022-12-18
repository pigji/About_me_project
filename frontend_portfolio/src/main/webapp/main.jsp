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
	
		<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/>
	
	<style>
	.wrapper {
    max-width:1200px;
    width:75%;
    margin:0 auto;
}

.swiper {
    max-width: 480px;
    width:100%;
    height: 360px;
    position: relative;
    overflow: visible;
}

.swiper-slide {
    max-width: 480px;
    width:100%;
    height:360px;
    text-align: center;
    font-size: 18px;
    background: #fff;
    border-radius: 10px;

    /* Center slide text vertically */
    display: -webkit-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    -webkit-justify-content: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -webkit-align-items: center;
    align-items: center;
}

.swiper-slide img {
    display: block;
    width: 100%;
    width: 480px;
    height: 100%;
    object-fit: cover;
}

/**/

.swiper-slide {opacity:0.5; transition:opacity 0.5s;}
.swiper-slide-active {opacity:1;}

.changing {
    transition:opacity 0.3s;
    pointer-events:none;
  }
  
  .changed {  
    transition:none;
  }


/* pagination */
.mySwiper .swiper-pagination {
    position: absolute;
    bottom: -30px;
    text-align:left;
    
}

/* nav btn*/
.mySwiper .swiper-button-next,
.mySwiper .swiper-button-prev {
    top: 50%;
}

.mySwiper .swiper-button-prev {
    transform:translateX(-200%);
}
.mySwiper .swiper-button-next {
    transform:translateX(200%);
}

.custom-fraction {text-align:right; margin:15px 5px 0 0;}
.btn-wrapper {
    margin-top:50px;
}
	</style>
	


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
					<div class="p_box">
						<div class="p1_c_box">
							<div class="p1_content">
								<p> 안녕하세요. 프론트엔드 개발자 성지혜입니다.</p>
								<p> 어쩌고 저쩌고 하고싶은 일 모두 할 수 있음 좋겠네. </p>
							</div>
						</div>
							<del></del>
						<div class="p1_c_box">
							<div class="p1_content">
								<p> 간단 소개글 작성하는 칸 </p>
							</div>
						</div>
					</div>	
					<div class="part1_img"> <!-- 프로필 이미지 -->
						<img src="/frontend_portfolio/img/프로필1.jpg">
					</div>
				</div>
			</section>
		
	
			<section class="part2"> <!-- 2구역 -->
				<div class="wrapper">
					<div class="title"> <!-- 제목 -->
						<h3> 학력 </h3>
					</div>
					<div class="part2_content">
						<div class="aboutme"> <!-- 이름, 생년월일 소개 -->
							<div class="about1">
								<span> 😚이름 : 성지혜 </span>
								<span> 😚생년월일 : 2000.01.22 </span>
								<span> 😚주소지 : 경기도 안산시 상록구 </span>
							</div>
							<div class="about2">
								<span> 😚연락처 : 010-0000-0000 </span>
								<span> 😚이메일 : dsfsd@naver.com </span>
								<span> 😚GitHue : sjfksjf </span>
							</div>
						</div>
						<div> <!-- 학력, 자격증 소개 -->
							<div>
                <h2> 자격증 <h2>
                <table>
									<tr>
										<th colspan="3">날짜</th>
                    <th colspan="3">자격증명</th>
                    <th>기관</th>
									</tr>
                  <tr>
                    <td colspan="3">2020.12.01</td>
                    <td colspan="3">컴퓨터활용능력2급</td>
                    <td>생산본부</td>
                  </tr>
								</table>
							</div>
							<div>
								<h2> 수상내역 <h2>
                <table>
									<tr>
										<th colspan="3">날짜</th>
                    <th colspan="5">수상명</th>
                    <th>기관</th>
									</tr>
                  <tr>
                    <td colspan="3">2020.12.01</td>
                    <td colspan="5">ICT융합개발프로젝트 장려상</td>
                    <td>동서울대학교</td>
                  </tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section> <!-- 3구역end -->
			
					
			<section class="part3"> <!-- 3구역 -->
				<div class="part3_box">
					<div class="title"> <!-- 제목 -->
						<h3> 스킬 </h3>
					</div>
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
                    하이퍼 텍스트 마크업 언어는 웹 페이지 표시를 위해 개발된 지배적인 마크업 언어다.
                    또한, HTML은 제목, 단락, 목록 등과 같은 본문을 위한 구조적 의미를 나타내는 것뿐만 아니라
                    링크, 인용과 그 밖의 항목으로 구조적 문서를 만들 수 있는 방법을 제공한다
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
										자바스크립트는 객체 기반의 스크립트 프로그래밍 언어이다. 이 언어는 웹 브라우저 내에서 주로 사용되며, 다른 응용 프로그램의 내장 객체에도 접근할 수 있는 기능을 가지고 있다.
									</div>
									<div class="content_box">
										 열심히 합니다.
									</div>
								</div>
							</div>
						</div>
						<div class="skills">
							<div class="skill_box">
								<div class="name"> React </div>
								<div class="contents">
									<div class="content_box">
										 리액트는 자바스크립트 라이브러리의 하나로서 사용자 인터페이스를 만들기 위해 사용된다. 페이스북과 개별 개발자 및 기업들 공동체에 의해 유지보수된다. 리액트는 싱글 페이지 애플리케이션이나 모바일 애플리케이션 개발에 사용될 수 있다.
									</div>
									<div class="content_box">
										 열심히 합니다.
									</div>
								</div>
							</div>
							<div class="skill_box">
								<div class="name"> Spring </div>
								<div class="contents">
									<div class="content_box">
										 스프링 프레임워크는 자바 플랫폼을 위한 오픈 소스 애플리케이션 프레임워크로서 간단히 스프링이라고도 한다. 동적인 웹 사이트를 개발하기 위한 여러 가지 서비스를 제공하고 있다.
									</div>
									<div class="content_box">
										 열심히 합니다.
									</div>
								</div>
							</div>
						</div> <!-- 4가지 스킬end -->
					</div>
				</div>
			</section>
			

			<section class="part4"> <!-- 4구역 -->
				<div class="part4_box">
					<div class="title"> <!-- 제목 -->
						<h3> Project </h3>
				          </div>
				          
				          
				          <div class="wrapper">
								  <h1>Swiperjs Slider</h1>
								  <!-- Swiper -->
								  <div class="swiper mySwiper">
								    <div class="swiper-wrapper">
								      <div class="swiper-slide">Slide 1</div>
								      <div class="swiper-slide">Slide 2</div>
								      <div class="swiper-slide">Slide 3</div>
								      <div class="swiper-slide">Slide 4</div>
								      <div class="swiper-slide">Slide 5</div>
								      <div class="swiper-slide">Slide 6</div>
								      <div class="swiper-slide">Slide 7</div>
								      <div class="swiper-slide">Slide 8</div>
								      <div class="swiper-slide">Slide 9</div>
								    </div>
								    <div class="swiper-pagination"></div>
								    <div class="swiper-button-next"></div>
								    <div class="swiper-button-prev"></div>
								    <div class="custom-fraction">
								      <span class="current">1</span>/<span class="all">9
								    </div>
								  </div>
								  <div class="btn-wrapper">
								    <button class="auto-start">slide autoplay start</button>
								    <button class="auto-stop">slide autoplay stop</button>
								  </div>
								</div>
				          
				          <div>
				            <div>
				              <h2> 레스토랑 소개 웹 페이지 </h2>
				            </div>
				            <div>
				              <div>
				                <img>
				              </div>
				              <div>
				                <div>
				                  <h4> 프로젝트 개발동기 </h4>
				                  <p>첫째. 다양한 레이아웃을 이용한 페이지에 수업 시간에 배운 기능을 다양하게 활용해 볼 수 있을 것 같아서 </p>
				                  <p>둘째. SNS와 블로그로 식당 예약, 메뉴, 리뷰 등을 볼 수 있기는 하지만,
									홈페이지를 제작하여 이용자들의 접근성을 높이고 예약과 메뉴를 한번에 볼 수 있도록 가시성을 높이기 위해서 </p>
				                  <p>셋째. 성장하는 한국의 외식 플랫폼을 만들어 보고싶다 </p>
				                </div>
				                <div></div>
				                <div>
				                  <p> 주요기능 : 갤러리, 게시판, 예약[ 캘린더 ]</p>
				                  <p><a href="#"> Git주소 </a></p>
				                  <p> Skills : HTML, CSS, JS</p>
				                </div>
				              </div>
				            </div>
				 	 </div>
				  </div>
			</section>
			
			
			
			<footer></footer>
	 	</div> <!-- 반응형페이지 end -->
		
	</div> <!-- 전체박스권 end -->
	
	<!-- 제이쿼리 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	


<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	
	<script>
	$("document").ready(function () {
	    // 문서의 dom이 준비되면
	    // .mySwiper 클래스를 swiper 슬라이더로 만듦
	    // 이후에 swiper변수에 할당했기 때문에 스크립트로 제어할 수도 있음.
	    var swiper = new Swiper(".mySwiper", {
	        slidesPerView: 'auto',
	        spaceBetween: 80,
	        loop: true,

	        // pagination 기본은 bullet
	        pagination: {
	            el: ".swiper-pagination"
	        },

	        // 좌우 화살표 navigation element 지정
	        navigation: {
	            nextEl: ".swiper-button-next",
	            prevEl: ".swiper-button-prev"
	        },
	        // 반응형
	        breakpoints: {
	            // 600px 이하가 되면 슬라이드 간 간격을 0으로
	            600: {
	                spaceBetween: 0
	            },
	        },

	        on: {
	            init: function() {
	                $('.swiper-slide').addClass('changed');

	                // fraction에 현재 인덱스와 전체 인덱스 표시
	                // this.loopedSlides는 loop, slidesPerView: 'auto'일 때 제대로 동작
	                $('.custom-fraction .current').text(this.realIndex + 1);
	                $('.custom-fraction .all').text(this.loopedSlides);
	                // console.log(this);
	                // console.log(this.loopedSlides)
	            },

	            slideChangeTransitionStart: function() {
	                // 기본적으로 제공하는 swiper-slide-active 클래스를 이용해
	                // css transition 애니메이션 작성 가능하다.
	                // 다만 루프 모드일 때에는 루프 픽스를 하며 slide를 바꿔치기를 하는데,
	                // 이 때 플리커링이 발생할 수 있다.
	                // css transition을 서로 다르게 설정한 changed, changing 클래스를 이용
	                $('.swiper-slide').addClass('changing');
	                $('.swiper-slide').removeClass('changed');

	                // 페이지 넘어갈 때마다 fraction 현재 인덱스 변경
	                $('.custom-fraction .current').text(this.realIndex + 1);
	            },

	            slideChangeTransitionEnd: function() {
	                // changing : transition O
	                // changed : transition X
	                $('.swiper-slide').removeClass('changing');
	                $('.swiper-slide').addClass('changed');
	            }
	        },
	    });

	    // 슬라이더 할당한 swiper로 슬라이더 제어
	    $(".auto-start").on("click", function() {
	        // 기본 설정으로 autoplay 시작
	        console.log("autoplay start");
	        swiper.autoplay.start();
	    });

	    $(".auto-stop").on("click", function() {
	        console.log("autoplay stop");
	        swiper.autoplay.stop();
	    });
	});
	</script>
	<!-- 사용자지정 -->
	<script type="text/javascript" src="/frontend_portfolio/js/main.js"></script>

</body>
</html>