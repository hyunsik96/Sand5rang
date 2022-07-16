<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Sand5rang</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
  	<link rel="shortcut icon" href="resources/images/logo.png" type="">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
	<script src="https://js.tosspayments.com/v1"></script>
  </head>

<body>

<jsp:include page="include/1.jsp" />
<jsp:include page="include/2.jsp" />
<jsp:include page="include/3.jsp" />
<jsp:include page="include/4.jsp" />
<jsp:include page="include/5.jsp" />
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<a class="brand" href="frmain.hs">
				Sand5rang 가맹점				
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-cog"></i>
							설정
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">Settings</a></li>
							<li><a href="javascript:;">Help</a></li>
						</ul>						
					</li>
			
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i> 
							관리자 님
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">Profile</a></li>
							<li><a href="javascript:;">Logout</a></li>
						</ul>						
					</li>
				</ul>

				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->
    



    
<div class="subnavbar">

	<div class="subnavbar-inner">
	
		<div class="container">

			<ul class="mainnav">
			
				<li>
					<a href="frmain.hs">
						<i class="icon-dashboard"></i>
						<span>메인</span>
					</a>	    				
				</li>
                
                
				<li class="dropdown">					
					<a href="ingredientAllStock.csh" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>재고관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="menuSales.csh">매출기입</a></li>
						<li><a href="todayStock.csh">오늘의 재고</a></li>
						<li><a href="ingredientAllStock.csh">재고현황</a></li>
						<li><a href="ingredientDisposal.csh">폐기현황</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="orderEnroll.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>발주</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu active">
                        <li><a href="orderEnroll.se">발주신청</a></li>
						<li><a href="orderList.se">발주조회</a></li>
                    </ul>    				
				</li>
                
				<li>
					<a href="inqueryList.sm">
						<i class="icon-list-alt"></i>
						<span>본사문의</span>
					</a>    				
				</li>
				
				<li class="dropdown active">					
					<a href="depositList.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-money"></i>
						<span>결제대금</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu active">
                        <li><a href="depositList.se">대금내역</a></li>
						<li class="active"><a href="deposit.se">입금</a></li>
                    </ul>    				
				</li>
			
			</ul>

		</div> <!-- /container -->
	
	</div> <!-- /subnavbar-inner -->

</div> <!-- /subnavbar -->
    
    


	<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="widget-content widget-table action-table">
							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>XXX 가맹점 결제</h3>
							</div>


							
        <!-- 발주 가격 테이블 -->
        <div class="deposit">
            <div class="deposit_explain">
                <h2>※ Sand5rang 결제(입금안내)</h2><br>
                <p class="deposit_p">
                    원재료 구매로 인한 모든 결제는 '선입금'으로만 이루어지며,<br>
                    입금 완료 시 자동으로 잔액 충전됩니다.<br><br>

                    <span>※ 입금 완료 후 '입금액' 취소는 불가하오니<br>
                    입금 시 신중한 결제 부탁드립니다. <br><br> 
                    </span>

                    본사 관리자 승인 완료 시 발행 이메일로 결제 명세서가<br> 자동 전송 되며,
                    결제 관련 또는 명세서 관련 문의는<br> 본사 02)809-1234 로 확인 부탁드립니다.<br><br>        

                    언제나 Sand5rang과 함께해주시는<br> 
                    가맹점 여러분께 진심으로 감사드립니다.<br>
                </p>
            </div>

            <div class="deposit_form">
                <h2>* 입금자명 : </h2>

                <div class="deposit_name">
                    <input id="deposit_name" type="text" placeholder="*필수입력 값입니다.">
                </div>
                <br>
                <br>
                <h2>* 결제금액 : </h2>

                <div class="deposit_price">
                    <input id="deposit_price" type="text" placeholder="*필수입력 값입니다.">&nbsp;(단위/원)
                </div>
                <br>
                <br>
                <h2>* 결제방법 : </h2>

                <div class="deposit_method">
                    <input type="radio" checked>&nbsp;
                    <span>무통장입금</span>
                    <b>(Sand5rang은 무통장입금만 결제가능합니다)</b>
                </div>
                <br>
                <br>
                <h2 style="margin-top: 10px;">* 이메일 &nbsp;&nbsp;&nbsp;  : </h2>

                <div class="deposit_email">
                
                    <input id="deposit_email" type="text" style="width : 180px" value="&nbsp;<c:out value='${email}'/>" disabled>&nbsp;&nbsp;&nbsp;
                    <b style="line-height: 30%; margin-top: 20px;"> &nbsp;* 가입시 기입한 이메일로 결제명세서가 발행됩니다.</b>
                </div>
            </div> 
        </div>
        <div class="btn_deposit">
            <button type="button" id="btn" class="btn btn-success btn-lg" data-bs-dismiss="modal">결제</button>
            <button type="button" class="btn btn-danger btn-lg" data-bs-dismiss="modal" onclick="closeModal();">취소</button>
        </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>



	<br><br><br>
	<div class="extra">

		<div class="extra-inner">

			<div class="container">

				<div class="row">
					<div class="span3">
						<h4>About Free Admin Template</h4>
						<ul>
							<li><a href="javascript:;">EGrappler.com</a></li>
							<li><a href="javascript:;">Web Development Resources</a></li>
							<li><a href="javascript:;">Responsive HTML5 Portfolio
									Templates</a></li>
							<li><a href="javascript:;">Free Resources and Scripts</a></li>
						</ul>
					</div>
					<!-- /span3 -->
					<div class="span3">
						<h4>Support</h4>
						<ul>
							<li><a href="javascript:;">Frequently Asked Questions</a></li>
							<li><a href="javascript:;">Ask a Question</a></li>
							<li><a href="javascript:;">Video Tutorial</a></li>
							<li><a href="javascript:;">Feedback</a></li>
						</ul>
					</div>
					<!-- /span3 -->
					<div class="span3">
						<h4>Something Legal</h4>
						<ul>
							<li><a href="javascript:;">Read License</a></li>
							<li><a href="javascript:;">Terms of Use</a></li>
							<li><a href="javascript:;">Privacy Policy</a></li>
						</ul>
					</div>
					<!-- /span3 -->
					<div class="span3">
						<h4>Open Source jQuery Plugins</h4>
						<ul>
							<li><a href="">Open Source jQuery Plugins</a></li>
							<li><a href="">HTML5 Responsive Tempaltes</a></li>
							<li><a href="">Free Contact Form Plugin</a></li>
							<li><a href="">Flat UI PSD</a></li>
						</ul>
					</div>
					<!-- /span3 -->
				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /extra-inner -->

	</div>
	<!-- /extra -->




	<div class="footer">

		<div class="footer-inner">

			<div class="container">

				<div class="row">

					<div class="span12">
						&copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>.
					</div>
					<!-- /span12 -->

				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /footer-inner -->

	</div>
	<!-- /footer -->

	<jsp:include page="include/6.jsp" />

