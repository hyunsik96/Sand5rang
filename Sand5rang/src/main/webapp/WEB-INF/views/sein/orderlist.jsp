<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="utf-8">
    <title>Sand5rang</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">    
  <link rel="shortcut icon" href="resources/images/logo.png" type="">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
   


    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

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
				
				<li class="dropdown active">					
					<a href="orderEnroll.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>발주</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu active">
                        <li><a href="orderEnrollForm.se">발주신청</a></li>
						<li class="active"><a href="orderList.se">발주조회</a></li>
                    </ul>    				
				</li>
                
				<li>
					<a href="inqueryList.sm">
						<i class="icon-list-alt"></i>
						<span>본사문의</span>
					</a>    				
				</li>
				
				<li class="dropdown">					
					<a href="depositList.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-money"></i>
						<span>결제대금</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="depositList.se">대금내역</a></li>
						<li><a href="deposit.se">입금</a></li>
                    </ul>    				
				</li>
			
			</ul>

		</div> <!-- /container -->
	
	</div> <!-- /subnavbar-inner -->

</div> <!-- /subnavbar -->
    
     <!-- 알람메세지 내용이 있다면  -->
	 

	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${alertMsg}");
		</script>
		<!-- 일회성 알람 메세지 session scope에 있는 alertMsg 삭제해주기 -->
		<c:remove var="messesage" scope="session"/>
	</c:if>

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
												<th class="th3">Bread</th>
												<th class="th4">Vegetable</th>
												<th class="th5">Cheese</th>
												<th class="th6">Meat</th>
												<th class="th7">Sauce</th>
												<th class="th2">발주날짜</th>
												<th class="td-actions" colspan="2">승인상태</th>
												
											</tr>
										</thead>
										
										<tbody>
										<c:forEach var="all_Olist" items="${all_Olist}" varStatus="status">
										<c:choose>
											<c:when test="${status.last eq true}">
												<tr>
													<td class="th1">${all_Olist.rowNo}</td>
													<td class="th3">${all_Olist.b}</td>
													<td class="th4">${all_Olist.v}</td>
													<td class="th5">${all_Olist.c}</td> 
													<td class="th6">${all_Olist.m}</td>
													<td class="th7">${all_Olist.s}</td>
													<td class="th2">${all_Olist.indD}</td>
													<c:choose>
															<c:when test="${all_Olist.status eq 'B' || all_Olist.status eq'AB'}">
																<td class="td-actions" style="color: red;">승인대기</td>
															</c:when>
															<c:when test="${all_Olist.status eq 'Y' || all_Olist.status eq'AY'}">
																<td class="td-actions" style="color: black;">승인완료</td>
															</c:when>
															<c:when test="${all_Olist.status eq 'N'}">
																<td class="td-actions" style="color: red;">반려</td>
															</c:when>
													</c:choose>
												</tr>
											</c:when>
											<c:otherwise>
												<tr>
													<td class="th1">${all_Olist.rowNo}</td>
													<td class="th3"><a data-toggle="modal" href="#vModal1" style="color :blue;">${all_Olist.b}</a></td>
													<td class="th4"><a data-toggle="modal" href="#vModal2" style="color :blue;">${all_Olist.v}</a></td>
													<td class="th5"><a data-toggle="modal" href="#vModal3" style="color :blue;">${all_Olist.c}</a></td>
													<td class="th6"><a data-toggle="modal" href="#vModal4" style="color :blue;">${all_Olist.m}</a></td>
													<td class="th7"><a data-toggle="modal" href="#vModal5" style="color :blue;">${all_Olist.s}</a></td>
													<td class="th2">${all_Olist.indD}</td>
													<c:choose>
														<c:when test="${all_Olist.status eq 'B' || all_Olist.status eq'AB'}">
																<td class="td-actions" style="color: red;">승인대기</td>
															</c:when>
															<c:when test="${all_Olist.status eq 'Y' || all_Olist.status eq'AY'}">
																<td class="td-actions" style="color: black;">승인완료</td>
															</c:when>
															<c:when test="${all_Olist.status eq 'N'}">
																<td class="td-actions" style="color: red;">반려</td>
															</c:when>
													</c:choose>
												</tr>
											</c:otherwise>
										</c:choose>
											</c:forEach>
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
	<div class="modal" id="vModal1" style="display: none;" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog">
		  <div class="modal-content">	 
	  
		  <!-- Modal Header -->
		  <div class="modal-header">
			  <h4 class="modal-title">Bread(빵) 발주내역</h4>
		  </div> 
		  
		  <form class="order_list" id="${status.index}" action="orderUpdate.se" method="post" style="padding: 0px; margin: 0px;">
		  <!-- Modal body -->
		  <div class="modal-body" style="padding : 0px; margin:auto; padding-bottom: 20px;">
			  <c:forEach var="order" items="${order}" varStatus="status" begin="0" end="2">
				
				  <div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/${order.ingName}.jpg">
				  </div>
				  
					<div class="bb">
						<b>${order.ingName}</b>
						<b style="font-size: 11px; color : tomato">[단가 :</b> 
						<b id="iprice" style="font-size: 11px; color : tomato"> ${order.price}</b>
						<b style="font-size: 11px; color : tomato">]</b><br>
						<input class="count" id="count" value="${order.count}" style="width : 30px" name="count">
						<input type="button" value="▲" style="font-weight: bolder; font-size: 15px;" onclick="countf('plus', <c:out value='${status.index}'/>);"/>
						<input type="button" value="▼" style="font-weight: bolder; font-size: 15px;" onclick="countf('minus',<c:out value='${status.index}'/>);"/>
						<div id="price" style="display: block; width : 100px">
							<b style="font-size: 11px; margin: 0px;">금액 : </b>
							<b style="font-size: 11px;" id="tot"><fmt:formatNumber value="${order.total}" pattern="###,###,###,###"/></b>
							<b style="font-size: 11px;">원</b>
						</div>
					</div>
					<input type="hidden" value="${status.index}" name="ingNo"/>
					<input type="hidden" value="${order.total}" name="hidden_iprice"/>
			  </c:forEach>
		  </div>

		  
		  <!-- Modal footer -->
		  <div class="modal-footer">
			  <button type="submit" class="btn btn-success" data-bs-dismiss="modal" onclick="updateI(0,2)">수정</button>
			  <button type="button" class="btn btn-danger" data-bs-dismiss="modal" data-target="#vModal1" id="btnClose1">취소</button>
		  </div>  
		</form>
	  </div>
	</div>
  </div>

  <!-- The Modal -->
	<div class="modal" id="vModal2" style="display: none; width : 540px;" data-backdrop="static" data-keyboard="false">
		<div class="modal-dialog">
		  <div class="modal-content"  style="width : 540px">	 
	  
		  <!-- Modal Header -->
		  <div class="modal-header" style="width : 510px">
			  <h4 class="modal-title">VEGETABLE(야채) 발주내역</h4>
		  </div> 
		  
		  <!-- Modal body -->
		  <form class="order_list" id="${status.index}" action="orderUpdate.se" method="post" style="padding: 0px; margin: 0px;">
		  <div class="modal-body" style="width : 540px; margin: auto; padding: 0px;padding-bottom: 20px;">
			  <c:forEach var="order" items="${order}" varStatus="status" begin="3" end="9">
				
				  <div class="bimg">
					<img src="/sand5rang/resources/images/ingredient/${order.ingName}.jpg">
				  </div>

				  <div class="bb">
					<b>${order.ingName}</b>
					<b style="font-size: 11px; color : tomato">[단가 :</b> 
					<b id="iprice" style="font-size: 11px; color : tomato"> ${order.price}</b>
					<b style="font-size: 11px; color : tomato">]</b><br>
					<input class="count" id="count" value="${order.count}" style="width : 30px" name="count">
					<input type="button" value="▲" style="font-weight: bolder; font-size: 15px;" onclick="countf('plus', <c:out value='${status.index}'/>)">&nbsp;&nbsp;
					<input type="button" value="▼" style="font-weight: bolder; font-size: 15px;" onclick="countf('minus',<c:out value='${status.index}'/>)">
					<div id="price" style="display: block; width : 100px">
						<b style="font-size: 11px;">금액 : </b>
						<b style="font-size: 11px;" id="tot"><fmt:formatNumber value="${order.total}" pattern="###,###,###,###"/></b>
						<b style="font-size: 11px;">원</b>
					</div>
				</div>
				  <input type="hidden" value="${status.index}" name="ingNo"/>
				  <input type="hidden" value="${order.total}" name="hidden_iprice"/>
				
			  </c:forEach>
		  </div>
		  <!-- Modal footer -->
		  <div class="modal-footer" style="width : 510px; height : 30px">
			<button type="submit" class="btn btn-success" data-bs-dismiss="modal" onclick="updateI(3,9);">수정</button>
			<button type="button" class="btn btn-danger" data-bs-dismiss="modal" data-target="#vModal2" id="btnClose2">취소</button>
		</div>  
	</form>
	</div>
  </div>
