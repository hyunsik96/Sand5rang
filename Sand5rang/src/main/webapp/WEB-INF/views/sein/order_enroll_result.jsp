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
   
	<!-- Alertify라이브러리 CSS -->
	<link rel="stylesheet"
		href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
	<!-- Default theme -->
	<link rel="stylesheet"
		href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
	<!-- Semantic UI theme -->
	<link rel="stylesheet"
		href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />
	<!-- Bootstrap theme -->
	<link rel="stylesheet"
		href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />

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
                        <li class="active"><a href="orderEnroll.se">발주신청</a></li>
						<li><a href="orderList.se">발주조회</a></li>
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
			alertify.alert("알람","${alertMsg}");
		</script>
		<!-- 일회성 알람 메세지 session scope에 있는 alertMsg 삭제해주기 -->
		<c:remove var="alertMsg" scope="session"/>
	</c:if>
    

<div class="main">
		<div class="main-inner">
			<div class="container">
				<div class="row">
					<div class="span12">
						<!-- <div class="widget-content widget-table action-table"> -->
							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>XXX가맹점 발주 명세서</h3>
							</div>


							
<!-- /widget-header -->
<div class="widget-content"> 
    <div>
        <p style="color: rgb(214, 58, 58); font-family: 'Noto Sans KR', sans-serif; font-weight: bolder;">
            &nbsp;&nbsp;&nbsp;&nbsp;* 14:00시 이전 본사 측 승인 전에는 발주 수정이 가능합니다. <br>
        </p>
    </div>

<h3 style="margin-left:20px; margin-top: 30px; margin-bottom: 10px;">빵(Bread)</h3><br>
<c:forEach var="olist" items="${olist}" varStatus="status" begin="0" end="2">
<div class="bread" style="margin-top:10px">
	<h4>*${olist.ingName}</h4>
	<img src="resources/images/ingredient/${olist.ingName}.jpg" width="150" height="150">
	<br>
    <br>
	    <b style="width:30px; margin-left: 40px;">발주 수량 : <b style="color :blue">${olist.count}</b></b>&nbsp;개 
	    <br>     
	    <b style="width:30px; margin-left: 40px;">발주 금액 : <b style="color :rgb(243, 128, 5)"><fmt:formatNumber value="${olist.total}" pattern="###,###,###,###"/></b></b>&nbsp;원
</div>
</c:forEach>
<br>
<br>
<hr>


<h3 style="margin-left:20px; margin-bottom: 10px">야채(Vegetable)</h3><br>
<c:forEach var="olist" items="${olist}" varStatus="satus" begin="3" end="9">
<div class="vegetable" style="margin-top:10px; margin-bottom: 20px">
	<h4>*${olist.ingName}</h4>
	<img src="resources/images/ingredient/${olist.ingName}.jpg" width="150" height="150">
	<br>
    <br>
    <b style="width:30px; margin-left: 40px;">발주 수량 : <b style="color :blue">${olist.count}</b></b>&nbsp;개 
    <br>     
    <b style="width:30px; margin-left: 40px;">발주 금액 : <b style="color :rgb(243, 128, 5)"><fmt:formatNumber value="${olist.total}" pattern="###,###,###,###"/></b></b>&nbsp;원
</div>
</c:forEach>
<br>
<hr>

<h3 style="margin-left:20px; margin-bottom: 10px">고기(Meat)</h3><br>
<c:forEach var="olist" items="${olist}" varStatus="satus" begin="10" end="15">
<div class="meat" style="margin-top:10px">
	<h4>*${olist.ingName}</h4>
	<img src="resources/images/ingredient/${olist.ingName}.jpg" width="150" height="150">
	<br>
    <b style="width:30px; margin-left: 40px;">발주 수량 : <b style="color :blue">${olist.count}</b></b>&nbsp;개 
    <br>     
    <b style="width:30px; margin-left: 40px;">발주 금액 : <b style="color :rgb(243, 128, 5)"><fmt:formatNumber value="${olist.total}" pattern="###,###,###,###"/></b></b>&nbsp;원
</div>
</c:forEach>
<br><br>
<hr>

