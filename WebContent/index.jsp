<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JABA</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,minimal-ui" />
<!-- <link rel="stylesheet" type="text/css" href="mainStyle.css" /> -->
<script src='https://code.jquery.com/jquery-3.4.0.js'></script>

<script>
$(function(){
   $(window).scroll(function(){
   var navbar = $(this).scrollTop();
   console.log(navbar);
   var $header = $('header');
   if(navbar > 0){
       $header.addClass('activated');
   }else{
       $header.removeClass('activated');
   }
 })
})
</script>


<style>
body {
	margin: 0;
	width: 100%;
	height: 100%;
	line-height: 1.43;
}



div {
	display: block;
}

input {
	border: none;
}
</style>
<!-- HEADER -->
<style>
header {
	display: flex;
	top: 0;
	left: 0;
	justify-content: center;
	height: 55px;
	position: fixed;
	width: 100%;
	max-width: 100vw;
	z-index: 1299;
	background-color: #89BDBB;
	box-shadow: none;
	border-bottom: 1px solid transparent;
}
header.activated{
  background-color:#36727C;
  -webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0);
  -moz-box-shadow: 0 0 5px rgba(0, 0, 0, 0);
  box-shadow: 0 0 5px rgba(0, 0, 0, 0);

}
.header_container {
	width: 80%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	max-width: 1024px;
	transition: .2s ease-in-out;
	
}


.logo {
	padding: 2px 0;
	display: flex;
}
.menu {
	display: inline-block;
	justify-content: flex-end;
	text: white;
}
.menu button{
	width: 80px;
	height: 30px;
	font-size: 0.65rem;
}
.menu_btn{
	border-radius: 28px;
}
</style>
<!-- MAIN -->
<style>
main {
	width: 100%;
	max-width: 100vw;
}
</style>
<!--NAVIGATOR -->
<style>
</style>
<!-- SECTION -->
<style>
section {
	display: flex;
	justify-content: center; /*flex랑 함께 전체 가운데로 정렬*/
	align-items: center; /*#홈 검색 가운데 정렬*/
	position: relative;
	z-index: 0;
}

section .contatiner {
	position: relative;
}

h1 {
	display: block;
	margin: 0;
}

p {
	display: block;
	color: black;
}

.search-bar {
	color: rgba(0, 0, 0, 0.87);
	cursor: text;
	display: inline-flex;
	position: relative;
	font-size: 1rem;
	box-sizing: border-box;
	align-items: center;
	font-family: Inter, sans-serif;
	line-height: 1.1875em;
}

.jss38 {
	color: #182430;
	padding: 12px 25px;
	align-items: center;
	border-radius: 6px;
	background-color: #FFFFFF;
}

.search_input {
	width: 100%;
	border: 0;
	height: 1.1875em;
	margin: 0;
	display: block;
	padding: 6px 0 7px;
	min-width: 0;
	box-sizing: content-box;
	-webkit-tap-highlight-color: transparent;
	border: none;
}

.search-button {
	padding: 30px;
}

#home {
	width: 100%;
	height: 630px;
	background-color: #89BDBB;
}

#home .container {
	color: white;
	text-align: center;
}

section#home .container h1 {
	font-size: 3rem;
	line-height: 3.2rem;
}



#brands {
	width: 100%;
	padding-top: 85px;
	padding-bottom: 30px;
	height: 200px;
	background-color: white;
}

div .brands {
	display: inline-block;
}

#cities {
	width: 100%;
	height: 150px;
	background-color: lightgrey;
}
div .cities{
	display: inline-block;
	
}

div .cities a{
	text-decoration: none;
	color:#36727C;
}

button {
  --borderWidth: 1;
  --boxShadowDepth: 8; 
  --buttonColor: #f00;
  --fontSize: 3;
  --horizontalPadding: 16;
  --verticalPadding: 8;

  background: transparent;
  border: calc(var(--borderWidth) * 1px) solid var(--buttonColor);
  
  color: white;
  cursor: pointer;
  font-size: calc(var(--fontSize) * 1rem);
  font-weight: bold;
  outline: 1px;
  /* padding: calc(var(--verticalPadding) * 1px) calc(var(--horizontalPadding) * 1px); */
  transition: box-shadow 0.15s ease;
  border-color: white;
  border-width: 1px;
}

