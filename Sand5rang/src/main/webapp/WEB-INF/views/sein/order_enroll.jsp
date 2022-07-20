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
   

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>

<body>
<input type="hidden" id="result" value="0">

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
							잔액 : <fmt:formatNumber value="${m.frPay}" pattern="###,###,###,###"/> 원
							
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
				
				<li class="dropdown active">					
					<a href="orderEnroll.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>발주</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li class="active"><a href="orderEnrollForm.se">발주신청</a></li>
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
								<h3>가맹점 발주 신청</h3>
							</div>

							<div class="widget-content"> 
							    <div>
							        <p style="color: rgb(214, 58, 58); font-family: 'Noto Sans KR', sans-serif; font-weight: bolder;">
							            &nbsp;&nbsp;&nbsp;&nbsp;* 당일 발주는 14:00시까지 가능하며, 14:00시 이전 본사 측 승인 전에는 발주 수정이 가능합니다. <br>
							        </p>
							    </div>
							    
							   
								<h3 style="margin-left:20px; margin-top: 30px; margin-bottom: 10px;">빵(Bread)</h3><br>
                                <form class="order_list" id="1" style="width : 200px; display: inline-block;">
								<div class="bread" >
									<h4>*파마산</h4>
									<img src="resources/images/ingredient/파마산.jpg" width="150" height="150">
								    <br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 0)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 0)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">220</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="1">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>

                                <form class="order_list" id="2" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*화이트</h4>
									<img src="resources/images/ingredient/화이트.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 1)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 1)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">200</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="2">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>

                                <form class="order_list" id="3" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*플랫</h4>
									<img src="resources/images/ingredient/플렛.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 2)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 2)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">250</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="3">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>
								<br><br>
								
								<hr>
								<h3 style="margin-left:20px; margin-bottom: 10px">야채(Vegetable)</h3><br>
                                <form class="order_list" id="4" style="width : 200px; display: inline-block;">
								<div class="vegetable" style="margin-top:10px">
									<h4>*양상추</h4>
									<img src="resources/images/ingredient/양상추.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 3)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 3)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">200</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="4">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>
								
                                <form class="order_list" id="5" style="width : 200px; display: inline-block;">
                                <div class="vegetable">
									<h4>*토마토</h4>
									<img src="resources/images/ingredient/토마토.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 4)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 4)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">100</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="5">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>

                                <form class="order_list" id="6" style="width : 200px; display: inline-block;">
								<div class="vegetable">
									<h4>*오이</h4>
									<img src="resources/images/ingredient/오이.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',5)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',5)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">30</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="6">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>

                                <form class="order_list" id="7" style="width : 200px; display: inline-block;">
								<div class="vegetable">
									<h4>*양파</h4>
									<img src="resources/images/ingredient/양파.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',6)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',6)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">50</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                        
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="7">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>
								
                                <form class="order_list" id="8" style="width : 200px; display: inline-block;">
                                <div class="vegetable">
									<h4>*피망</h4>
									<img src="resources/images/ingredient/피망.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',7)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',7)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">20</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>

                                    <input type="hidden" class="ingNo" name="ingNo" value="8">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>

                                <form class="order_list" id="9" style="width : 200px; display: inline-block;">
								<div class="vegetable">
									<h4>*할라피뇨</h4>
									<img src="resources/images/ingredient/할라피뇨.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',8)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',8)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">70</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="9">
                                    <input type="hidden" name="stat" value="B">
								</div>
								</form>

                                <form class="order_list" id="10" style="width : 200px; display: inline-block;">
								<div class="vegetable" style="margin-top: 20px;">
									<h4>*아보카도</h4>
									<img src="resources/images/ingredient/아보카도.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',9)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',9)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">150</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="10">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>
								<br>
								<br>
								<hr>
                                

                                <form class="order_list" id="11" style="width : 200px; display: inline-block;">
								<h3 style="margin-left:20px; margin-bottom: 10px">치즈(cheese)</h3><br>
								<div class="cheese" style="margin-top:10px">
									<h4>*아메리칸</h4>
									<img src="resources/images/ingredient/아메리칸.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',10)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',10)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">100</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                   
                                    <input type="hidden" class="ingNo" name="ingNo" value="11">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>

                                <form class="order_list" id="12" style="width : 200px; display: inline-block;">
								<div class="cheese">
									<h4>*모짜렐라</h4>
									<img src="resources/images/ingredient/모짜렐라.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',11)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',11)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">100</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="12">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>

                                <form class="order_list" id="13" style="width : 200px; display: inline-block;">
								<div class="cheese">
									<h4>*슈레드</h4>
									<img src="resources/images/ingredient/슈레드.jpg" width="150" height="150">
									<br>
								    <b>발주 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',12)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',12)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">100</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="13">
                                    <input type="hidden" name="stat" value="B">
								</div>
                                </form>
								
                                <hr> 
								<br><br>


								<form class="order_list" id="14" style="width : 200px; display: inline-block;">
									<h3 style="margin-left:20px; margin-bottom: 10px">고기(Meat)</h3><br>
									<div class="meat" style="margin-top:10px">
										<h4>*페퍼로니</h4>
										<img src="resources/images/ingredient/페퍼로니.jpg" width="150" height="150">
										<br>
										<b>발주 수량 : </b>
										<div style="display: inline-block;">
											<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
										</div>
										<div style="float: right;">    
											<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',13)">&nbsp;&nbsp;
											<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',13)">
										</div>
										<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
											[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">150</div>원&nbsp;/&nbsp;
											<div id="total_price" style="display : inline-block; color:blue">0</div>원]
											<div id="total_price_hidden" hidden>0</div>
											<input type="hidden" name="tot_price" value="0">
										</div>
										
										<input type="hidden" class="ingNo" name="ingNo" value="14">
										<input type="hidden" name="stat" value="B">
									</div>
									</form>
	
									<form class="order_list" id="15" style="width : 200px; display: inline-block;">
									<div class="meat">
										<h4>*에그</h4>
										<img src="resources/images/ingredient/에그마요.jpg" width="150" height="150">
										<br>
										<b>발주 수량 : </b>
										<div style="display: inline-block;">
											<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
										</div>
										<div style="float: right;">    
											<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',14)">&nbsp;&nbsp;
											<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',14)">
										</div>
										<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
											[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">100</div>원&nbsp;/&nbsp;
											<div id="total_price" style="display : inline-block; color:blue">0</div>원]
											<div id="total_price_hidden" hidden>0</div>
											<input type="hidden" name="tot_price" value="0">
										</div>
										
										<input type="hidden" class="ingNo" name="ingNo" value="15">
										<input type="hidden" name="stat" value="B">
									</div>
									</form>
	
									<form class="order_list" id="16" style="width : 200px; display: inline-block;">
									<div class="meat">
										<h4>*치킨</h4>
										<img src="resources/images/ingredient/치킨.jpg" width="150" height="150">
										<br>
										<b>발주 수량 : </b>
										<div style="display: inline-block;">
											<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
										</div>
										<div style="float: right;">    
											<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',15)">&nbsp;&nbsp;
											<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',15)">
										</div>
										<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
											[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">170</div>원&nbsp;/&nbsp;
											<div id="total_price" style="display : inline-block; color:blue">0</div>원]
											<div id="total_price_hidden" hidden>0</div>
											<input type="hidden" name="tot_price" value="0">
										</div>
										
										<input type="hidden" class="ingNo" name="ingNo" value="16">
										<input type="hidden" name="stat" value="B">
									</div>
									</form>
	
									<form class="order_list" id="17" style="width : 200px; display: inline-block;">
									<div class="meat">
										<h4>*쉬림프</h4>
										<img src="resources/images/ingredient/쉬림프.jpg" width="150" height="150">
										<br>
										<b>발주 수량 : </b>
										<div style="display: inline-block;">
											<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
										</div>
										<div style="float: right;">    
											<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',16)">&nbsp;&nbsp;
											<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',16)">
										</div>
										<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
											[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">200</div>원&nbsp;/&nbsp;
											<div id="total_price" style="display : inline-block; color:blue">0</div>원]
											<div id="total_price_hidden" hidden>0</div>
											<input type="hidden" name="tot_price" value="0">
										</div>
										
										<input type="hidden" class="ingNo" name="ingNo" value="17">
										<input type="hidden" name="stat" value="B">
									</div>
									</form>
	
									<form class="order_list" id="18" style="width : 200px; display: inline-block;">
									<div class="meat">
										<h4>*비프</h4>
										<img src="resources/images/ingredient/비프.jpg" width="150" height="150">
										<br>
										<b>발주 수량 : </b>
										<div style="display: inline-block;">
											<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
										</div>
										<div style="float: right;">    
											<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',17)">&nbsp;&nbsp;
											<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',17)">
										</div>
										<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
											[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">200</div>원&nbsp;/&nbsp;
											<div id="total_price" style="display : inline-block; color:blue">0</div>원]
											<div id="total_price_hidden" hidden>0</div>
											<input type="hidden" name="tot_price" value="0">
										</div>
										
										<input type="hidden" class="ingNo" name="ingNo" value="18">
										<input type="hidden" name="stat" value="B">
									</div>
									</form>
	
									<form class="order_list" id="19" style="width : 200px; display: inline-block;">
									<div class="meat">
										<h4>*베이컨</h4>
										<img src="resources/images/ingredient/베이컨.jpg" width="150" height="150">
										<br>
										<b>발주 수량 : </b>
										<div style="display: inline-block;">
											<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
										</div>
										<div style="float: right;">    
											<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',18)">&nbsp;&nbsp;
											<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',18)">
										</div>
										<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
											[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">120</div>원&nbsp;/&nbsp;
											<div id="total_price" style="display : inline-block; color:blue">0</div>원]
											<div id="total_price_hidden" hidden>0</div>
											<input type="hidden" name="tot_price" value="0">
										</div>
									   
										<input type="hidden" class="ingNo" name="ingNo" value="19">
										<input type="hidden" name="stat" value="B">
									</div>
									</form>
									<br><br>
									<hr>


									<form class="order_list" id="20" style="width : 200px; display: inline-block;">
										<h3 style="margin-left:20px; margin-bottom: 10px">소스(sauce)</h3><br>
										<div class="sauce" style="margin-top:10px">
											<h4>*렌치</h4>
											<img src="resources/images/ingredient/랜치.jpg" width="150" height="150">
											<br>
											<b>발주 수량 : </b>
											<div style="display: inline-block;">
												<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
											</div>
											<div style="float: right;">    
												<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',19)">&nbsp;&nbsp;
												<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',19)">
											</div>
											<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
												[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">50</div>원&nbsp;/&nbsp;
												<div id="total_price" style="display : inline-block; color:blue">0</div>원]
												<div id="total_price_hidden" hidden>0</div>
												<input type="hidden" name="tot_price" value="0">
											</div>
										   
											<input type="hidden" class="ingNo" name="ingNo" value="20">
											<input type="hidden" name="stat" value="B">
										</div>
										</form>
		
										<form class="order_list" id="21" style="width : 200px; display: inline-block;">
										<div class="sauce">
											<h4>*스위트칠리</h4>
											<img src="resources/images/ingredient/스위트칠리.jpg" width="150" height="150">
											<br>
											<b>발주 수량 : </b>
											<div style="display: inline-block;">
												<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
											</div>
											<div style="float: right;">    
												<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 20)">&nbsp;&nbsp;
												<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 20)">
											</div>
											<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
												[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">60</div>원&nbsp;/&nbsp;
												<div id="total_price" style="display : inline-block; color:blue">0</div>원]
												<div id="total_price_hidden" hidden>0</div>
												<input type="hidden" name="tot_price" value="0">
											</div>
											
											<input type="hidden" class="ingNo" name="ingNo" value="21">
											<input type="hidden" name="stat" value="B">
										</div>
										</form>
		
										<form class="order_list" id="22" style="width : 200px; display: inline-block;">
										<div class="sauce">
											<h4>*올리브오일</h4>
											<img src="resources/images/ingredient/올리브오일.jpg" width="150" height="150">
											<br>
											<b>발주 수량 : </b>
											<div style="display: inline-block;">
												<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
											</div>
											<div style="float: right;">    
												<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',21)">&nbsp;&nbsp;
												<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',21)">
											</div>
											<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
												[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">70</div>원&nbsp;/&nbsp;
												<div id="total_price" style="display : inline-block; color:blue">0</div>원]
												<div id="total_price_hidden" hidden>0</div>
												<input type="hidden" name="tot_price" value="0">
											</div>
											
											<input type="hidden" class="ingNo" name="ingNo" value="22">
											<input type="hidden" name="stat" value="B">
										</div>
										</form>
		
										<form class="order_list" id="23" style="width : 200px; display: inline-block;">
										<div class="sauce">
											<h4>*머스타드</h4>
											<img src="resources/images/ingredient/머스타드.jpg" width="150" height="150">
											<br>
											<b>발주 수량 : </b>
											<div style="display: inline-block;">
												<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
											</div>
											<div style="float: right;">    
												<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',22)">&nbsp;&nbsp;
												<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',22)">
											</div>
											<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
												[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">40</div>원&nbsp;/&nbsp;
												<div id="total_price" style="display : inline-block; color:blue">0</div>원]
												<div id="total_price_hidden" hidden>0</div>
												<input type="hidden" name="tot_price" value="0">
											</div>
											
											<input type="hidden" class="ingNo" name="ingNo" value="23">
											<input type="hidden" name="stat" value="B">
										</div>
										</form>
		
										<form class="order_list" id="24" style="width : 200px; display: inline-block;">
										<div class="sauce">
											<h4>*후추</h4>
											<img src="resources/images/ingredient/후추.jpg" width="150" height="150">
											<br>
											<b>발주 수량 : </b>
											<div style="display: inline-block;">
												<input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
											</div>
											<div style="float: right;">    
												<input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus',23)">&nbsp;&nbsp;
												<input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus',23)">
											</div>
											<div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
												[ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">20</div>원&nbsp;/&nbsp;
												<div id="total_price" style="display : inline-block; color:blue">0</div>원]
												<div id="total_price_hidden" hidden>0</div>
												<input type="hidden" name="tot_price" value="0">
											</div>
											
											<input type="hidden" class="ingNo" name="ingNo" value="24">
											<input type="hidden" name="stat" value="B">
										</div>
										</form>
										<br><br>
										<hr>


							<form class="order_list" id="25" >
                                <div id="total" style="float : right; margin-right: 25px; font-size: 30px; margin-top: 20px; ">
                                    총 발주액 : <b id="tot_order_price">0</b>&nbsp;원
									<input type="hidden" name="allPrice" value="">
                                </div>
							</form>

                                <br><br>
								<div style="margin-top: 100px; width: 100%; text-align: center;">
								    
								    <input type="checkbox" name="order_check" value="n">
								    <span style="font-size : 15px; margin-top : 20px; line-height: 30px; font-family: 'Noto Sans KR', sans-serif;">자동발주신청</span>
								
								    <button type="button" onclick="exe();" class="btn btn-success btn-lg" style="font-family: 'Noto Sans KR', sans-serif;">발주신청</button>&nbsp;
								    <button type="reset" onclick="history.back();" class="btn btn-danger btn-lg" style="font-family: 'Noto Sans KR', sans-serif;">취소</button><br>
								
								    <br>
								    <p style="color :rgb(214, 58, 58); font-family: 'Noto Sans KR', sans-serif; font-weight: bolder; margin-bottom: 10px;">
								        ※ 자동발주 신청 시 매일(14:00시)에 자동으로 발주가 완료됩니다.<br> 
								        관리자 승인 14:00시 이전까지 발주 수정이 가능하며, 체크박스 해제시 자동발주 취소가 됩니다.
								    </p>
								</div>
                                </form>
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

