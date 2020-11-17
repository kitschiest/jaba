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
<!-- 라디오버튼 CSS -->	
<link href="icheck-material.css" rel="stylesheet" type="text/css">

<style type="text/css">

/* CSS 기본 세팅 */
body {
	font-family: 'Inter', 'Noto Sans KR', sans-serif;
}

div {
	display: block;
}

p {
    margin: 0 0 10px;
}	
ddsdsf

/* input박스 전체 세팅 */
input {
	
}

.signin-input { /*Near 체크박스 */
   width: 100%;
   height: 40px;
   border-radius: 6px;
   font-weight: normal;
   border: 1px solid rgba(20, 23, 26, .2);
   padding-left: 15px;
	
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

.header-icon {
   display: inline-flex;
   width: 100%;
   padding: 15px 15px;
   border-radius: 16px;
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
	padding: 32px 30px 32px 30px;
	overflow-y: auto;
	-webkit-overflow-scrolling: touch;
	border-bottom: 0;
	font-size: 14px;
}

.text-box {
	border-bottom: 1px solid rgba(20, 23, 26, .08);
}

#main_form {
	width: 100%;
	height: 150px;
	background: #f2f3f5;
	border-radius: 12px;
	padding: 30px 24px 16px 36px;
	margin-top: 20px;
	font-size: 14px;
}

#main_form .asap {
	display: flex;
	flex-wrap: wrap;
	margin-right: 0;
	position: relative;
}

#main_form .later {
	display: flex;
	flex-wrap: wrap;
	margin-right: 0;
	position: relative;
}
/* 모달 footer 세팅 */
.modal-footer {
	/*  flex: 0 0 auto;
   display: flex;
   padding: 16px 32px 32px 32px;
   align-items: center;
   justify-content: center; */
   flex-direction: row;
   justify-content: flex-end;
   
	margin: 20px;
	margin-bottom: -20px;
	border-top: 1px solid rgba(20, 23, 26, .08);
	*/
}

.btnChk {
	width: 100%;
	height: 50px;
	background-color: #36727C;
	color: white;
	border-radius: 12px;
	border: 0;
	font-size: 1.5rem;
}

#btnChk_footer {
	justify-content: flex-end;
	width: 100px;
	height: 40px;
	background-color: #36727C;
	color: white;
	border-radius: 12px;
	border: 0;
	font-size: 15px;
}
</style>
<script>
	function setDisplay() {
		if ($('input:radio[id=asap]').is(':checked')) {
			$('#later_time').hide();
		} else {
			$('#later_time').show();
		}
	}
</script>
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

					<div class="header-icon">
						<button type="button" class="btnChk" id="btn_pickup" name="btn_pickup" style="font-size: 15px;">Pick
							Up</button>
					</div>
				</div>

				<!-- modal-body -->
				<div class="modal-body">
				
				
				<div class="text-box" style="font-weight: bold;">
                  <p>Near</p>
                  <input type="text" class="signin-input" id="near" name="near" placeholder="Melbourne" ><br><br>
               </div>
				
					<form id="main_form" action="#" method="get">
						<table>
							<tr>
								<td>
									<div class="asap icheck-material-teal">
										<input type="radio" id="asap" name="teal" value="agree"
											checked="checked" onchange="setDisplay()">
										<label for="asap" style="font-weight: normal;">&nbsp;&nbsp;ASAP</label>
									</div>
									<div class="later icheck-material-teal">
										<input type="radio" id="later" name="teal" value="denial"
											onchange="setDisplay()" style="font-weight: 15px;">
										<label for="later" style="font-weight: normal;">&nbsp;&nbsp;LATER</label>
									</div>
								</td>
							</tr>


							<tr id="later_time">
								<td><select name="pickup_time"
									style="width: 177px; height: 21px;">
										<option value="">Select Pick Up Time</option>
										<option value="30">10:00</option>
										<option value="31">10:30</option>
										<option value="31">11:30</option>
										<option value="31">11:30</option>
										<option value="31">12:00</option>
										<option value="31">12:30</option>
								</select></td>
							</tr>

						</table>
					</form>


					<!-- modal-footer -->
					<div class="modal-footer">
						<button type="button" class="btnChk" id="btnChk_footer"
							name="btnChk_cancel">Cancel</button>
						<button type="button" class="btnChk" id="btnChk_footer"
							name="btnChk_confirm">Confirm</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>