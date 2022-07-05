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
						<div class="widget widget-table action-table">
							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>XXX 가맹점 발주 리스트 조회</h3>
							</div>

							
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
												<td class="th3"><a data-toggle="modal" href="#vModal1" >90</a></td>
												<td class="th4"><a data-toggle="modal" href="#vModal2">90</a></td>
												<td class="th5"><a data-toggle="modal" href="#vModal3">90</a></td>
												<td class="th6"><a data-toggle="modal" href="#vModal4">70</a></td>
												<td class="th7"><a data-toggle="modal" href="#vModal5">10</a></td>
												<td class="td-actions" style="color: red;">승인대기
													
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
							</div>
							</div>
							
							<div style="margin-top: 100px">
							<!-- /widget-content -->
								<ul class="pagination pagination-sm"> <!-- pagination-sm -->
									<li class="page-item"><a class="page-link" href="#"><</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">></a></li>
								</ul>
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

	<!-- The Modal -->
	<div class="modal" id="vModal1" style="display: none;">
		<div class="modal-dialog">
		  <div class="modal-content">	 
	  
		  <!-- Modal Header -->
		  <div class="modal-header">
			  <h4 class="modal-title">Bread(빵) 발주내역</h4>
		  </div> 
		  
		  <!-- Modal body -->
		  <div class="modal-body">
			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/파마산.jpg">
			  </div>
			  <div class="bb">
				<b>파마산 오레가노</b><br>
				<input id="count" value="3"><input type="button" value="▲"><input type="button" value="▼">
			  </div>

			   <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/플렛.jpg">
			  </div>
			  <div class="bb">
			  	<b>플렛 브레드</b><br>
				  <input id="count" value="2"><input type="button" value="▲"><input type="button" value="▼">
			  </div>
			 
			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/화이트.jpg">
			  </div>
			  <div class="bb">
			  	<b>화이트 브레드</b><br>
				  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
			  </div>
		  </div>

		  
		  <!-- Modal footer -->
		  <div class="modal-footer">
			  <button type="button" class="btn btn-success" data-bs-dismiss="modal" onclick="closeModal();">수정(저장)</button>
		  </div>  
	  </div>
	</div>
  </div>

  <!-- The Modal -->
	<div class="modal" id="vModal2" style="display: none;">
		<div class="modal-dialog">
		  <div class="modal-content">	 
	  
		  <!-- Modal Header -->
		  <div class="modal-header">
			  <h4 class="modal-title">VEGETABLE(야채) 발주내역</h4>
		  </div> 
		  
		  <!-- Modal body -->
		  <div class="modal-body">
			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/양상추.jpg">
			  </div>
			  <div class="bb">
				<b>양상추</b><br>
				<input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
			  </div>

			   <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/토마토.jpg">
			  </div>
			  <div class="bb">
			  	<b>토마토</b><br>
				  <input id="count" value="20"><input type="button" value="▲"><input type="button" value="▼">
			  </div>
			 
			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/오이.jpg">
			  </div>
			  <div class="bb">
			  	<b>오이</b><br>
				  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
			  </div>

			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/양파.jpg">
			  </div>
			  <div class="bb">
			  	<b>양파</b><br>
				  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
			  </div>

			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/피망.jpg">
			  </div>
			  <div class="bb">
			  	<b>피망</b><br>
				  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
			  </div>

			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/할라피뇨.jpg">
			  </div>
			  <div class="bb">
			  	<b>할라피뇨</b><br>
				  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
			  </div>

			  <div class="bimg">
				<img src="/sand5rang/resources/images/ingredient/아보카도.jpg">
			  </div>
			  <div class="bb">
			  	<b>아보카도</b><br>
				  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
			  </div>
		  </div>
		  <!-- Modal footer -->
		  <div class="modal-footer">
			<button type="button" class="btn btn-success" data-bs-dismiss="modal" onclick="closeModal();">수정(저장)</button>
		</div>  
	</div>
  </div>