<script>
//reload시에 모든 값에 대해 0으로 세팅해주기
function re(){
    // 결과를 표시할 element
    const resultElement1 = $('input[class=count_result]');

    // 재료 수량에 맞춰 가격을 표시할 element
    const tot1 = $('div[id=total_price]');

    for(var i=0; i<resultElement1.length; i++){

        resultElement1[i].innerText = 0;

        tot1[i].innerText = 0;
    }
 };

  function count(type, num)  {

  // 결과를 표시할 element
  const resultElement = $('input[class=count_result]');

  //div에 작성된 정해진 원재료 가격 element
  const price = $('div[id=price]');

  // 재료 수량에 맞춰 가격을 표시할 element
  const tot = $('div[id=total_price]');

  // 콤마 안찍혀있는 elemet
  const hidden_value = $('div[id=total_price_hidden]');

  // 재료 수량에 따른 재료 발주 총 가격 input element 선택
  const tot_price = $('input[name=tot_price]');

  //화면에 표시될 원재료당 가격
  var num2 = 0;

  //input 입력값에 대한 유효성체크
  var regExp = /^[0-9]+$/;

 for(var i=0; i<resultElement.length; i++){
    

    if(i == num){

        // 현재 화면에 표시된 값
        var number = resultElement[i].value;

        //사용자 입력값 숫자 유효성 체크 
        if(!regExp.test(number)){
            
            alert("수량(숫자)만 입력해주세요.");

            number = 0;

        }else{

        // 더하기/빼기
        if(type === 'plus') {

			if(number==1000){

				alert("하루 발주가능 수량 1000개 이하입니다.\n수량을 다시입력해주세요");

				number = 0;

			}else{
				number = parseInt(number) + 1;
			
           		num2 = price[i].innerText * number;       
			}
        
        }else if(type === 'minus')  {

                if(number==0){

                    number = 0;

                }else{

                    number = parseInt(number) - 1;
                }

                num2 = price[i].innerText * number;
            }
        }
    
			resultElement[i].value = number;
			// 가격 출력 
        	// 콤마 찍어내기 .toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        	tot[i].innerText = num2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

        	//콤마없는 가격 찍어주기
        	hidden_value[i].innerText = num2;

        	tot_price[i].value = num2;    

			orderPrice();
    }
 }
}
//발주 수량 직접입력 시 기본값 0 -> 공백으로 만들어주기
$("input[class=count_result]").on("keydown",function(key){ 

	if($(this).val() == 0){

		$(this).val('');
	}
});