button:hover {
  opacity: .3;
  border-color: white;
  border-width: 1px;

}

button:active {
  
}
@keyframes bounce {
	0%, 100%, 20%, 50%, 80% {
		-webkit-transform: translateY(0);
		-ms-transform:     translateY(0);
		transform:         translateY(0)
	}
	40% {
		-webkit-transform: translateY(-30px);
		-ms-transform:     translateY(-30px);
		transform:         translateY(-30px)
	}
	60% {
		-webkit-transform: translateY(-15px);
		-ms-transform:     translateY(-15px);
		transform:         translateY(-15px)
	}
}
.brand-badge {  
 
  top: 50%;
  left: 50%;
  height: 180px;
  width: 180px;
  line-height: 180px;
  text-align: center;
  text-transform: uppercase;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  -webkit-animation-timing-function: ease-in-out;
  animation-timing-function: ease-in-out;
  animation-iteration-count: infinite;
  -webkit-animation-iteration-count: infinite;
  color: white;
}
.brand-badge:hover {
  cursor: pointer;
  animation-name: bounce;
  -moz-animation-name: bounce;
}

.city-badge{

  top: 50%;
  left: 50%;
  height: 80px;
  width: 180px;
  line-height: 80px;
  text-align: center;
  text-transform: uppercase;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  -webkit-animation-timing-function: ease-in-out;
  animation-timing-function: ease-in-out;
  animation-iteration-count: infinite;
  -webkit-animation-iteration-count: infinite;
  color: white;

}
.city-badge:hover{
  cursor: pointer;
  animation-name: bounce;
  -moz-animation-name: bounce;
  color: grey;
}


</style>

<!-- ASIDE -->

<style>
</style>

<!-- ASIDE -->
<style>
</style>
<!--Modal-->
<style>
.modal {
	display: none;
	width: 100%;
	height: 100%;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	/*뒷배경색 투명도*/
	background-color: rgba(0, 50, 0, 0.5);
}

.modal-content {
	margin: 5% auto;
	background-color: bisque;
	width: 400px;
	height: 300px;
}

.close {
	text-align: right;
}
</style>
<!-- FOOTER -->
<!-- FOOTER -->
<style>
footer {
	width: 100%;
	height: 500px;
	background-color: #14171a;
	padding: 65 0;
	color: white;
	display: flex;
	justify-content: center; /*flex랑 함께 전체 가운데로 정렬*/
	align-items: center; /*#홈 검색 가운데 정렬*/
	position: relative;
	z-index: 0;
}

footer .container {
	width: 80%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	max-width: 1024px;
	transition: .2s ease-in-out;
	flex-wrap: wrap;
}
.row {
	width: 100%;
	display: flex;
	align-items; center;
	justify-content: space-between;
	max-width: 1024px;
	transition: .2s ease-in-out;
	flex-wrap: wrap;
}
.footer_logo{
	width: 100%;
	display:inline-flex;
	margin-bottom: 25px;
	align-item: flex-start;
}

.footer_logo img{
	width: 90px;
	height: 40px;
}
.footer_links{
	width: 100%;
}

.footer_links .links_head{
	font-weight: 600;
    text-transform: uppercase;
    font-size: .75rem;
    color: hsla(0,0%,100%,.72);
    margin-bottom: 16px;
}
.footer_links ul{
	width: 20%;
	display: inline-block;
	list-style: none;
}

.footer_links ul li {
	margin-bottom: 8px;
    font-size: .875rem;
    font-weight: 400;
}

footer p {
	color: hsla(0,0%,100%,.72);
}

footer .legal__copyright{
	display: inline-flex;
    margin: 0;
}

footer .legal__links{
	display: inline-flex;
    margin: 0;
}

footer .legal__links li{
	margin: 0 10px;
	list-style: none;
}

footer .legal__links li a {
	color: lightgrey;
	
}
</style>


