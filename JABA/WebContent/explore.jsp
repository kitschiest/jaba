<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String ctxPath=request.getContextPath(); %>
<% String avenue = request.getParameter("city"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>explore</title>
<script src='https://code.jquery.com/jquery-3.4.0.js'></script>
<!-- RESET -->
<link href="<%=ctxPath %>/css/html5_reset.css" rel="stylesheet">
<!-- HEADER CSS -->
<link href="<%=ctxPath %>/css/header.css" rel="stylesheet">
<!-- SECTION CSS -->
<link href="<%=ctxPath %>/css/section.css" rel="stylesheet">
<!-- FOOTER CSS -->
<link href="<%=ctxPath %>/css/footer.css" rel="stylesheet">
<script>
$(function(){
   $(window).scroll(function(){
   var navbar = $(this).scrollTop();
   var $header = $('header');
   if(navbar > 0){
       $header.addClass('activated');
   }else{
       $header.removeClass('activated');
   }
   $(".search-term").click(function(){
	   $("#hidden_term").attr("style", "visibility:visible")
   })
   $(".hidden_term_close").click(function(){
	   $("#hidden_term").attr("style", "visibility:hidden")
   })
   
 })
})
</script>
<script>
<%
	String city = request.getParameter("city");
%>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
var center = map.getCenter();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('<%= city%>', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">검색한 위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
        center = map.getCenter();
        console.log("검색 위치의 위도: " + center.getLat() + ", 검색 위치의 경도: " + center.getLng());
    } 
});    

if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        lat1 = center.getLat(),
        lon1 = center.getLng(),
        lat2 = position.coords.latitude, // 위도
        lon2 = position.coords.longitude; // 경도
       
           console.log("현재 위치의 위도: "+lat2+", 경도: "+lon2);
           console.log(lat1+", "+lon1+", " + lat2 + ", " +lon2);
           function getDistanceFromLatLonInKm(lat1, lng1, lat2, lng2) {
        	   function deg2rad(deg) {
        		   return deg * (Math.PI/180) ;
        	}; 
				   var R = 6371; // Radius of the earth in km 
        		   var dLat = deg2rad(lat2-lat1); // deg2rad below 
        		   var dLon = deg2rad(lng2-lng1); 
        		   var a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.sin(dLon/2) * Math.sin(dLon/2); 
        		   var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
        		   console.log(c);
        		   var d = R * c; // Distance in km 
        		   console.log(d);
        		   return d;
           }
          var d = Math.round(getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2)*10)/10.0;
           console.log(getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2));
           $("window").ready(function(){
        	   $(".distance").append(d).append("km");
        	   $("#avenue").append()
           })
           
           
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(26.5566775, 126.445544),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}

	
</script>
<style>
body {
	margin: 0;
	width: 100%;
	height: 100%;
	line-height: 1.43;
	color: rgba(0, 0, 0, 0.87);
	margin: 0;
	font-size: 0.875rem;
	font-family: Inter, sans-serif;
	font-weight: 400;
	line-height: 1.43;
}

div {
	display: block;
}

input {
	border: none;
}
</style>
<!-- MAIN -->
<style>
main {
	width: 100%;
	max-width: 100vw;
}

section {
	padding: 45px 0;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	background: #f9fafc;
	z-index: 0;
}

#home {
	height: 350px;
}

a {
	text-decoration: none;
}
</style>
<!-- SECTION 2 -->
<style type="text/css">
.mini {
	padding: 3px 0;
	background-color: white;
	position: -webkit-sticky;
	position: sticky;
	top: 55px;
	z-index: 999;
}

.mini .container {
	width: 80%;
}

.mini_row {
	display: flex;
	flex-direction: row;
	padding: 3px 0;
}

.mini_row button {
	border: 1px solid rgba(132, 146, 166, .2) !important;
	color: black;
	margin: 0 8px 0 0;
	font-weight: normal;
}

.search-term {
	display: inline-flex;
	align-items: center;
	text-align: center;
	flex-direction: row;
	position: relative
}

.search-term button {
	width: 34px; -
	-verticalPadding: 0; -
	-horizontalPadding: 0;
	height: 34px;
}

.search-term svg {
	width: 20px;
	height: 20px;
	padding: 0 auto;
}

.search-term {
	border-radius: 50px;
}

#hidden_term {
	visibility: hidden;
}
</style>

<!-- SECTION 3 -->
<style>
#sth {
	width: 100%;
}

#sth .container {
	width: 80%;
	margin: 0 auto;
	padding-top: 15px;
}

section#store-list {
	padding-top: 65px;
}

section .container .store_list_grid {
	display: grid;
	grid-column-gap: 30px;
	grid-row-gap: 30px;
	grid-template-rows: auto;
	min-height: 0;
	min-width: 0;
	grid-template-columns: repeat(3, 1fr);
}

.store_card_image img {
	height: 210px;
	border-radius: 6px;
	width: 100%;
	background: #ebf3fe;
	border: 0;
	position: relative;
	transition: .2s ease-in-out;
	height: 160px;
}
</style>



