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
				
				<li class="dropdown active">					
					<a href="depositList.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-money"></i>
						<span>결제대금</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li class="active"><a href="fr1.hs">대금내역</a></li>
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
	      		
	      		<div class="widget widget-table action-table">
	      			
	      			<div class="widget-header">
	      				<i class="icon-money"></i>
	      				<h3>가맹점 결제내역 리스트 조회</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">
<c:if test="${!empty list}">
              <table class="table table-striped table-bordered sein-table">
                <thead>
                  <tr>
                    <th>No.</td>
                    <th>가맹점명</td>
                    <th>입금액</td>
                    <th>결제금액</td>
                    <th>잔액</td>
                    <th>담당자명</td>
                    <th>처리날짜</td>
                    <th>명세서발행이메일</td>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="payment" items="${list}">
                  <tr>
                    <td>${payment.payNo}</td>
                    <td>${payment.storeName}</td>
                    <td>${payment.deposit}</td>
                    <td>${payment.withdraw}</td>
                    <td>${payment.total}</td>
                    <td>성현식</td>
                    <td>${payment.date}</td>
                    <td>${payment.email}</td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
</c:if>
					</div> <!-- /widget-content -->
<c:if test="${empty list}"><div style="width:250px; margin:auto; margin-top:30px; font-size:15px; color:red;">대금내역이 없습니다.</div></c:if>
				</div> <!-- /widget -->
<c:if test="${!empty list}">     		
		<ul class="pagination pagination-sm">
		<c:choose>
			<c:when test="${pi.currentPage eq 1}">
			<li class="page-item disabled"><a class="page-link" href="#"><</a></li>
			</c:when>
			<c:otherwise>
			<li class="page-item"><a class="page-link" href="fr1.hs?p=${pi.currentPage - 1}"><</a></li>
			</c:otherwise>
		</c:choose>
		
		<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
			<c:if test="${pi.currentPage eq p}">
				<li class="page-item active"><a class="page-link" href="fr1.hs?p=${p}">${p}</a></li>
			</c:if>
			<c:if test="${pi.currentPage ne p}">
				<li class="page-item"><a class="page-link" href="fr1.hs?p=${p}">${p}</a></li>
			</c:if>
		</c:forEach>
		
		<c:choose>
			<c:when test="${pi.currentPage eq pi.maxPage}">
			<li class="page-item disabled"><a class="page-link" href="#">></a></li>
			</c:when>
			<c:otherwise>
			<li class="page-item"><a class="page-link" href="fr1.hs?p=${pi.currentPage + 1}">></a></li>
			</c:otherwise>
		</c:choose>
		</ul>

</c:if>
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    
    
    
 
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
