<%@page import="jaba.store.vo.StoreVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Biz Partner Main</title>
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 모달 부트스트랩 관련 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 초기화 css  -->
<link rel="stylesheet" href="html5_reset.css">
<!-- switchery-->
<link rel="stylesheet" href="./dist/switchery.css" />
<script src="./dist/switchery.js"></script>
<!-- 폰트부분 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
<!-- 아이콘 폰트-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 기본 css -->
<style type="text/css">
body {
	margin: 0;
	width: 100%;
	height: 100%;
	padding-top: 55px;
	font-family: 'Noto Sans KR', sans-serif;
}

.container {
	width: 80%;
	max-width: 1024px;
	transition: .2s ease-in-out;
	padding: 0 20px;
}

img {
	position: relative;
	display: inline-block;
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
	background-color: #36727C;
	box-shadow: none;
	border-bottom: 1px solid transparent;
}

/* 기본적으로 따라가지만 추가로 설정이 필요할 경우에 id값을 줘서 설정한다. */
#container_header {
	display: flex;
}

.logo {
	padding: 10px 0;
}
</style>
<!-- NAVIGATOR 버튼부분 -->
<style>
nav {
	display: flex;
	justify-content: center;
	/*
            display와 justify 를 주면 가운데로 온다.
            padding-top: 55px;
            body 부분에서 padding-top을 줬음
            */
	/* 아래 내용이 스크롤을 해도 따라가야할 것 같아서 padding-top을 줬다. */
	height: 55px;
	width: 100%;
	max-width: 100vw;
	/* 영역 한눈에 구별하기 위해서 
            background-color: darkgoldenrod;
            */
	/*
            z-index: 1299;
            */
}

#container_nav {
	display: flex;
	justify-content: center;
	/* 하위 아이템들 가로축 가운데정렬 */
	align-items: center;
	/* 하위 아이템들 세로축 가운데정렬 */
	border-bottom: 1px solid rgb(225, 229, 235);
}

#container_nav #bizBtnWrap .nav_btn {
	background-color: white;
	border: 1px solid rgb(230, 233, 237);
	color: black;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 30px;
	outline: 0; /* 테두리 클릭시 없애기 */
}

#container_nav #bizBtnWrap .nav_btn:hover {
	background-color: rgb(235, 235, 235);
	border: 1px solid rgb(214, 217, 221);
}

#openBtnWrap {
	display: flex;
	justify-content: flex-end;
	/* 오픈버튼 오른쪽 끝에 붙이기 float:right 와 같은 역할 */
	flex: 1;
	/* 남은부분 다 채워줌 */
}

/* float와 clear : both 로 처리했지만 flex로 해결하기
        #openBtn {
            float: right;
        }
        nav::after {
             자식이 float를 사용했으므로 이를 해제해주기 위해서 가상요소를 사용한다. 
            clear: both;
            
        }
        */
</style>
<!-- SECTION 1  store_info -->
<style>
#store_info {
	display: flex;
	justify-content: center;
	/*
            display와 justify 를 주면 가운데로 온다.
            padding-top: 55px;
            body 부분에서 padding-top을 줬음
            */
	/* 아래 내용이 스크롤을 해도 따라가야할 것 같아서 padding-top을 줬다. */
	width: 100%;
	max-width: 100vw;
	/*
            background-color: rgb(150, 243, 28);
            */

	/* 영역 한눈에 구별하기 위해서 */
	/*
            z-index: 1299;
            */
}

#container_store_info {
	background-color: rgb(249, 250, 252);
}

#container_store_info h1 {
	/* 가게이름 */
	font-size: 2.5rem;
	line-height: 2.5rem;
	margin-top: 1.5rem;
	color: #36727C;
}

#container_store_info #store_description {
	color: #8492a6;
}

/* 메뉴수정아이콘 스타일지정 */
.menu_update_icon {
	color: #36727C;
}

.menu_update_icon:active {
	color: black;
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

.product_name .sold_out_btn {
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

.product_name .sold_out_btn:hover {
	background-color: rgb(235, 235, 235);
	border: 1px solid rgb(214, 217, 221);
	color: black;
}

.product_name>p {
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
    <%
    	StoreVO storeVo = (StoreVO)session.getAttribute("storeVo");
    	String storeName = storeVo.getStore_name();
    %>
	<!-- HEADER -->
	<header>
		<div class="container" id="container_header">
			<div class="logo">
				<img src="./images/jaba_92x32.png">
			</div>
			<!-- .logo 부분 display: inline-flex로 수정하고 header_biz도 inline block 으로 -->
			<div id="header_biz">BizPartner</div>
		</div>
	</header>

	<!-- NAVIGATOR 버튼부분 -->
	<nav>
		<div class="container" id="container_nav">
			<div id="bizBtnWrap">
				<button class="nav_btn">
					<span>주문조회</span>
				</button>
				<button class="nav_btn">
					<span>공지사항</span>
				</button>
				<button class="nav_btn">
					<span>판매액조회</span>
				</button>
			</div>
			<div id="openBtnWrap">
				<span id="openSwitch"> <!-- 오픈 스위치 --> <input type="checkbox" class="js-switch" id="store_open_switch" checked />
				</span>
			</div>

		</div>
	</nav>

	<!-- SECTION1 Store_info -->
	<section id="store_info">
		<div class="container" id="container_store_info">
			<h1>
				<!--매장 이름-->
				<%=storeName %>&nbsp; <a href="#"><i class="fa fa-pencil menu_update_icon" style="font-size: 28px;"></i></a>
			</h1>
			<span id="store_description"> <!-- 매장 설명--> 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다. 스타벅스 종각점입니다.
			</span> <span> <!-- 최근 게시판부분-->
				<h3>재고 소진으로 인해 금일 영업은 20시까지만 합니다.</h3>
			</span>
		</div>
	</section>
	<!-- SECTION2 menu_info -->
	<section id="menu_info">
		<div class="container" id="container_menu_info">
			<div class="category">
				<div class="category_name">
					<h2>메뉴카테고리 : 커피</h2>
				</div>
				<div class="category_products">
					<div class="product_card">
						<div class="product_card_detail">
							<div class="product_name">
								<p>
									아메리카노&nbsp;&nbsp;
									<button class="sold_out_btn">Sold out</button>
								</p>
							</div>
							<div class="product_desc">아메리카노는 에스프레소 + 물이다.</div>
							<div class="product_price">
								<p>4000원</p>
							</div>
						</div>
						<div class="product_card_image">
							<img src="https://cdn.boppl.me/products/specialty_affogato_0.jpg" alt="Affogato">
						</div>
					</div>
					<!-- product_card 반복 -->
					<div class="product_card">
						<div class="product_card_detail">
							<div class="product_name">
								<p>
									아메리카노&nbsp;&nbsp;
									<button class="sold_out_btn">Sold out</button>
								</p>
							</div>
							<div class="product_desc"></div>
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
				<!-- footer -->
				<footer></footer>



			</div>
		</div>
	</section>
	<!-- switchery -->
	<script>
        // switchery 
        var elem = document.querySelector('.js-switch');
        var init = new Switchery(elem);
    </script>



</body>

</html>