</body>

<script>

	// function requestPay() {

	//  //결제시 입금자명
    //  var deposit_name = document.getElementById('deposit_name').value;

	//  //결제시 입금금액
	//  var deposit_price = document.getElementById('deposit_price').value;

	//  //결제시 발송될 email
	//  var deposit_email = document.getElementById('deposit_email').value;

    //   //IMP.request_pay(param, callback) 		//결제창 호출
	//   IMP.init("INIpayTest"); 			// 예: imp00000000

    //   IMP.request_pay({ // param
    //       pg: "html5_inicis",
    //       pay_method: "card",
	// 	  name : "Sand5rang 선결제",
    //       merchant_uid: "ORD20180131-0000011",
    //       amount: deposit_price,
    //       buyer_email: 'sein1521@naver.com',
    //       buyer_name: deposit_name
    //   }, function (rsp) { // callback
    //       if (rsp.success) {

	// 		// 결제 성공 시 로직,			
    //          var msg = '결제가 완료되었습니다.';
	// 		 msg += '입금자명 : ' + rsp.deposit_name;
	// 		 msg += '입금금액 : ' + rsp.amount;
	// 		 msg += '결제이메일 : ' + rsp.deposit_email; 
              
    //       } else {
	// 		// 결제 실패 시 로직,
	// 		var msg = '결제가 실패하였습니다.\n';
	// 		msg += '에러내용' + rsp.error_msg;
    //       }
	// 	  alert(msg);
    //   });
    // }

	/*토스 페이먼츠 api연동*/
	var clientKey = 'test_sk_zXLkKEypNArWmo50nX3lmeaxYG5R'
	var tossPayments = TossPayments(clientKey) // 클라이언트 키로 초기화하기

	//결제시 입금금액
	var deposit_price = document.getElementById('deposit_price').value;

	//결제시 입금자명
	var deposit_name = document.getElementById('deposit_name').value;

	var btn = document.getElementById('btn');

	btn.addEventListener('click', function(){
			tossPayments.requestPayment('계좌이체', {
			// 결제 수단 파라미터
			// 결제 정보 파라미터
			amount: deposit_price,
			orderId: deposit_name,
			orderName: 'Sand5rang 선결제',
			customerName: deposit_name,
			customerEmail : deposit_email,
			successUrl: 'http://localhost:8006/sand5rang/depositList.se/success',
			failUrl: 'http://localhost:8006/sand5rang/deposit.se/fail',
		});
	});
	
</script>

</html>
