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
<!-- MODAL -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- RESET -->
<link href="./css/html5_reset.css" rel="stylesheet">
<!-- HEADER CSS -->
<link href="./css/header.css" rel="stylesheet">
<!-- SECTION CSS -->
<link href="./css/section.css" rel="stylesheet">
<!-- FOOTER CSS -->
<link href="./css/footer.css" rel="stylesheet">

<style type="text/css"></style>


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
	font-family: 'Inter', 'Noto Sans KR', sans-serif;
	margin: 0;
	width: 100%;
	height: 100%;
	line-height: 1.43;
	
}

div {
	display: block;
}

</style>
<!-- HEADER -->
<style>
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
#home {
	height: 210px;
}

#info .container{
	height: 600px;
	display: flex;
	flex-direction: row;
	flex: 1 1 40%;
	
}

.category {
	font-weight: bold;
	width: auto;
	padding: 40px 80px;
	padding-right: 0;
}

.order_inorder {
	width: 300px; 
	height: fit-content; 
	padding: 20px; 
	border: 1px solid grey; 
	margin: 10px 10px 10px 10px;
	text-align: justify;
}

.list {
	width: 100%;
	flex-basis: 100px;
	box-sizing: content-box;
	font: inherit;
	padding: 0 20px;
	margin-left: 100px;
	overflow: visible;

	display: flex;
	flex-flow: row wrap;
	justify-content: flex-start;
	justify-content: space-evenly;
	align-items: stretch;
}	
.orderlist{
	padding: 30px 20px;
	display: flex;
	justify-content: space-evenly;
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
</style>
<!-- FOOTER -->
<!-- FOOTER -->
<style>
</style>
<!-- MODAL -->
<style>
/* 모달 전체 세팅 */
.modal-dialog.modal-size {
	width: 444px;
	height: auto;
	margin: 0;
	padding: 0;
}

.modal-content.modal-size {
	height: auto;
	min-height: 100%;
	border-radius: 16px;
}

.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog.modal-size {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

/* 모달 header 세팅 */
.modal-header {
	padding: 32px;
	display: flex;
	width: 100%;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	border-bottom: 1px solid rgba(20, 23, 26, .08);
	text-align: center;
}

.header-icon {
	display: inline-flex;
	padding: 16px;
	border-radius: 16px;
	margin-bottom: 16px;
}

.close {
	color: rgba(0, 0, 0, 0.54);
	position: absolute !important;
	top: 25px;
	right: 25px;
}

/* 모달 body 세팅 */
.modal-body {
	flex: 1 1 auto;
	padding: 32px 32px 16px 32px;
	overflow-y: auto;
	-webkit-overflow-scrolling: touch;
}

/* 모달 footer 세팅 */
.modal-footer {
	flex: 0 0 auto;
	display: flex;
	padding: 16px 32px 32px 32px;
	align-items: center;
	justify-content: center;
	border-top: 0;
}

.btnChk { 
	width: 100%;
	padding: 16px 24px;
	background-color: #FFD966;
	color: white;
	border-radius: 0;
	border: 0;
	font-size: 13px;
	margin-top: 15px;
}

.btnChk:hover {
	background: #FDBE00;
	color:white;
	opacity: 10.3;
    border-color: white;
    border-width: 1px;
}

.btnChk2 { 
	width: 100%;
	padding: 16px 24px;
	background-color: #F8994B;
	color: white;
	border-radius: 0;
	border: 0;
	font-size: 13px;
	margin-top: 15px;
}

.btnChk2:hover {
	background: #E06A0A;
	color:white;
	opacity: 10.3;
    border-color: white;
    border-width: 1px;
}

.btnChk3 { 
	width: 100%;
	padding: 16px 24px;
	background-color: #9CCDCD;
	color: white;
	border-radius: 0;
	border: 0;
	font-size: 13px;
	margin-top: 15px;
}

.btnChk3:hover {
	background: #499292;
	color:white;
	opacity: 10.3;
    border-color: white;
    border-width: 1px;
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
				<button class="menu_btn" value="LOG IN" type="button"
					class="btn btn-primary" data-toggle="modal"
					data-target="#LoginModal">
					<span>LOG IN</span>
				</button>

				<button class="menu_btn" value="SIGN UP" class="btn btn-primary"
					data-toggle="modal" data-target="#registerModal">
					<span>SIGN UP</span>
				</button>
			</div>
		</div>

	</header>

	<!-- NAVIGATOR -->
	<nav></nav>
	
	<!-- SECTION -->
	<section id="home">
		<div class="container" style="text-align: left; padding: 0px 20px;">
			<p style="font-size: 35px; color: white; margin-top: 30px;">
				비즈파트너 주문내역조회
				</p>
		</div>
	</section>

 
	<!-- SECTION -->
	<section id="info">
		<div class="container">
			<div class="category">
				<p><a href="#" class="profile" style="text-decoration: none; color: grey; width: 50px;">Order List</a></p>

			</div>
			<div class="list">
				<div class="orderlist">
				<div class= order_inorder>
						<p style="text-align: center; font-weight: bold;">2010190001</p>
						<p style="font-size: 13px;">09:10 AM</p>
						<p>Zoey Kim</p>
						<p>Pick up, 10:30AM</p>
						<p style="font-size: 13px;">Extra chocolate please</p>
					<div style="margin-top: 10px;">
						<span style="font-weight: bold;">Latte</span>
						<span style="float: right;">Decaf</span><br>
						<span style="float: right;">No lid</span><br>
					</div>
						
					<div style="margin-top: 10px;">
						<span style="font-weight: bold;">Flat White</span>
						<span style="float: right;">Soy Milk</span><br>
						<span style="float: right;">Extra shot</span><br>
						<span style="float: right;">custom1</span><br>
						<span style="float: right;">custom2</span><br>
						<span style="float: right;">custom3</span><br>
						</div>
					<br>
			<p><button type="button" class="btnChk" id="btn_pwd" name="btn_pwd">Accept Order</button></p>
						
				</div>
					
				<div class= order_inorder>
						<p style="text-align: center; font-weight: bold;">2010190002</p>
						<p style="font-size: 13px;">09:05 AM</p>
						<p>Chris Hemsworth</p>
						<p>Pick up, ASAP</p>
						<p style="font-size: 13px;">Extra hot like me</p>
						<div style="margin-top: 10px;">
						<span style="font-weight: bold;">Hot Chocolate</span>
						<span style="float: right;">Extra Sweet</span><br>
						<span style="float: right;">yes lid</span><br>
					</div>
						
					<div style="margin-top: 10px;">
						<span style="font-weight: bold;"> Milk</span>
						<span style="float: right;">Extra banana leaf</span><br>
						<span style="float: right;">Remove lid</span>
					</div>
					<br>
			<p><button type="button" class="btnChk2" id="btn_pwd" name="btn_pwd">Accept Order</button></p>
				</div>
				
				<div class= order_inorder>
						<p style="text-align: center; font-weight: bold;">2010190002</p>
						<p style="font-size: 13px;">09:05 AM</p>
						<p>Richard Madden</p>
						<p>Pick up, ASAP</p>
						<p style="font-size: 13px;">not too hot because I am already hot</p>
						<div style="margin-top: 10px;">
						<span style="font-weight: bold;">Iced Chocolate</span>
						<span style="float: right;">No straw</span><br>
						<span style="float: right;">No lid</span><br>
					</div>
						
					<div style="margin-top: 10px;">
						<span style="font-weight: bold;">OJ</span>
						<span style="float: right;">Extra seaweed</span><br>
						<span style="float: right;">No lid</span><br>
						<span style="float: right;">Extra love</span><br>
						<span style="float: right;">Minus love</span>
					</div>
					<br>
			<p><button type="button" class="btnChk3" id="btn_pwd" name="btn_pwd">Accept Order</button></p>
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
					<p>We believe that time is precious. We strive to create
						beautiful technology that helps you save time and make ordering
						easy, both sides of the counter. Order from JABA with the best
						selection of local cafes.</p>
					<div class="legal">
						<div>
							<div class="legal__copyright">© 2020 JABA Technologies Pty
								Ltd</div>
							<ul class="legal__links">
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="/legal/privacy-policy">Privacy Policy</a></li>
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="/legal/terms-and-conditions">Terms of Use</a></li>
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="https://help.bopple.com/" target="_blank"
									rel="noopener noreferrer">Help Centre</a></li>
								<li><a
									class="MuiTypography-root MuiLink-root MuiLink-underlineNone MuiTypography-colorPrimary"
									href="https://customer-contact-help.bopple.com" target="_blank"
									rel="noopener noreferrer">Leave Feedback</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>