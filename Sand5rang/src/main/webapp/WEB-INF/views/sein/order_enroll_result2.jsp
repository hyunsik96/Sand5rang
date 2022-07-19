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

  </head>

<body>
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${alertMsg}");
		</script>
		<c:remove var="alertMsg" scope="session"/>
	 </c:if> 
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
						<a href="fr1.hs" class="dropdown-toggle">
							<i class="icon-money"></i>&nbsp;
							잔액 : ${m.frPay} 원
							
						</a>
					
					</li>
			
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i>
							${loginstore.storeName}
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="logout.me">Logout</a></li>
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
			
				<li class="active">
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
						<li><a href="ingredientStock1.csh">재료별 재고현황</a></li>
						<li><a href="ingredientAllStock.csh">전체 재고현황</a></li>
						<li><a href="ingredientDisposal1.csh">폐기현황</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="orderEnroll.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>발주</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="orderEnrollForm.se">발주신청</a></li>
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
                        <li><a href="fr1.hs">대금내역</a></li>
						<li><a href="deposit.se">입금</a></li>
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
						<!-- <div class="widget-content widget-table action-table"> -->
							<div class="widget-header">
								<i class="icon-user"></i>
								<h3>XXX가맹점 발주 명세서</h3>
							</div>


							
<!-- /widget-header -->
<div class="widget-content"> 
    <div>
		&nbsp;&nbsp;&nbsp;<b>[ 발주날짜 : </b>
		<b><c:out value="${indDate}"/>  ]</b> 
        <b style="color: rgb(214, 58, 58); font-family: 'Noto Sans KR', sans-serif;">
            &nbsp;&nbsp;&nbsp;&nbsp;* 14:00시 이전 본사 측 승인 전에는 발주 수정이 가능합니다. <br>
        </b>
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
<c:forEach var="olist" items="${olist}" varStatus="satus" begin="13" end="18">
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


<h3 style="margin-left:20px; margin-bottom: 10px">치즈(cheese)</h3><br>
<c:forEach var="olist" items="${olist}" varStatus="satus" begin="10" end="12">
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

<h3 style="margin-left:20px; margin-bottom: 10px">소스(sauce)</h3><br>
<c:forEach var="olist" items="${olist}" varStatus="satus" begin="19" end="23">
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




<div class="order_result">
    <h2 style="margin-left: 480px; margin-top: 40px; margin-bottom : 20px;">[ 발주 신청 내역 ]</h2>
    <div class="widget widget-table action-table">
       
        <!-- 상단 재료별 테이블-->
        <!-- <div class="widget-content"> -->
            <table class="table table-striped table-bordered" style="width: 1100px; margin: auto; margin-bottom: 50px; border: 1px solid silver;">
              <thead>
                <tr>
                  <th style="text-align: center;">No</th>
                  <th style="text-align: center;">원재료명</th>
				  <th style="text-align: center;">재료종류</th>
                  <th style="text-align: center;">수량</th>
                </tr>
              </thead>
              <tbody>
            <c:set var="sum" value="0"/>
            <c:set var="tot_price" value="0"/>
              <c:forEach var="olist" items="${olist}">
                <tr>
                  <td style="text-align: center;">${olist.ingNo}</td>
				  <td style="text-align: center;">${olist.ingName}</td>
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
                  
                  <td style="text-align: center;">${olist.count}</td>
                </tr>
                <c:set var="tot_price" value="${tot_price + olist.total}"/>
                <c:set var="sum" value="${sum + olist.count}"/>
				<c:set var="bal" value="${olist.bal}"/>
				<c:set var="total" value="${olist.bal - tot_price}"/>
              </c:forEach>
                  <tr>
                    <td style="text-align: center;" colspan="3">총 발주 수량</td>
                    <td style="text-align: center;"><c:out value="${sum}"/>(단위/개)</td>
                  </tr>
              </tbody>
            </table>
          <!-- </div> -->

		  <button type="button" onclick="location.href='orderList.se'" class="btn btn-success" style="margin-left : 550px">뒤로가기</button>
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
						<!-- /span3 -->
						<div class="span3">
							<h4>
								Contact Us</h4>
							<ul>
								<li><a href="javascript:;">Call 02) 807-4421</a></li>
								<li><a href="javascript:;">Sand5rang@naver.com</a></li>
							</ul>
						</div>
						<!-- /span3 -->
						<div class="span3">
							<h4>
								Opening Hours</h4>
							<ul>
								<li><a href="javascript:;">Everyday</a></li>
								<li><a href="javascript:;">10.00 Am -10.00 Pm</a></li>
							</ul>
						</div>
						<!-- /span3 -->
						<div class="span3">
							<h4>
								  Sand5rang</h4>
							<ul>
								<li><a href="javascript:;">&copy; 2022 All Rights Reserved By Sand5rang.</a></li>
								<li><a href="javascript:;">Distributed By Sand5rang.</a></li>
							</ul>
						</div>
					</div> <!-- /row -->
			</div> <!-- /container -->
		</div> <!-- /extra-inner -->
	</div> <!-- /extra -->
	<div class="footer">
		
		<div class="footer-inner">
			
			<div class="container">
				
				<div class="row">
					
					<div class="span12">
						Korea tradition Sandwich Franchise Sand5rang.
					</div> <!-- /span12 -->
					
				</div> <!-- /row -->
				
			</div> <!-- /container -->
			
		</div> <!-- /footer-inner -->
		
	</div> <!-- /footer -->

	<jsp:include page="include/6.jsp" />

</body>

</html>