//발주 수량 직접 입력시 자동으로 가격 계산하여 보여주기
$("input[class=count_result]").on("keyup",function(key){ 

    //input 입력값에 대한 숫자 유효성체크
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
    var price = $(this).parent("div").nextAll("div[class=result_price]").children("div[id=price]").text();

    //총 가격 보여줄 element(,콤마 포함)
    var totElement = $(this).parent("div").nextAll("div[class=result_price]").children("div[id=total_price]");

    //총 가격 보여줄 element(콤마 제거)
    var totElement2 = $(this).parent("div").nextAll("div[class=result_price]").children("div[id=total_price_hidden]");

    var totElement3 = $(this).parent("div").nextAll("div[class=result_price]").children("input[name=tot_price]");

    //총가격
    var result = amount*price;

    //toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
    totElement.text(result.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
    totElement2.text(result);
    totElement3.val(result);

    orderPrice();
});

function orderPrice()  {

    //결과 값을 담아줄 element
    var tot = $("form[class=order_list]").children("div[id=total]").children("b[id=tot_order_price]");

	// //hidden으로 숨겨놓은 값
	var alltot = $("form[id=25]").children("div[id=total]").children("input[name=allPrice]");

    //,가 붙여져있지 않은 값이 담겨있는 element
    var tot2 = $("div[id=total_price_hidden]");

    //최종 총 가격을 담아줄 변수 선언
    var num_tot = 0;

    // 모든 input태그(가격)을 불러와서 변수에 담아주기 
    for(var i=0; i<tot2.length; i++){

        num_tot += parseInt(tot2[i].innerText);

        tot.text(num_tot.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
		alltot.val(num_tot);

        }
}


//발주신청 버튼 클릭시 실행되는 함수
function exe(){

    //1.자동발주 신청 checkbox 체크되어있는지 먼저 확인
    //자동발주신청 Check박스 element선택
    var check_value = $("input[type=checkbox]");

    //2. 자동발주신청 선택했을 경우 원재료별 form태그 내부 input hidden으로 stat값 AB으로 상태값 변경해주기  

    //input hidden 값 element 선택
    var status = $("input[name=stat]");

    //원재료 번호 input hidden값 element 선택
    var ingNo = $("input[class=ingNo]");

    //수량이 담겨있는 input element선택
    var count_result = $('input[class=count_result]');    

    var reCnt = 0;

    for(var j=0; j<count_result.length; j++){

        reCnt += count_result[j].value;
    }
    
        if(reCnt>0){
            
            if(check_value.is(':checked') == true){
        
                for(var i=0; i<ingNo.length; i++){
                    
                    status[i].setAttribute("value", "AB");

                    var form1 = $("form[id="+(i+1)+"]").serialize();
					
					form1 += '&'+$("form[id=25]").serialize();
					//var form2 = $("form[id=25]").serialize();
                    // //자동발주 신청 stat값 AB로 변경해주기 

					console.log(form1);
					//console.log(form2);

                    //controller로 보내기
                    (function(i){

                            $.ajax({
                                type: "post",
                                url: "orderEnroll.se",
                                data: form1,
                                dataType: 'json',
                                async: false,
								success: function(result){

									$("#result").val(result);
								}
				            });
                    })(i);
                }
            }else{
                for(var i=0; i<ingNo.length; i++){

                    status[i].setAttribute("value", "B");

					var form1 = $("form[id="+(i+1)+"]").serialize();
					
					form1 += '&'+$("form[id=25]").serialize();
					//var form2 = $("form[id=25]").serialize();
                    // //자동발주 신청 stat값 AB로 변경해주기 
                    
					console.log(form1);
					//console.log(form2);

                    //controller로 보내기
                    (function(i){

                            $.ajax({
                                type: "post",
                                url: "orderEnroll.se",
                                data: form1,
                                dataType: 'json',
                                async: false,
								success: function(result){

									$("#result").val(result);
								}
                            });
                    })(i);
                
                }
            }
            //location.href = "orderEnrollResult.se";
			if($("#result").val() == '1'){
				location.href = "orderEnrollForm.se";
			}else{
				location.href = "orderEnrollResult.se";
			}
        }
        else{
            alert("1개 이상 발주수량을 선택해주세요.");
        }
    }
</script>
</html>