</div>


	 <div class="modal" id="vModal3" style="display: none;">
			<div class="modal-dialog">
			  <div class="modal-content">	 
		  
			  <!-- Modal Header -->
			  <div class="modal-header">
				  <h4 class="modal-title">MEAT(고기) 발주내역</h4>
			  </div> 
			  
			  <!-- Modal body -->
			  <div class="modal-body">
				  <div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/페퍼로니.jpg">
				  </div>
				  <div class="bb">
					<b>페퍼로니</b><br>
					<input id="count" value="3"><input type="button" value="▲"><input type="button" value="▼">
				  </div>
	
				   <div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/에그.jpg">
				  </div>
				  <div class="bb">
					  <b>에그</b><br>
					  <input id="count" value="2"><input type="button" value="▲"><input type="button" value="▼">
				  </div>
				 
				  <div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/치킨.jpg">
				  </div>
				  <div class="bb">
					  <b>치킨</b><br>
					  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
				  </div>

				  <div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/쉬림프.jpg">
				  </div>
				  <div class="bb">
					  <b>쉬림프</b><br>
					  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
				  </div>

				  <div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/비프.jpg">
				  </div>
				  <div class="bb">
					  <b>비프</b><br>
					  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
				  </div>
	

				<div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/베이컨.jpg">
				</div>
				<div class="bb">
					<b>베이컨</b><br>
					<input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
				</div>
		  </div>
		  <!-- Modal footer -->
		  <div class="modal-footer">
			  <button type="button" class="btn btn-success" data-bs-dismiss="modal" onclick="closeModal();">수정(저장)</button>
		  </div>  
	  </div>
	</div>
  </div>

  <div class="modal" id="vModal4" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content">	 
  
	  <!-- Modal Header -->
	  <div class="modal-header">
		  <h4 class="modal-title">CHEESE(치즈) 발주내역</h4>
	  </div> 
	  
	  <!-- Modal body -->
	  <div class="modal-body">
		  <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/아메리칸.jpg">
		  </div>
		  <div class="bb">
			<b>아메리칸치즈</b><br>
			<input id="count" value="3"><input type="button" value="▲"><input type="button" value="▼">
		  </div>

		   <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/모차렐라.jpg">
		  </div>
		  <div class="bb">
			  <b>모차렐라치즈</b><br>
			  <input id="count" value="2"><input type="button" value="▲"><input type="button" value="▼">
		  </div>
		 
		  <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/슈레드.jpg">
		  </div>
		  <div class="bb">
			  <b>슈레드치즈</b><br>
			  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
		  </div>
	  </div>

  <!-- Modal footer -->
  <div class="modal-footer">
	  <button type="button" class="btn btn-success" data-bs-dismiss="modal" onclick="closeModal();">수정(저장)</button>
  </div>  
</div> 
</div>
</div>

<div class="modal" id="vModal5" style="display: none;">
	<div class="modal-dialog">
	  <div class="modal-content">	 
  
	  <!-- Modal Header -->
	  <div class="modal-header">
		  <h4 class="modal-title">SAUCE(소스) 발주내역</h4>
	  </div> 
	  
	  <!-- Modal body -->
	  <div class="modal-body">
		  <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/스위트칠리.jpg">
		  </div>
		  <div class="bb">
			<b>스위트칠리</b><br>
			<input id="count" value="3"><input type="button" value="▲"><input type="button" value="▼">
		  </div>

		   <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/후추.jpg">
		  </div>
		  <div class="bb">
			  <b>후추</b><br>
			  <input id="count" value="2"><input type="button" value="▲"><input type="button" value="▼">
		  </div>
		 
		  <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/올리브오일.jpg">
		  </div>
		  <div class="bb">
			  <b>올리브오일</b><br>
			  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
		  </div>

		  <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/머스타드.jpg">
		  </div>
		  <div class="bb">
			  <b>머스타드</b><br>
			  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
		  </div>

		  <div class="bimg">
			<img src="/sand5rang/resources/images/ingredient/랜치.jpg">
		  </div>
		  <div class="bb">
			  <b>렌치</b><br>
			  <input id="count" value="10"><input type="button" value="▲"><input type="button" value="▼">
		  </div>
	  </div>

  <!-- Modal footer -->
  <div class="modal-footer">
	  <button type="button" class="btn btn-success" data-bs-dismiss="modal" onclick="closeModal();">수정(저장)</button>
  </div>  
</div> 
</div>
</div>
 
	  <script>

		function closeModal(){

			window.close();

		}

	  </script>

</body>

</html>
