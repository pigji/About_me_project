<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Header </title>
	
	<!-- 사용자정의 css 호출 -->
	<link href="/frontend_portfolio/css/1.index.css" rel="stylesheet">
	
</head>
<body>

	<%@include file="1.header.jsp" %>
	
	<!-- 슬라이드 -->
	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1000">
	
	<div class="caroues1-inner"> <!-- 슬라이드 : 이미지 삽입 구역 -->
		<div class="carousel-item active">
			<img src="" class="">
		</div>
		<div class="carousel-item">
			<img src="" class="">
		</div>
		<div class="carousel-item">
			<img src="" class="">
		</div>
		<div class="carousel-item">
			<img src="" class="">
		</div>
		
		
		 <!-- 왼쪽 버튼 -->
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  
		  <!-- 오른쪽 버튼 -->
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		  
		  
		  <!-- 제품 출력 -->
			<div class="container"> <!-- 전체 박스권 -->
			
			<h6 class="box_title"> WEEKLY BEST </h6>
			
			
			
			<div class="itemlist"> <!-- 일정 구역 -->
				
				
		
			</div>
	</div>
	
	<script type="text/javascript" src="/frontend_portfolio/js/1.index.js"></script>
	
	

</body>
</html>