</div>


<div class="modal" id="vModal3" style="display: none;" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog">
	  <div class="modal-content" style="width : 530px">	 
  
	  <!-- Modal Header -->
	  <div class="modal-header" style="width : 530px">
		  <h4 class="modal-title">CHEESE(치즈) 발주내역</h4>
	  </div> 
	  
	  <form class="order_list" id="${status.index}"  action="orderUpdate.se" method="post" style="padding: 0px; margin: 0px;">
	  <!-- Modal body -->
	  <div class="modal-body" style="width : 530px; margin: auto; padding: 0px;padding-bottom: 20px;">
		  <c:forEach var="order" items="${order}" varStatus="status" begin="10" end="12">
			
				  <div class="bimg" style="margin-left: 10px;">
					<img src="/sand5rang/resources/images/ingredient/${order.ingName}.jpg">
				  </div>

				  
				  <div class="bb">
					<b>${order.ingName}</b>
					<b style="font-size: 11px; color : tomato">[단가 :</b> 
					<b id="iprice" style="font-size: 11px; color : tomato"> ${order.price}</b>
					<b style="font-size: 11px; color : tomato">]</b><br>
					<input class="count" id="count" value="${order.count}" style="width : 30px" name="count">
					<input type="button" value="▲" style="font-weight: bolder; font-size: 15px;" onclick="countf('plus', <c:out value='${status.index}'/>)">&nbsp;&nbsp;
					<input type="button" value="▼" style="font-weight: bolder; font-size: 15px;" onclick="countf('minus',<c:out value='${status.index}'/>)">
					<div id="price" style="display: block; width : 100px">
						<b style="font-size: 11px;">금액 : </b>
						<b style="font-size: 11px;" id="tot"><fmt:formatNumber value="${order.total}" pattern="###,###,###,###"/></b>
						<b style="font-size: 11px;">원</b>
					</div>
				</div>
				  <input type="hidden" value="${status.index}" name="ingNo"/>
				  <input type="hidden" value="${order.total}" name="hidden_iprice"/>
			
			</c:forEach>
	  </div>


  <!-- Modal footer -->
  <div class="modal-footer" style="width : 530px; height : 30px">
	  <button type="submit" class="btn btn-success" data-bs-dismiss="modal" onclick="">수정</button>
	  <button type="button" class="btn btn-danger" data-bs-dismiss="modal" data-target="#vModal3" id="btnClose3">취소</button>
  </div> 
