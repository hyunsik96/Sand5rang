<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Sand5rang</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="index.html"> Sand5rang 가맹관리자페이지 </a>

				<div class="nav-collapse">
					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-cog"></i> 설정 <b
								class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="javascript:;">Settings</a></li>
								<li><a href="javascript:;">Help</a></li>
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="icon-user"></i> 관리자 님 <b
								class="caret"></b>
						</a>

							<ul class="dropdown-menu">
								<li><a href="javascript:;">Profile</a></li>
								<li><a href="javascript:;">Logout</a></li>
							</ul></li>
					</ul>


				</div>
				<!--/.nav-collapse -->

			</div>
			<!-- /container -->

		</div>
		<!-- /navbar-inner -->

	</div>
	<!-- /navbar -->





	<div class="subnavbar">

		<div class="subnavbar-inner">

			<div class="container">

				<ul class="mainnav">

					<li><a href="index.html"> <i class="icon-dashboard"></i> <span>메인</span>
					</a></li>


					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-long-arrow-down"></i> <span>가맹점 업무처리</span> <b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="icons.html">가맹점 주문처리</a></li>
							<li><a href="faq.html">공장발주내역</a></li>
						</ul></li>

					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="icon-long-arrow-down"></i> <span>가맹점 관리</span> <b
							class="caret"></b>
					</a>

						<ul class="dropdown-menu">
							<li><a href="icons.html">가맹점 조회</a></li>
							<li><a href="faq.html">가맹가입신청</a></li>
							<li><a href="faq.html">문의 조회</a></li>
						</ul></li>


					<li><a href="reports.html"> <i class="icon-list-alt"></i>
							<span>결제대금</span>
					</a></li>

				</ul>

			</div>
			<!-- /container -->

		</div>
		<!-- /subnavbar-inner -->

	</div>
	<!-- /subnavbar -->



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
                    <input type="text" placeholder="*필수입력 값입니다.">
                </div>
                <br>
                <br>
                <h2>* 결제금액 : </h2>

                <div class="deposit_price">
                    <input type="text" placeholder="*필수입력 값입니다.">&nbsp;(단위/원)
                </div>
                <br>
                <br>
                <h2>* 결제방법 : </h2>

                <div class="deposit_method">
                    <input type="radio">&nbsp;
                    <span>무통장입금</span>
                    <b>(Sand5rang은 무통장입금만 결제가능합니다)</b>
                </div>
                <br>
                <br>
                <h2 style="margin-top: 10px;">* 이메일 &nbsp;&nbsp;: </h2>

                <div class="deposit_email">
                    <input type="text">&nbsp;@
                    <select name="email_box">
                        <option value="naver.com" name="email_box">naver.com</option>
                        <option value="daum.net" name="email_box">daum.net</option>
                        <option value="google.com" name="email_box">google.com</option>
                    </select>
                    <b style="line-height: 30%; margin-top: 20px;"> &nbsp;* 해당이메일로 결제명세서가 발행됩니다.</b>
                </div>
            </div> 
        </div>
        <div class="btn_deposit">
            <button type="button" class="btn btn-success btn-lg" data-bs-dismiss="modal" onclick="closeModal();">결제</button>
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

</html>
