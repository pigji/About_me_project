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
	
	<div class="webbox"> <!-- 웹페이지 전체 -->
		<div class="hd_top"> <!-- 상단헤더 -->
			<div> <!-- 로고 -->
				<span class="hd_title">
					<a class="nav-link" href="/frontend_portfolio/index.jsp"> Shop </a> 
				</span>
			</div>
			
			<!-- 세션호출 -->
			<%
				String loginid = (String)session.getAttribute("mid");
			%>
			<ul class="hd_sub"> <!-- 상단메뉴 -->
				
				<!-- 비로그인 메뉴 -->
				<% if( loginid == null ){ %>
					<li><a class="nav-link" href="#"> 로그인 </a></li>
					<li><a class="nav-link" href="#"> 회원가입 </a></li>
				<% }else if( loginid.equals("admin")) { %>
					<li><a href="#"> 관리자메뉴 </a></li>
				
				<!-- 로그인 메뉴 -->
				<%  }else{ %>
					<li> <%=loginid %>님 안녕하세요. </li>
					<li><a class="nav-link" href="#"> 로그아웃 </a></li>
				<% } %>
				
				<!-- 공통메뉴 -->
				<li><a class="nav-link" href="#"> 마이쇼핑 </a></li>
				<li><a class="nav-link" href="#"> 고객센터 </a></li>
				
			</ul> <!-- 상단메뉴 end -->
		</div>
		
		<ul class="hd_menu"> <!-- 하단헤더 -->
			<li><a class="nav-link" href="#"> BIG SIZE! </a></li>
			<li><a class="nav-link" href="#"> BIG SIZE! </a></li>
			<li><a class="nav-link" href="#"> BIG SIZE! </a></li>
			<li><a class="nav-link" href="#"> BIG SIZE! </a></li>
			<li class="searchbox">
				<span>
					<input>
					<i class="fas fa-search"></i> <!-- 아이콘 -->
				</span>
				<a  href="#"><i class="fas fa-shopping-cart"></i> </a>
			</li>
		</ul>

	</div> <!-- 웹페이지 전체end -->
	
	<!-- JQUERY 라이브러리 -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	


</body>
</html>