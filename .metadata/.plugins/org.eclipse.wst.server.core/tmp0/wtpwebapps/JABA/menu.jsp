<%@page import="jaba.menu.vo.MenuVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
   String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>store_menu</title>
<script src='https://code.jquery.com/jquery-3.4.0.js'></script>
<!-- Bootstrap -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- RESET -->
<link href="<%=ctxPath%>/css/html5_reset.css" rel="stylesheet">
<!-- HEADER CSS -->
<link href="<%=ctxPath%>/css/header.css" rel="stylesheet">
<!-- SECTION CSS -->
<link href="<%=ctxPath%>/css/section.css" rel="stylesheet">
<!-- FOOTER CSS -->
<link href="<%=ctxPath%>/css/footer.css" rel="stylesheet">
<!-- 폰트 CSS -->
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
   rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap"
   rel="stylesheet">
<!-- 체크박스 라디오버튼 CSS -->
<link href="<%=ctxPath%>/css/icheck-material.css" rel="stylesheet"
   type="text/css">
<script>
   $(function() {
      $(window).scroll(function() {
         var navbar = $(this).scrollTop();
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
   })
   
   // sold-out 버튼 기본값 hide로 세팅
   $(document).ready(function () {
       $('.sold_out_btn').hide();
   });
   
   // 메뉴 카드 클릭 시 모달창 오픈
   $(document).ready(
         function() {
            $(".product_card").click(
                  function() {
                     $('div.modal').modal();
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
   height: 300px;
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

#store_information {
   width: 100%;
   flex-direction: column;
}

.store_information {
   flex-dircetion: column;
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
   border: 1px solid white;
   flex-direction: row;
   justify-content: space-between;
   overflow: hidden;
   background-color: white;
   max-height: 145px;
   min-width: 345px;
   cursor: pointer;
   /* 반응형 추가필요 */
}

.product_card:hover {
   border: 1px solid rgba(132, 146, 166, .3) !important;
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
/* 모달 전체 세팅 */
.modal-dialog.modal-dialog-centered {
   width: calc(100% - 96px);
   /*메뉴 모달이므로 너비 늘려줌*/
   max-width: 600px;
   /*메뉴 모달이므로 너비 늘려줌*/
   height: auto;
   max-height: calc(100% - 96px);
   margin: 0;
   padding: 0;
}

.modal-content.modal-dialog-centered {
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

.modal-dialog.modal-dialog-centered {
   display: inline-block;
   text-align: left;
   vertical-align: middle;
}

/* 모달 header 세팅 */
.modal-header {
   padding: 32px;
   display: flex;
   width: 100%;
   justify-content: center;
   align-items: center;
   border-bottom: 0;
   /* 없애주기 */
   text-align: center;
   flex-direction: row;
   justify-content: space-between;
}

/* 창닫기 x버튼*/
.close {
   color: rgba(0, 0, 0, 0.54);
   position: absolute !important;
   top: 25px;
   right: 25px;
}

/*헤더 title, subtitle, image 묶어줌*/
.header-details {
   position: relative;
   display: flex;
   justify-content: space-between;
   max-height: 150px;
   min-width: 150px;
   text-align: left;
   padding-top: 20px;
}

/*헤더 title, subtitle 묶어줌*/
.header-content {
   width: 355px;
   height: 150px;
   padding: 0 25px 0 0;
}

.header-title {
   width: 330px;
   height: 29px;
   font-size: X-Large;
}

.header-subtitle {
   width: 330px;
   height: 60px;
   margin: 14px 0px;
   color: grey;
}

.header-image {
   object-fit: contain;
   display: flex;
   min-height: 150px;
   min-width: 150px;
}

.header-image img {
   width: 150px;
   height: 150px;
}

/* 모달 body 세팅 */
.modal-body {
   flex: 1 1 auto;
   padding: 32px 32px 16px 32px;
   overflow-y: auto;
   -webkit-overflow-scrolling: touch;
   /* border-bottom: 1px solid rgba(20, 23, 26, .08); */
}

.checkbox-title {
   position: sticky;
   background: #fff;
   z-index: 99;
   display: flex;
   align-items: center;
   border-bottom: 1px solid rgba(132, 146, 166, .2);
   margin-top: 10px;
   padding: 8px 0;
   font-weight: bold;
}

.checkbox-title p {
   margin: 0;
}

.custom-content {
   padding-top: 9px;
   grid-template-rows: auto;
   grid-column-gap: 10px;
   grid-row-gap: 5px;
   grid-template-columns: repeat(1, 1fr);
}

.custom-grid {
   display: grid;
   flex-wrap: unset;
   flex-direction: unset;
}

.icheck-material-teal {
   display: flex;
   justify-content: space-between;
}

.custom-charge {
   color: #8492a6;
   font-weight: 400;
   margin-left: 10px;
   min-width: 60px;
   height: 22px;
}

.custom-charge-jstl {
   color: #8492a6;
   font-weight: 400;
   margin-left: 10px;
   min-width: 60px;
   height: 22px;
}

/* 모달 footer 세팅 + 버튼 포함 */
.modal-footer {
   flex: 0 0 auto;
   display: flex;
   padding: 16px 32px 32px 32px;
   align-items: center;
   justify-content: space-between;
   border-top: 1px solid rgba(20, 23, 26, .08);
}

.product-modal__actions {
   padding: 15px 25px !important;
   border-top: 1px solid rgba(0, 0, 0, .1);
   display: flex;
   width: 100%;
   align-items: center;
   justify-content: space-between !important;
}

@media screen and (min-width: 26.563em) {
   .add-to-order {
      width: 55%;
      flex-grow: unset;
      transition: .2s ease-in-out;
   }
}

@media screen and (min-width: 26.563em) {
   .product-modal__actions .quantity {
      padding: 8px 10px;
   }
}

.product-modal__actions .quantity {
   display: flex;
   justify-content: space-around;
   align-items: center;
   /* padding: 5px 14px; */
   border: 1px solid rgba(132, 146, 166, .2);
   border-radius: 30px;
}

.MuiIconButton-colorPrimary {
   color: #5b52ff;
}

.MuiIconButton-root {
   flex: 0 0 auto;
   color: rgba(0, 0, 0, 0.54);
   padding: 12px;
   overflow: visible;
   font-size: 24px;
   text-align: center;
   transition: background-color 150ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
   border-radius: 50%;
}

.MuiButtonBase-root {
   color: inherit;
   border: 0;
   cursor: pointer;
   margin: 0;
   display: inline-flex;
   outline: 0;
   padding: 0;
   position: relative;
   align-items: center;
   user-select: none;
   border-radius: 0;
   vertical-align: middle;
   -moz-appearance: none;
   justify-content: center;
   text-decoration: none;
   background-color: transparent;
   -webkit-appearance: none;
   -webkit-tap-highlight-color: transparent;
}

.MuiSvgIcon-root {
   fill: #36727C;
   width: 16px;
   height: 16px;
   display: inline-block;
   font-size: 24px;
   transition: fill 200ms cubic-bezier(0.4, 0, 0.2, 1) 0ms;
   flex-shrink: 0;
   user-select: none;
}

.product-modal__actions .quantity__number {
   font-size: 16px;
   min-width: 45px;
   font-weight: 600;
   text-align: center;
   line-height: 1.43;
}

#addorder {
   display: flex;
   pasdding: 12px 24px;
   width: 100%;
   justify-content: space-between;
   cursor: pointer;
   line-height: 1.75;
   height: 50px;
   background-color: #36727C;
   color: white;
   border-radius: 28px;
   border: 0;
   font-weight: 600;
   font-size: 15px;
   padding: 12px 24px;
}
</style>




</head>
<body>
   <!-- HEADER -->
   <header>
      <div class="header_container">
         <div class="logo">
            <img src="<%=ctxPath%>/images/jaba_english_white.png">
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
      <img>

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
               <button
                  class="MuiButtonBase-root MuiIconButton-root search-term__icon  MuiIconButton-sizeSmall jss263"
                  tabindex="0" type="button">
                  <span class="MuiIconButton-label"> <svg
                        class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24"
                        aria-hidden="true" role="presentation">
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
   <!-- SECTION1 Store_info -->
   <section id="store_info">
      <c:if test="${not empty storeVo }">
         <div class="container" id="container_store_info">
            <!--매장 이름-->
            <h1>${storeVo.store_name}</h1>
            <span id="store_description"> <!-- 매장 설명-->
               ${storeVo.store_description}
            </span> <span> <!-- 최근 게시판부분-->
               <h3>재고 소진으로 인해 금일 영업은 20시까지만 합니다.</h3>
            </span>
         </div>
      </c:if>
   </section>
   <!-- SECTION2 menu_info -->
   <section id="menu_info">
      <div class="container" id="container_menu_info">
         <c:if test="${not empty sortList }">
            <c:forEach items="${sortList}" var="sortList" varStatus="s">
               <div class="category">
                  <div class="category_name">
                     <h2>${sortList[0].menu_category}</h2>
                  </div>
                  <div class="category_products">
                     <c:if test="${not empty sortList}">
                        <c:forEach items="${sortList}" var="menuVo" varStatus="s">
                           <div class="product_card" onclick="clickaaaa(this);">
                              <div class="product_card_detail">
                                 <div class="product_name">
                                    <p>
                                       <span>${menuVo.menu_name}</span>&nbsp;&nbsp;
                                       <button class="sold_out_btn">Sold out</button>
                                    </p>
                                 </div>
                                 <div class="product_desc">${menuVo.menu_description}</div>
                                 <div class="product_price">
                                    <p>${menuVo.menu_price}원</p>
                                 </div>
                              </div>
                              <div class="product_card_image">
                                 <img
                                    src="https://cdn.boppl.me/products/specialty_affogato_0.jpg"
                                    alt="Affogato">
                              </div>
                           </div>
                        </c:forEach>
                     </c:if>
                  </div>
                  <!--category 끝 -->
               </div>
            </c:forEach>
         </c:if>
      </div>
   </section>
   <!-- Modal Basic -->
   <div class="modal fade" id="exampleModalCenter" tabindex="-1"
      role="dialog" aria-labelledby="exampleModalCenterTitle"
      aria-hidden="true" >
      <div class="modal-dialog modal-dialog-centered" role="document">
         <div class="modal-content modal-dialog-centered" id="mmmaaa">
            <!-- modal-header -->
            <div class="modal-header" >
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>

               <!-- 서블릿에서 가져온 메뉴 이름 출력하기 -->
               <div class="header-details">
                  <div class="header-content">
                     <div>
                        <p class="header-title" >${menuVo.menu_name }</p>
                     </div>
                     <div class="header-subtitle ">
                        <p>${menuVo.menu_description }</p>
                     </div>
                  </div>
                  <div class="header-image">
                     <img
                        src="https://cdn.boppl.me/products/5d9fa5e7a1454518ae79c056056b1612_0.jpg"
                        alt="Aussie">
                  </div>
               </div>
            </div>


            <!-- modal-body -->
            <div class="modal-body">
               <!-- 커스텀 리스트 반복 -->
               <c:if test="${not empty sortCustomList }">
                  <c:forEach items="${sortCustomList}" var="sortCustomList"
                     varStatus="s">
                     <div class="category">
                        <div class="checkbox-title">
                           <p>${sortCustomList[0].custom_category}</p>
                        </div>
                        <div class="custom-content custom-grid">
                           <c:if test="${not empty sortCustomList }">
                              <c:forEach items="${sortCustomList}" var="sortCustomList"
                                 varStatus="s2">
                                 <div class="icheck-material-teal">
                                    <input type="checkbox" id="custom1${s.count }${s2.count }" class="chkbox" name="teal" value="${sortCustomList.custom_price}" onclick="itemSum();"/>
                                    <label for="custom1${s.count }${s2.count }" class="customClick">${sortCustomList.custom_name}</label><div>
                                    <span class="custom-charge">&#8361;+</span><span class="custom-charge-jstl">${sortCustomList.custom_price}</span><span class="custom-charge"> 원</span></div> 
                                 </div>
                              </c:forEach>
                           </c:if>
                        </div>
                     </div>
                  </c:forEach>
               </c:if>
            </div>
            <!-- modal-footer -->
            <div class="modal-footer product-modal__actions">
               <div class="quantity">
                  <button
                     class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorPrimary Mui-disabled Mui-disabled"
                     tabindex="-1" type="button" id="decreaseQuantity" onclick="QuantityDownFunc();">
                     <span class="MuiIconButton-label"><svg
                           class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24"
                           aria-hidden="true" role="presentation">
                           <path d="M19 13H5v-2h14v2z"></path>
                        </svg></span>
                  </button>
                  <span class="quantity__number" id="numberUpDown">1</span>
                  <button
                     class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorPrimary"
                     tabindex="0" type="button" id="increaseQuantity" onclick="QuantityUpFunc();">
                     <span class="MuiIconButton-label"><svg
                           class="MuiSvgIcon-root" focusable="false" viewBox="0 0 24 24"
                           aria-hidden="true" role="presentation">
                           <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"></path>
                        </svg></span><span class="MuiTouchRipple-root"></span>
                  </button>
               </div>
               <div class="add-to-order">
                  <button type="button" class="btnChk" id="addorder" name="addorder" onclick="addOrder();">
                     <div>ADD TO ORDER</div>
                     <div><span>&#8361;&nbsp;&nbsp;</span><span id="custom-add-price">${menuVo.menu_price }</span><span>원</span></div>
                     <!-- 금액 부분에 기본적으로 선택한 메뉴의 가격이 출력되고, 체크박스 선택시 합산이 되어야 함! -->
                  </button>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- FOOTER -->
   <footer>
      <div class="container">
         <div class="row">
            <div class="footer_logo">
               <img src="<%=ctxPath%>/images/jaba_english_white.png">
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
   <script>
   // 메뉴가격 전역변수
   var menu_price = 0;
   var currunetMenuPrice = 0;

   function clickaaaa(obj){
	   	//menu_price = 0;
	    //currunetMenuPrice = 0;
         var aa = $(obj).children("div").children(".product_name").children().children("span").text();
         console.log(aa + " product_name을 클릭");
      // 메뉴 모달창 하단 - + 버튼
         $.ajax({
            url: "<%=ctxPath%>/menu/menuDetailView.do",
            data : {
               menu_name : aa
            },
            success : function(res) {
            	console.log("현재 res값은 " + res);
            	menu_price = parseInt(res,10);
            	currunetMenuPrice = parseInt(res,10);
            	
            	// 모달부분 jstl 부분 reload 시켜주기위해서 load
               $(".header-title").load(location.href + " .header-title");
               $(".header-subtitle").load(location.href + " .header-subtitle");
               $(".modal-body").load(location.href + " .modal-body");
               $(".modal-footer").load(location.href + " .modal-footer");
            }
         });
      
      
      }
         

         
   function QuantityDownFunc(){
               var stat = $('#numberUpDown').text();
               var num = parseInt(stat, 10);
               num--;
               if (num <= 0) {
                  num = 1;
               }
               //$("#custom-add-price").text(num * menu_price);
               $('#numberUpDown').text(num);
   }
   
   function QuantityUpFunc(){
               var stat = $('#numberUpDown').text();
               var num = parseInt(stat, 10);
               num++;
               //$("#custom-add-price").text(num * menu_price);
               $('#numberUpDown').text(num);
   }
   

   // 체크박스 선택 시 합계 금액 바꿔주는 메소드
     function itemSum(){
       var sum = currunetMenuPrice;
       var count = $(".chkbox").length;
       for(var i=0; i < count; i++ ){
           if( $(".chkbox")[i].checked == true ){

            sum += parseInt($(".chkbox")[i].value);
           }
       }
       //html 을 text로
       $("#custom-add-price").text(sum);
    } 
      
   </script>
   <script>
   //addorder 버튼 클릭시 작동하는 function()
   function addOrder(){
 	  	console.log("order버튼클릭"); 
 	  	console.log(parseInt($("#custom-add-price").text()));
 	  	console.log(parseInt($("#numberUpDown").text()));
 	  	
   }
   </script>
</body>
</html>