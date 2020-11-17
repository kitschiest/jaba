<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<script src='https://code.jquery.com/jquery-3.4.0.js'></script>
<!-- RESET -->
<link href="./css/html5_reset.css" rel="stylesheet">
<!-- HEADER CSS -->
<link href="./css/header.css" rel="stylesheet">
<!-- SECTION CSS -->
<link href="./css/section.css" rel="stylesheet">
<!-- FOOTER CSS -->
<link href="./css/footer.css" rel="stylesheet">
<script>
	$(function() {
		$(window).scroll(function() {
			var navbar = $(this).scrollTop();
			console.log(navbar);
			var $header = $('header');
			if (navbar > 0) {
				$header.addClass('activated');
			} else {
				$header.removeClass('activated');
			}
			$(".search-term").click(function() {
				$("#hidden_term").attr("style", "visibility:visible")
			})
			$(".hidden_term_close").click(function() {
				$("#hidden_term").attr("style", "visibility:hidden")
			})

		})
	});
</script>

<!-- Q&A JS -->
<script>
    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // faq-item class를 클릭했을때
        $(".faq-item").click(function(){
            var a = $(this).find("div.answer");
 
            // answer 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( a.is(":visible") ){
                a.slideUp();
            }else{
                a.slideDown();
            }
        });
    });
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

#faq {
	padding: 10px 0 120px;
	background: lightblue;
}

#faq .content {
	color: #89BDBB;
	border-top: 1px solid #89BDBB;
	border-bottom: 1px solid #89BDBB;
	padding: 0;
	width: 700px;
}

#faq .faq-item .question, #faq .faq-item .answer {
	padding: 15px;
}
#faq .faq-item .answer p{
 	color: white;
 }

#faq .faq-item .question {
	display: flex;
	align-items: center;
	justify-content: space-between;
	cursor: pointer;
	font-weight: bold;
}

#faq .faq-item .question .desc {
	display: flex;
	align-items: center
}

#faq .faq-item .question .desc .name {
	padding-left: 12px
}

#faq .faq-item .question .q {
	min-width: 35px;
	width: 35px;
	height: 35px;
}

#faq .faq-item .question .control {
	min-width: 35px;
	width: 30px;
	height: 30px;
}

#faq .faq-item .answer {
	display: none;
	border-top: 1px solid #89BDBB
}

#faq .faq-item.active {
	background-color: #f1f1f1;
	border: 1px solid #ff7949
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
	<!-- SECTION -->
	<section id="home">
		<div class="container">
			<h1>
				Q&A<br> <br>
			</h1>

		</div>

	</section>
	<!-- SECTION 2 -->
	<!-- <section id="search" class="mini">
		<div class="container">
			<div class="mini_row">
				<div class="time">
					<button>Pick up, ASAP</button>
				</div>
				<div class="search_loc">
					<button>AVENUE</button>
				</div>
				<div class="search-term">
				<button class="MuiButtonBase-root MuiIconButton-root search-term__icon  MuiIconButton-sizeSmall jss263" tabindex="0" type="button">
				<span class="MuiIconButton-label">
				<svg class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24" aria-hidden="true" role="presentation">
				<path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
				</path>
				</svg>
				</span>
				<div class="MuiTouchRipple-root">
				</div>
				</button>
				</div>
				<div id="hidden_term">
				<button class="hidden_term_all">
					<div id="hidden_input">
						<input type="text" placeholder="Acai or Latte">
					</div>
					<button class="hidden_term_close">
					X
					</button>
				</button>
				
				</div>
			</div>
		</div>
	</section> -->
	<!-- SECTION 3 -->
	<section id="faq">
		<div class="content container">
			<div class="faq-item">
				<div class="question">
					<div class="desc">
						<div class="q"></div>
						<div class="name">기존에 사용하는 POS와 연동이 가능한가요?</div>
					</div>
					<div class="control"></div>
				</div>
				<div class="answer">
					<div class="a"></div>
					<p>네 가능하며 추가적인 기기 및 설치 비용이 따로 발생하지 않습니다.</p>
				</div>
			</div>
			<div class="faq-item">
				<div class="question">
					<div class="desc">
						<div class="q"></div>
						<div class="name">기존에 사용하는 POS 프린터에서 영수증 인쇄가 가능한가요?</div>
					</div>
					<div class="control"></div>
				</div>
				<div class="answer">
					<div class="a"></div>
					<p>네 가능하며 원하시는 경우 조리실에서도 인쇄가 가능합니다.</p>
				</div>
			</div>
			<div class="faq-item">
				<div class="question">
					<div class="desc">
						<div class="q"></div>
						<div class="name">매장에 POS가 없는데 사용 가능한가요?</div>
					</div>
					<div class="control"></div>
				</div>
				<div class="answer">
					<div class="a"></div>
					<p>네 사용하시는 휴대폰 혹은 태블릿, 노트북으로 사용 가능합니다.</p>
				</div>
			</div>
			<div class="faq-item">
				<div class="question">
					<div class="desc">
						<div class="q"></div>
						<div class="name">품절 처리 및 가격 변경이 가능한가요?</div>
					</div>
					<div class="control"></div>
				</div>
				<div class="answer">
					<div class="a"></div>
					<p>네 사용하시는 프로그램에서 품절 처리 및 메뉴 추가 / 수정이 가능합니다</p>
				</div>
			</div>
			<div class="faq-item">
				<div class="question">
					<div class="desc">
						<div class="q"></div>
						<div class="name">메뉴 사진은 제공해주나요?</div>
					</div>
					<div class="control"></div>
				</div>
				<div class="answer">
					<div class="a"></div>
					<p>네 기본적인 메뉴 사진을 제공해드리며 원하시는 메뉴 이미지를 넣고 싶은 경우 사용하시는 프로그램에서 수정
						가능합니다.</p>
				</div>
			</div>
			<div class="faq-item">
				<div class="question">
					<div class="desc">
						<div class="q"></div>
						<div class="name">건당 중개 수수료가 어떻게 되나요?</div>
					</div>
					<div class="control"></div>
				</div>
				<div class="answer">
					<div class="a"></div>
					<p>저희 패스오더는 매장 운영에 도움을 드리기 위한 서비스로, 매출이 많아질수록 더욱 업체의 부담이 커지는 건당
						중개 수수료를 일절 받고 있지 않습니다.</p>
				</div>
			</div>
		</div>
	</section>
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