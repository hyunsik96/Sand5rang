<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Sand5rang</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	rel="stylesheet">

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
						<div class="widget ">
							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>XXX 가맹점 발주 리스트 조회</h3>
							</div>

							<div class="widget-content">
								<!-- /widget-header -->
								<div class="widget-content">
									<table class="table table-striped table-bordered">
										<thead>
											<tr>
												<th class="th1">No</th>
												<th class="th2">발주날짜</th>
												<th class="th3">Bread</th>
												<th class="th4">Vegetable</th>
												<th class="th5">Meat</th>
												<th class="th6">Cheese</th>
												<th class="th7">Sauce</th>
												<th class="td-actions" colspan="2">승인상태</th>
												
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="th1">10</td>
												<td class="th2">2022-07-03</td>
												<td class="th3"><a href="#">90</a></td>
												<td class="th4"><a href="#">90</a></td>
												<td class="th5"><a href="#">90</a></td>
												<td class="th6"><a href="#">70</a></td>
												<td class="th7"><a href="#">10</a></td>
												<td class="td-actions">승인대기
													<a href="javascript:;"class="btn btn-small btn-success">
														수정
													</a>
													<a href="javascript:;" class="btn btn-danger btn-small">
														삭제
													</a>
												</td>
											</tr>
											<tr>
												<td class="th1">9</td>
												<td class="th2">2022-07-02</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">8</td>
												<td class="th2">2022-07-01</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">7</td>
												<td class="th2">2022-06-30</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">6</td>
												<td class="th2">2022-06-29</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">5</td>
												<td class="th2">2022-06-28</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">4</td>
												<td class="th2">2022-06-27</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">3</td>
												<td class="th2">2022-06-26</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">2</td>
												<td class="th2">2022-06-25</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
											<tr>
												<td class="th1">1</td>
												<td class="th2">2022-06-24</td>
												<td class="th3">90</td>
												<td class="th4">90</td>
												<td class="th5">90</td>
												<td class="th6">70</td>
												<td class="th7">10</td>
												<td class="td-actions">승인완료</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- /widget-content -->
								<ul class="pagination"> <!-- pagination-sm -->
									<li class="page-item"><a class="page-link" href="#"><</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">></a></li>
								</ul>
							</div>
							</div>
							
							<!-- The Modal -->
							<!--<div class="modal" id="myModal">
							  <div class="modal-dialog">
								<div class="modal-content">-->	 
							
								  <!-- Modal Header -->
								  <!--<div class="modal-header">
									<h4 class="modal-title">Modal Heading</h4>
									<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
								  </div>-->	 
							
								  <!-- Modal body -->
								  <!--<div class="modal-body">
									Modal body..
								  </div>-->	 
							
								  <!-- Modal footer -->
								  <!--<div class="modal-footer">
									<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
								  </div>
								-->	  
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




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