</head>
<body>
	<!-- HEADER -->
	<header>
		<div class="header_container">
			<div class="logo">
				<img src="./images/jaba_english_white.png">
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

	<!-- NAVIGATOR -->
	<nav></nav>
	<!-- SECTION -->

	<section id="home">
		<div class="container">
			<h1>
				GRAB whatever<br> you want<br>
			</h1>
			<p>order from amazing cafes.</p>
			<div class="search-bar">
				<div class="jss38">
					<input type="text" class="search_text">
				</div>
			</div>

			<div class="search-button">
				<input type="button" name="searchBtn" value="search">
			</div>
		</div>

	</section>



	<!-- SECTION -->
	<section id="brands">
		<div class="container">
			<div>
				<h2>Browse By Brand</h2>
			</div>
			<div data-index="0" class="brands"
				tabindex="-1" aria-hidden="false"
				style="outline: none; width: 146px;">
				<div>
					<div class="brand-badge ">
						<img src="https://cdn.bopple.app/assets/helloharry/tile-hover.svg" class="active"></a>
					</div>
				</div>
			</div>
			<div data-index="1" class="brands" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="brand-badge ">
						<img
							src="https://cdn.bopple.app/assets/sonoma/tile-hover.svg"
							class="active"></a>
					</div>
				</div>
			</div>
			<div data-index="2" class="brands" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="brand-badge ">
						<img
							src="https://cdn.bopple.app/assets/suki/tile-hover.svg"
							class="active"></a>
					</div>
				</div>
			</div>
			<div data-index="3" class="brands" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="brand-badge ">
						<img
							src="https://cdn.bopple.app/assets/mrburger/tile-hover.svg"
							class="active"></a>
					</div>
				</div>
			</div>
			<div data-index="4" class="brands" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="brand-badge ">
						<img
							src="https://cdn.bopple.app/assets/madamwoo/tile-hover.svg"
							class="active"></a>
					</div>
				</div>
			</div>
			<div data-index="5" class="brands" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="brand-badge ">
						<img
							src="https://cdn.bopple.app/assets/belleshotchicken/tile-hover.svg"
							class="active"></a>
					</div>
				</div>
			</div>
			

		</div>
	</section>
	
	<section id="cities">
		<div class="container">
			<div>
				<h2>Browse By City</h2>
			</div>
		<div data-index="0" class="cities"
				tabindex="-1" aria-hidden="false"
				style="outline: none; width: 146px;">
				<div>
					<div class="city-badge">
						<a href="#">JongRo</a>
					</div>
				</div>
			</div>
			<div data-index="1" class="cities" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="city-badge">
						<a href="#">YeonNam</a>
					</div>
				</div>
			</div>
			<div data-index="2" class="cities" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="city-badge">
						<a href="#">HongDae</a>
					</div>
				</div>
			</div>
			<div data-index="3" class="cities" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="city-badge">
						<a href="#">Paris</a>
					</div>
				</div>
			</div>
			<div data-index="4" class="cities" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="city-badge">
						<a href="#">GangSeo</a>
					</div>
				</div>
			</div>
			<div data-index="5" class="cities" tabindex="-1"
				aria-hidden="false" style="outline: none; width: 146px;">
				<div>
					<div class="city-badge">
						<a href="#">Incheon</a>
					</div>
				</div>
			</div>
		
		</div>

	</section>

	<!-- ASIDE -->
	<aside></aside>

	<!-- FOOTER -->
	<footer> 
	<div class="container">
		<div class="row">
	        <div class="footer_logo">
	            <img src="images/jaba_english_white.png">
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
        <p>
        We believe that time is precious. We strive to create beautiful technology that helps you save time and make ordering easy, both sides of the counter. Order from JABA with the best selection of local cafes.
        </p>
        <div class="legal">
        	<div>
        		<div class="legal__copyright">© 2020 JABA Technologies Pty Ltd</div>
        		<ul class="legal__links">
	        		<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary" href="/legal/privacy-policy">Privacy Policy</a></li>
	        		<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary" href="/legal/terms-and-conditions">Terms of Use</a></li>
	        		<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary" href="https://help.bopple.com/" target="_blank" rel="noopener noreferrer">Help Centre</a></li>
	        		<li><a class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary" href="https://customer-contact-help.bopple.com" target="_blank" rel="noopener noreferrer">Leave Feedback</a></li>
        		</ul>
        		</div>
        	</div>
        </div>
        	
        </div>
	</div>
	
	</footer>



</body>
</html>