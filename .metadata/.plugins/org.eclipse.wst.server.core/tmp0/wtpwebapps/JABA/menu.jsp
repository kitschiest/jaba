<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>store_menu</title>
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
   $(".search-term").click(function(){
	   $("#hidden_term").attr("style", "visibility:visible")
   })
   $(".hidden_term_close").click(function(){
	   $("#hidden_term").attr("style", "visibility:hidden")
   })
   
 })
})
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
    font-family: Inter,sans-serif;
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
	height: 300px;
}
a {
	text-decoration:none;
}
</style>
<!-- SECTION 2 -->
<style type="text/css">
.mini{
	padding: 3px 0;
	background-color: white;
	position: -webkit-sticky;
	position: sticky;
	top: 55px;
	z-index: 999;
}
.mini .container{
	width:80%;
}
.mini_row{
	display: flex;
	flex-direction: row;
	padding: 3px 0;

}

.mini_row button{
	border: 1px solid rgba(132,146,166,.2)!important;
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
.search-term button{
	width: 34px;
	--verticalPadding: 0;
	--horizontalPadding: 0;
	height: 34px;
	
}
.search-term svg{
	width: 20px;
	height: 20px;
	padding: 0 auto;
}

.search-term {
	border-radius: 50px;
}

#hidden_term{
	visibility : hidden;
}


</style>

<!-- SECTION 3 -->
<style>
#sth{
	width: 100%;
	
}
#store_information{
	width: 100%;
	flex-direction: column;
}

.store_information{
	flex-dircetion: column;
}

#sth .container{
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
    grid-template-columns: repeat(3,1fr);
}

.store_card_image img{
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
<!-- SECTION2 menu_info -->
    <style>
        #menu_info {
            display: flex;
            justify-content: center;
            width: 100%;
            max-width: 100vw;
            /*
        background-color: rgba(219, 242, 255, 0.952);
        */

        }

        #container_menu_info {
            background-color: rgb(249, 250, 252);
        }

        .category h2 {
            border-bottom: 1px solid rgb(225, 229, 235);
            padding: 15px 0;
            font-size: 1.4rem;
            font-weight: 700;
            margin: 0;
        }

        .category_products {
            display: grid;
            grid-column-gap: 30px;
            grid-row-gap: 30px;
            grid-template-rows: auto;
            grid-template-columns: repeat(2, 1fr);
            min-height: 0;
            /* NEW */
            min-width: 0;
            /* NEW; needed for Firefox */
            margin: 20px 0px 0px;
            /* 창줄였을때 안삐져나가게 */
            overflow: hidden;
        }


        .product_card {
            position: relative;
            display: flex;
            border: 1px solid;
            flex-direction: row;
            justify-content: space-between;
            overflow: hidden;
            background-color: white;
            max-height: 145px;
            min-width: 345px;
            /* 반응형 추가필요 */
        }

        .product_card_detail {
            padding: 15px 25px 15px 15px;
            max-height: 145px;
            max-width: calc(100% - 145px);
            flex-direction: column;
            justify-content: space-between;
            display: inline-flex;
            /* 반응형 추가필요*/
        }

        .product_name {
            margin-bottom: 2px;
            min-width: 160px;
            display: flex;
            overflow: hidden;
        }

        .product_name .sold_out_btn{
            background-color: #36727C;
            border: 1px solid rgb(230, 233, 237);
            color: white;
            padding: 2px 10px 2px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 30px;
            outline: 0; /* 테두리 클릭시 없애기 */
        }

        .product_name .sold_out_btn:hover{
            background-color:rgb(235, 235, 235);
            border: 1px solid rgb(214, 217, 221);
            color:black;
        }

        .product_name > p {
            margin: 0;
            font-size: 0.875rem;
            font-weight: 500;
            /* 반응형 추가필요
            */
        }

        .product_desc {
            color: grey;
            font-size: 0.75rem;
            line-height: 1.05rem;
            max-height: 2.1rem;
            margin-bottom: 8px;
            overflow: hidden;
            position: relative;
            margin-right: -1em;
            /* 반응형 추가필요 */

        }

        .product_price {
            font-size: 0.875rem;
            font-weight: 500;
            display: flex;
            align-items: center;
            color: #36727C;
        }

        .product_card_image {
            /* 기본 백그라운드에 대한 처리 모바일 120*/
            height: 145px;
            width: 145px;
            min-width: 145px;
            min-height: 145px;

        }


        .product_card_image img {
            width: 145px;
            height: 145px;
            object-fit: contain;
            object-position: center;
            /* 트랜지션 처리*/
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
		<img >

	</section>
<!-- SECTION 2 -->
	<section id="search" class="mini">
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
	</section>
<!-- SECTION 3 -->
	 <!-- SECTION1 Store_info -->
    <section id="store_info">
        <div class="container" id="container_store_info">
            <h1>
                <!--매장 이름-->
                스타벅스 종각점&nbsp;
                <a href="#"><i class="fa fa-pencil menu_update_icon" style="font-size: 28px;"></i></a>
            </h1>
            <span id="store_description">
                <!-- 매장 설명-->
                스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다.
            </span>
            <span>
                <!-- 최근 게시판부분-->
                <h3>재고 소진으로 인해 금일 영업은 20시까지만 합니다. </h3>
            </span>
        </div>
    </section>
    <!-- SECTION2 menu_info -->
    <section id="menu_info">
        <div class="container" id="container_menu_info">
            <div class="category">
                <div class="category_name">
                    <h2> 메뉴카테고리 : 커피</h2>
                </div>
                <div class="category_products">
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">

                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>
                    <div class="product_card">
                        <div class="product_card_detail">
                            <div class="product_name">
                                <p>아메리카노&nbsp;&nbsp;<button class="sold_out_btn">Sold out</button></p>
                            </div>
                            <div class="product_desc">
                                아메리카노는 에스프레소 + 물이다.
                            </div>
                            <div class="product_price">
                                <p>4000원</p>
                            </div>
                        </div>
                        <div class="product_card_image">
                            <img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
                        </div>
                    </div>

                    <!--category 끝 -->
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