</form> 
</div> 
</div>
</div>

<div class="modal" id="vModal4" style="display: none;" data-backdrop="static" data-keyboard="false">
			<div class="modal-dialog">
			  <div class="modal-content" style="width : 550px">	 
		  
			  <!-- Modal Header -->
			  <div class="modal-header" style="width : 530px">
				  <h4 class="modal-title">MEAT(고기) 발주내역</h4>
			  </div> 
			  
			  <!-- Modal body -->
			  <form class="order_list" id="${status.index}" action="orderUpdate.se" method="post" style="padding: 0px; margin: 0px;">
			  <div class="modal-body" style="width : 550px; margin: auto; padding: 0px;padding-bottom: 20px;">
				  <c:forEach var="order" items="${order}" varStatus="status" begin="13" end="18">
				  
				  <div class="bimg" style="margin-left : 10px">
					<img src="/sand5rang/resources/images/ingredient/${order.ingName}.jpg">
				  </div>

			
					<div class="bb">
					<b>${order.ingName}</b>
					<b style="font-size: 11px; color : tomato">[단가 :</b> 
					<b id="iprice" style="font-size: 11px; color : tomato"> ${order.price}</b>
					<b style="font-size: 11px; color : tomato">]</b><br>
					<input class="count" id="count" value="${order.count}" style="width : 30px" name="count">
					<input type="button" value="▲" style="font-weight: bolder; font-size: 15px;" onclick="countf('plus', <c:out value='${status.index}'/>)">&nbsp;&nbsp;
					<input type="button" value="▼" style="font-weight: bolder; font-size: 15px;" onclick="countf('minus',<c:out value='${status.index}'/>)">
					<div id="price" style="display: block; width : 100px">
						<b style="font-size: 11px;">금액 : </b>
						<b style="font-size: 11px;" id="tot"><fmt:formatNumber value="${order.total}" pattern="###,###,###,###"/></b>
						<b style="font-size: 11px;">원</b>
					</div>
				</div>
				  <input type="hidden" value="${status.index}" name="ingNo"/> 
				  <input type="hidden" value="${order.total}" name="hidden_iprice"/>
				
			  </c:forEach>
		  </div>
		  <!-- Modal footer -->
		  <div class="modal-footer" style="width : 530px; height : 30px">
			  <button type="submit" class="btn btn-success" data-bs-dismiss="modal" onclick="updateI(13,18);">수정</button>
			  <button type="button" class="btn btn-danger" data-bs-dismiss="modal" data-target="#vModal4" id="btnClose4">취소</button>
		  </div>  
		</form>
	  </div>
	</div>
  </div>

 

