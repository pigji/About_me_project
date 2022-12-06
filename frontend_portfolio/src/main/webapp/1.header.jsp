<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Index </title>
	
	<!-- 사용자정의 css 호출 -->
	<link href="/frontend_portfolio/css/1.header.css" rel="stylesheet">
	
	<!-- 뷰포트 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- 폰트어썸[ 아이콘 ] -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
	
	<!-- 부트스트랩 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	
</head>
<body>
	
	
	<div class="webbox"> 	<!-- 웹페이지 박스권 -->
		<div class="hd_top"> <!-- 상단 헤더 -->
			<div>	<!--  로고  -->
				<span class="hd_title"> 
					<a class="nav-link" href="/frontend_portfolio/index.jsp"> Shop</a> 
				</span>	
			</div>
			
			<!-- 세션 호출 [ JSP방식 = 템플릿마다 다름 ( JSP vs 리액트 ) -->
			<%
				// JSP 스크립트 태그 ( 태그안에 JAVA 문법 작성 가능 )
				String loginid = (String)session.getAttribute("mid"); 	
							// 형변환 : 세션자료형 = object// jsp 기본 객체로 세션 제공
			%>
			<ul class="hd_sub">	<!--  상단 메뉴 -->
			
			<!-- 비로그인 메뉴 // 세션이 없다     로그인 안했네...    -->
			<% if( loginid == null ){ %>
				<li> <a class="nav-link" href="/frontend_portfolio/member/login.jsp">로그인</a> </li>
				<li> <a class="nav-link" href="/frontend_portfolio/member/signup.jsp">회원가입</a></li>
			<%	}else if( loginid.equals("admin") ){  %> <!-- 로그인된 아이디가 admin이면 보이는 메뉴 -->
				<li> <a href="/frontend_portfolio/admin/dashboard.jsp">관리자모드</a> </li>
			<!-- 로그인 메뉴  // 세션이 존재한다.    로그인 했다..  -->
			<%	}else{  %>
				<li> <%=loginid %>님 안녕하세요 </li>
				<li> <a class="nav-link" href="/frontend_portfolio/member/logout.jsp"> 로그아웃 </a> </li>
			<%  }	 %>
			
			<!--  공통 메뉴  -->
				<li> <a class="nav-link" href="/frontend_portfolio/member/info.jsp">마이쇼핑</a> </li>
				<li> <a class="nav-link" href="/frontend_portfolio/board/list.jsp">고객센터</a> </li>
				
			</ul> <!--  상단 메뉴 end  -->
			
		</div>
		
		<ul class="hd_menu"> <!-- 하단 헤더 -->
			<li><a class="nav-link" href="#"> 1코스 </a></li>
			<li><a class="nav-link" href="#"> 2코스 </a></li>
			<li><a class="nav-link" href="#"> 3코스 </a></li>
			<li><a class="nav-link" href="#"> 4코스 </a></li>
			<li><a class="nav-link" href="/frontend_portfolio/board/api.jsp"> 공공데이터 </a></li>
			<li><a class="nav-link" href="/frontend_portfolio/board/chatting.jsp"> 채팅방 </a></li>
			<li class="searchbox">
				<span>
					<input>
					<i class="fas fa-search"></i>
				</span>
				<a  href="/jspweb/product/cart.jsp"><i class="fas fa-shopping-cart"></i> </a>
			</li>
			
		</ul>
	</div>

	<!-- 부트스트랩 JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	
	<!-- JQUERY 라이브러리 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	


</body>
</html>