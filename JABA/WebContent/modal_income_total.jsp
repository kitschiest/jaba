<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MODAL -->
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

<style type="text/css">

/* CSS 기본 세팅 */
body {
	font-family: 'Inter', 'Noto Sans KR', sans-serif;
}

div {
	display: block;
}

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

.category1 {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	align-items: stretch;
	align-content: stretch;
	flex: 1 1 40%;
}

.category2 {
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	align-items: stretch;
	align-content: stretch;
	flex: 1 1 40%;
	
}

/* 모달 footer 세팅 */
.modal-footer {
	padding: 20px 30px;
	border-top: 1px solid rgba(20, 23, 26, .08);
	
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	flex: 1 1 40%;
}
	
.modal-footer .total{
	display: flex;
	flex-direction: row;
	justify-content: space-between;
	flex: 1 1 40%;
}
</style>
</head>
<body>

   <!-- Button trigger modal -->
   <button type="button" class="btn btn-primary" data-toggle="modal"
      data-target="#exampleModal">Launch demo modal</button>

   <!-- Modal Basic -->
   <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-size" role="document">
         <div class="modal-content modal-size">

            <!-- modal-header -->
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
               
               <div class="header-title"
                  style="font-weight: bold; font-size: 24px;">
                  <p>&nbsp;2020-10-19&nbsp;</p>
               </div>
            </div>
            
            <!-- modal-body -->
				<div class="modal-body">
					<div class="text-box">
						<div class="category1">
							<div class="coffee">
								<p style="text-decoration: underline; font-weight: bold;">COFFEE</p>
								<p>
									정어리 라떼<span>1</span>
								</p>
								<p>
									데자와에이드<span>1</span>
								</p>
								<p>
									미역치노<span>1</span>
								</p>
								<p>
									베이비커피<span>1</span>
								</p>
								<p>
									포도치노<span>1</span>
								</p>
								<br>
							</div>

							<div class="coffee-total">
								<p style="text-decoration: underline; font-weight: bold;">TOTAL</p>
								<p>
									61<span>2</span>
								</p>
								<p>
									32<span>2</span>
								</p>
								<p>
									55<span>2</span>
								</p>
								<p>
									50<span>2</span>
								</p>
								<p>
									41<span>2</span>
								</p>
								<br>
							</div>
						</div>

						<div class="category2">
							<div class="non-coffee">
								<p style="text-decoration: underline; font-weight: bold;">NON-COFFEE</p>
								<p>
									라떼 정어리<span>1</span>
								</p>
								<p>
									데자와에이드<span>1</span>
								</p>
								<p>
									미역치노<span>1</span>
								</p>
								<p>
									베이비커피<span>1</span>
								</p>
								<p>
									포도치노<span>1</span>
								</p>
								<br>
							</div>

							<div class="non-coffee-total">
								<p style="text-decoration: underline; font-weight: bold;">TOTAL</p>
								<p>
									61<span>2</span>
								</p>
								<p>
									32<span>2</span>
								</p>
								<p>
									55<span>2</span>
								</p>
								<p>
									50<span>2</span>
								</p>
								<p>
									41<span>2</span>
								</p>
								<br>
							</div>
						</div>
					</div>
				</div>
				<!-- modal-footer -->
				<div class="modal-footer">
              	<div class="total">
					<p style="text-decoration: underline; font-weight: bold;">TOTAL</p>
					<p>&#8361;3,705.30<span>1</span></p>
            </div>
         </div>
      </div>
   </div>
</div>
</body>
</html>