</head>
<body>
	<!-- HEADER -->
	<header>
		<div class="header_container">
			<div class="logo">
				<a href="index.jsp"><img src="<%=ctxPath %>/images/jaba_english_white.png"></a>
			</div>
			<div class="menu">
				<button class="menu_btn" value="LOG IN">
					<span>LOG IN</span>
				</button>
				<button class="menu_btn" value="SIGN UP">
					<span>SIGN UP</span>
				</button>
			</div>
		</div>

	</header>
	<!-- SECTION -->
	<section id="home">
		<div class="container">
			<h1>
				No PickUp Line<br> <br>
			</h1>

		</div>

	</section>
	<!-- SECTION 2 -->
	<section id="search" class="mini">
		<div class="container">
			<div class="mini_row">
				<div class="time">
					<button>Pick up, ASAP</button>
				</div>
				<div class="search_loc">
					<button id="avenue"><%= avenue %></button>
				</div>
				<div class="search-term">
					<button class="MuiButtonBase-root MuiIconButton-root search-term__icon  MuiIconButton-sizeSmall jss263" tabindex="0" type="button">
						<span class="MuiIconButton-label"> <svg class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24" aria-hidden="true"
								role="presentation">
				<path
									d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
				</path>
				</svg>
						</span>
						<div class="MuiTouchRipple-root"></div>
					</button>
				</div>
				<div id="hidden_term">
					<button class="hidden_term_all">
						<div id="hidden_input">
							<input type="text" placeholder="Acai or Latte">
						</div>
						<button class="hidden_term_close">X</button>
					</button>

				</div>
			</div>
		</div>
	</section>
	<!-- SECTION 3 -->
	<section id="sth">
		<div id="store_list">
			<div class="container">
				<div class="row-head">
					<h2>PICK UP near _________________</h2>
				</div>
			</div>
			<div class="container">
				<div class="store_list_grid" id="store_grid">
					<a href="#">
						<div class="store_card">
							<div class="store_card_image">
								<img src="https://cdn.boppl.me/venues/banner/4652_doughnut_time_degraves_street_banner_1.jpg">

							</div>
							<div class="store_card_info">
								<div class="store_card_info_name">
									<h3>STORE NAME</h3>
								</div>
								<div class="store_card_info_addr">
									<span class="distance"> </span> <span>OPEN TIME</span>
								</div>
							</div>
						</div>
					</a> <a href="#">
						<div class="store_card">
							<div class="store_card_image">
								<img>

							</div>
							<div class="store_card_info">
								<div class="store_card_info_name">
									<h3>STORE NAME</h3>
								</div>
								<div class="store_card_info_addr">
									<span class="distance"> </span> <span>OPEN TIME</span>
								</div>
							</div>
						</div>
					</a> <a href="#">
						<div class="store_card">
							<div class="store_card_image">
								<img>

							</div>
							<div class="store_card_info">
								<div class="store_card_info_name">
									<h3>STORE NAME</h3>
								</div>
								<div class="store_card_info_addr">
									<span class="distance"> </span> <span>OPEN TIME</span>
								</div>
							</div>
						</div>
					</a> <a href="#">
						<div class="store_card">
							<div class="store_card_image">
								<img>

							</div>
							<div class="store_card_info">
								<div class="store_card_info_name">
									<h3>STORE NAME</h3>
								</div>
								<div class="store_card_info_addr">
									<span class="distance"> </span> <span>OPEN TIME</span>
								</div>
							</div>
						</div>
					</a> <a href="#">
						<div class="store_card">
							<div class="store_card_image">
								<img>

							</div>
							<div class="store_card_info">
								<div class="store_card_info_name">
									<h3>STORE NAME</h3>
								</div>
								<div class="store_card_info_addr">
									<span class="distance"> </span> <span>OPEN TIME</span>
								</div>
							</div>
						</div>
					</a> <a href="#">
						<div class="store_card">
							<div class="store_card_image">
								<img>

							</div>
							<div class="store_card_info">
								<div class="store_card_info_name">
									<h3>STORE NAME</h3>
								</div>
								<div class="store_card_info_addr">
									<span class="distance"> </span> <span>OPEN TIME</span>
								</div>
							</div>
						</div>
					</a>






				</div>
			</div>
		</div>
		
	</section>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e6cd41f87d7529ffb39adb770099e29&libraries=services"></script>



	<!-- FOOTER -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="footer_logo">
					<img src="<%=ctxPath %>/images/jaba_english_white.png">
				</div>
				<div class="footer_links">
					<ul>
						<li class="links_head">JABA for YOUNG&RICH</li>
						<li>WHY JABA?</li>
						<li>PRICING</li>
						<li><a href='#'>PARTNER LOGIN</a></li>
					</ul>
					<ul>
						<li class="links_head">TOP CITIES</li>
						<li>JONGRO</li>
						<li>SEOCHON</li>
						<li>PARIS</li>
					</ul>
					<ul>
						<li class="links_head">SUPPORT</li>
						<li>CUSTOMER HELP</li>
						<li>PARTNER HELP</li>
						<li>SUGGEST STH</li>
					</ul>
					<ul>
						<li class="links_head">COMPANY</li>
						<li>CUSTOMER HELP</li>
						<li>PARTNER HELP</li>
						<li>SUGGEST STH</li>
					</ul>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="footer__disclaimer">
					<strong>JABA connects customers with popular cafe brands.</strong>
					<p>We believe that time is precious. We strive to create beautiful technology that helps you save time and make ordering easy, both sides of
						the counter. Order from JABA with the best selection of local cafes.</p>
					<div class="legal">
						<div>
							<div class="legal__copyright">© 2020 JABA Technologies Pty Ltd</div>
							<ul class="legal__links">
								<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary" href="/legal/privacy-policy">Privacy
										Policy</a></li>
								<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary" href="/legal/terms-and-conditions">Terms
										of Use</a></li>
								<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary" href="https://help.bopple.com/"
									target="_blank" rel="noopener noreferrer">Help Centre</a></li>
								<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="https://customer-contact-help.bopple.com" target="_blank" rel="noopener noreferrer">Leave Feedback</a></li>
							</ul>
						</div>
					</div>
				</div>

			</div>
		</div>

	</footer>


</body>
</html>