<h3 style="margin-left:20px; margin-bottom: 10px">소스(sauce)</h3><br>
<c:forEach var="olist" items="${olist}" varStatus="satus" begin="16" end="20">
<div class="sauce" style="margin-top:10px">
	<h4>*${olist.ingName}</h4>
	<img src="resources/images/ingredient/${olist.ingName}.jpg" width="150" height="150">
	<br>
    <b style="width:30px; margin-left: 40px;">발주 수량 : <b style="color :blue">${olist.count}</b></b>&nbsp;개 
    <br>     
    <b style="width:30px; margin-left: 40px;">발주 금액 : <b style="color :rgb(243, 128, 5)"><fmt:formatNumber value="${olist.total}" pattern="###,###,###,###"/></b></b>&nbsp;원
</div>
</c:forEach>
<br><br>
<hr>

<h3 style="margin-left:20px; margin-bottom: 10px">치즈(cheese)</h3><br>
<c:forEach var="olist" items="${olist}" varStatus="satus" begin="21" end="23">
<div class="cheese" style="margin-top:10px">
	<h4>*${olist.ingName}</h4>
	<img src="resources/images/ingredient/${olist.ingName}.jpg" width="150" height="150">
	<br>
    <b style="width:30px; margin-left: 40px;">발주 수량 : <b style="color :blue">${olist.count}</b></b>&nbsp;개 
    <br>     
    <b style="width:30px; margin-left: 40px;">발주 금액 : <b style="color :rgb(243, 128, 5)"><fmt:formatNumber value="${olist.total}" pattern="###,###,###,###"/></b></b>&nbsp;원
</div>
</c:forEach>
<br><br>
<hr>
<br><br>




<div class="order_result">
    <h2 style="margin-left: 480px; margin-bottom: 20px; margin-top: 40px;">[ 발주 신청 내역 ]</h2>
    <div class="widget widget-table action-table">
       
        <!-- 상단 재료별 테이블-->
        <!-- <div class="widget-content"> -->
            <table class="table table-striped table-bordered" style="width: 1100px; margin: auto; margin-bottom: 50px; border: 1px solid silver;">
              <thead>
                <tr>
                  <th style="text-align: center;">No</th>
                  <th style="text-align: center;">재료종류</th>
                  <th style="text-align: center;">원재료명</th>
                  <th style="text-align: center;">수량</th>
                </tr>
              </thead>
              <tbody>
            <c:set var="sum" value="0"/>
            <c:set var="tot_price" value="0"/>
              <c:forEach var="olist" items="${olist}">
                <tr>
                  <td style="text-align: center;">${olist.ingNo}</td>
                  <c:choose>
                    <c:when test="${olist.ingType eq 'B'}">
                        <td style="text-align: center;">빵</td>
                    </c:when>
                    <c:when test="${olist.ingType eq 'V'}">
                        <td style="text-align: center;">야채</td>
                    </c:when>
                    <c:when test="${olist.ingType eq 'C'}">
                        <td style="text-align: center;">치즈</td>
                    </c:when>
                    <c:when test="${olist.ingType eq 'M'}">
                        <td style="text-align: center;">고기</td>
                    </c:when>
                    <c:when test="${olist.ingType eq 'S'}">
                        <td style="text-align: center;">소스</td>
                    </c:when>
                  </c:choose>
                  <td style="text-align: center;">${olist.ingName}</td>
                  <td style="text-align: center;">${olist.count}</td>
                </tr>
                <c:set var="tot_price" value="${tot_price + olist.total}"/>
                <c:set var="sum" value="${sum + olist.count}"/>
              </c:forEach>
                  <tr>
                    <td style="text-align: center;" colspan="3">총 발주 수량</td>
                    <td style="text-align: center;"><c:out value="${sum}"/>(단위/개)</td>
                  </tr>
              </tbody>
            </table>
          <!-- </div> -->

         <h2 style="margin-left: 510px; margin-bottom: 20px; margin-top: 40px;">[ 발주 금액 ]</h2>
        <!-- 발주 가격 테이블 -->
        <!-- <div class="widget-content"> -->
          <table class="table table-striped table-bordered" style="width: 1100px; margin: auto; border: 1px solid silver;">
            <thead>
              <tr>
                <th style="text-align: center;">총 발주 수량(단위/개)</th>
                <th style="text-align: center;">총 발주 가격(단위/원)</th>
                <th class="td-actions" style="text-align: center;">현재 잔액(단위/원)</th>
                <th class="td-actions" style="text-align: center;">총 결제 금액(단위/원)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="text-align: center;">${sum}</td>
                <td style="text-align: center;"><fmt:formatNumber value="${tot_price}" pattern="###,###,###,###"/></td>
                <td style="text-align: center;">1,000,000</td>
                <td style="text-align: center;">900,000</td>
              </tr>
            </tbody>
          </table>
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
