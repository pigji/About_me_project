<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>web project3</title>
	
	<!-- 뷰포트 설정[ 웹 페이지의 너비를 모바일 기기의 뷰포트로 설정하여 각 비율이 다르게 표현된다.(F12로 확인) -->
	<meta name="viewport" content="width=device-width, inital-scale=1.0">
	
	<link href="/frontend_portfolio/css/Responsive/web3.css" rel="stylesheet">
</head>
<body>

		<div id="header">  <!-- 헤더 -->
			<div class="box">
				<h1 class="logo">
					<a href="/frontend_portfolio/Responsive/web1.jsp">
						<span class="logo_impact">THE</span> 스튜디오
					</a>
				</h1>
				<ul class="top_menu">
					<li><a href="/frontend_portfolio/Responsive/web2.jsp">스튜디오 소개 </a> </li>
					<li><a href="/frontend_portfolio/Responsive/web3.jsp">스튜디오 예약</a></li>
					<li><a href="#">블로그</a></li>
					<li><a href="#">포토 갤러리</a></li>
					<li><a href="#">오시는 길</a></li>
				</ul>
			</div>
		</div>
		
	
		<div id="main_img">	<!-- main img -->
			<div class="main_text">
				<h3>스튜디오 예약</h3>
				<p>사전에 인터넷으로 예약해주세요.</p>
			</div>
		</div>
	
	
	
		<div id="main_con">	<!-- main con s -->
			<div class="main_cbox">
				<div class="cbox_01">	<!--  예약안내 왼쪽 -->
				
					<div class="cbox_01_text01">예약날짜를 선택해주세요</div>
					<div class="cbox_01_text02">◀ 2021.09 ▶</div>
				
					<div>
						<table class="cbox_tb">
							<tr class="cbox_tb_tr01">
								<td class="text_red">Sun</td>
								<td>Mon</td>
								<td>Tue</td>
								<td>Wed</td>
								<td>Tnu</td>
								<td>Fri</td>
								<td>Sat</td>	
							</tr>
							
							<tr class="cbox_tb_tr02">
								<td class="text_red">29</td>
								<td>30</td>
								<td>31</td>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>	
							</tr>
							<tr class="cbox_tb_tr03">
								<td class="text_red">5</td>
								<td>6</td>
								<td>7</td>
								<td>8</td>
								<td>9</td>
								<td>10</td>
								<td>11</td>	
							</tr>
							
							<tr class="cbox_tb_tr04">
								<td class="text_red">12</td>
								<td>13</td>
								<td>14</td>
								<td>15</td>
								<td>16</td>
								<td>17</td>
								<td>18</td>	
							</tr>
							
							<tr class="cbox_tb_tr05">
								<td class="text_red">19</td>
								<td>20</td>
								<td>21</td>
								<td>22</td>
								<td>23</td>
								<td>24</td>
								<td>25</td>	
							</tr>
							
							<tr class="cbox_tb_tr06">
								<td class="text_red">26</td>
								<td>27</td>
								<td>27</td>
								<td>29</td>
								<td>30</td>
								<td> </td>
								<td> </td>	
							</tr>															
												
						</table>
					</div>
				</div>
	
				<div class="cbox_02">	<!--  예약안내 오른쪽 -->
					<div class="cbox_02_01">
						<h3> 예약 안내</h3>
						<ul class="cbox_text01">
							<li> - 1일전에 예약해주세요.</li>
							<li> - 사용 일주일 이후에 취소는</li>
							<li> - 이용 시간은 촬영과 준비 모두 포함입니다</li>
							<li> - 일요일은 휴일입니다.</li>
						</ul>
					</div>
							
					<div class="cbox_02_02">
					<h3> 이용 요금</h3>
						<ul class="cbox_text02">
							<li> - 1시간 : 30,000원</li>
							<li> - 반일 대여: 100,000원</li>
							<li> - 전일 대여: 200,000원</li>
						</ul>
					<p>※ 자세한 내용은 전화(1688-1688)로 문의주세요.</p>	
					</div>	
					
				</div>			
			</div>						
		</div>	<!-- main con e -->
	
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
					<a href="#"><img src="/frontend_portfolio/image/facebook.png"></a>
					<a href="#"><img src="/frontend_portfolio/image/blog.png"></a>
					<a href="#"><img src="/frontend_portfolio/image/instagram.png"></a>
				</div>
			</div>
		</div>

</body>
</html>