<div class="modal" id="vModal5" style="display: none;" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog">
	  <div class="modal-content" style="width : 530px">	 
  
	  <!-- Modal Header -->
	  <div class="modal-header" style="width : 530px">
		  <h4 class="modal-title">SAUCE(소스) 발주내역</h4>
	  </div> 
	  <!-- Modal body -->
	  <form class="order_list" id="${status.index}" action="orderUpdate.se" method="post" style="padding: 0px; margin: 0px;"></form>
	  <div class="modal-body" style="width : 550px; margin: auto; padding: 0px;padding-bottom: 20px;">
				<c:forEach var="order" items="${order}" varStatus="status" begin="19" end="23">
				  <div class="bimg" style="margin-left: 7px;">
					<img src="/sand5rang/resources/images/ingredient/${order.ingName}.jpg">
				  </div>
					
						<div class="bb" style="margin-right: 8px;">
							<b>${order.ingName}</b>
							<b style="font-size: 11px; color : tomato">[단가 :</b> 
							<b id="iprice" style="font-size: 11px; color : tomato">${order.price}</b>
							<b style="font-size: 11px; color : tomato">]</b><br>
							<input class="count" id="count" value="${order.count}" style="width : 30px" name="count">
							<input type="button" value="▲" style="font-weight: bolder; font-size: 15px;" onclick="countf('plus', <c:out value='${status.index}'/>)">&nbsp;&nbsp;
							<input type="button" value="▼" style="font-weight: bolder; font-size: 15px;" onclick="countf('minus',<c:out value='${status.index}'/>)">
							<div id="price" style="display: block; width : 100px">
								<b style="font-size: 11px;">금액 : </b>
								<b style="font-size: 11px;" id="tot"><fmt:formatNumber value="${order.total}" pattern="###,###,###,###"/></b>
								<b style="font-size: 11px;">원</b>
							</div>
						</div>
						<input type="hidden" value="${status.index}" name="ingNo"/>
						<input type="hidden" value="${order.total}" name="hidden_iprice"/>
					</c:forEach>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer" style="width : 530px; height : 30px">
						<button type="submit" class="btn btn-success" data-bs-dismiss="modal" onclick="updateI(19,23);">수정</button>
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal" data-target="#vModal5" id="btnClose5">취소</button>
					</div> 
				</form>
			</div> 
		</div>
</div>
 
<script>

function countf(type, num)  {

// 결과를 표시할 element
var resultElement = $("div[class=bb]").children('input[class=count]');

//div에 원재료 기존 발주 총가격 element
var tot = $("div[class=bb]").children('div[id=price]').children("b[id=tot]");

//원재료 단가 element
var iprice = $("div[class=bb]").children('b[id=iprice]');

//controller로 넘길 input iprice element
var hidden_iprice = $('input[name=hidden_iprice]');


for(var i=0; i<resultElement.length; i++){

  if(i == num){

	  // 현재 화면에 표시된 값
	  var number = resultElement[i].value;

	  var num2 = 0;

	  // 더하기/빼기
	  if(type === 'plus') {

		number = parseInt(number) + 1;

		if(number==1000){

			alert("하루 발주가능 수량 1000개 이하입니다.\n수량을 다시입력해주세요");

			number = 0;

		}else{

			num2 = iprice[i].innerText * number;       
		}

	  }else if(type === 'minus')  {

			  if(number==0){

				  number = 0;

			  }else{

				  number = parseInt(number) - 1;
			  }

			  num2 = iprice[i].innerText * number;  
		  }
		    // 수량 결과 출력
	  		resultElement[i].value = number;    

			// 가격 출력 
	  		// 콤마 찍어내기 .toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
			tot[i].innerText = num2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

			//콤마없는 가격 찍어주기
			//hidden_iprice[i].value = num2;
			hidden_iprice[i].setAttribute("value", num2);

		}
 	 }
	}

//발주 수량 직접입력 시 기본값 0 -> 공백으로 만들어주기
$("input[class=count]").on("keydown",function(key){ 

if($(this).val() == 0){

	$(this).val('');
}
});


//발주 수량 직접 입력시 자동으로 가격 계산하여 보여주기
$("input[class=count]").on("keyup",function(key){ 

//input 입력값에 대한 유효성체크
var regExp = /^[0-9]+$/;

//수량
var amount = $(this).val(); 

//사용자 입력값 숫자 유효성 체크 
if(!regExp.test(amount)){
		
		alert("수량(숫자)만 입력해주세요.");

		amount = 0;

		$(this).val(amount);
}

if(amount==1000 || amount>1000){

	alert("하루 발주가능 수량 1000개 이하입니다.\n수량을 다시입력해주세요");

	amount = 0;

	$(this).val(amount);

}

//가격
var priceElement = $(this).nextAll("div[id=price]").children("b[id=tot]");

//총 가격 보여줄 element(콤마 제거)
var totElement = $(this).parent("div").nextAll("input[name=hidden_iprice]");

//단가 
var iprice = $(this).parent("div").children("b[id=iprice]").text();

//총가격
var result = amount*iprice;

//toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
priceElement.text(result.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
totElement.text(result);

});

for(var j=1; j<6; j++){

	$('#btnClose'+j).on('click', function () {

		for(var i=1; i<6; i++){

			$('#vModal'+i).find('form')[0].reset();

			$('#vModal'+i).modal('hide');
		}
	});
}


</script>

</body>

</html>
