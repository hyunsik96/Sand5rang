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
	<c:if test="${not empty alertMsg}">
		<script>
			alertify.alert("알람","${alertMsg}");
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>	

<jsp:include page="../sein/include/1.jsp" />
<jsp:include page="../sein/include/2.jsp" />
<jsp:include page="../sein/include/3.jsp" />
<jsp:include page="../sein/include/4.jsp" />
<jsp:include page="../sein/include/5.jsp" />
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
                
                
				<li class="dropdown active">					
					<a href="ingredientAllStock.csh" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>재고관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li class="active"><a href="menuSales.csh">매출기입</a></li>
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
								<h3>판매 기입</h3>
							</div>

							<div class="widget-content"> 


                                <form class="order_list" id="1" style="width : 200px; display: inline-block;">
								<div class="bread" >
									<h4>*에그마요</h4>
									<img src="resources/images/menu/에그마요.png" width="150" height="150">
								    <br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 0)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 0)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">4500</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="1">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>

                                <form class="order_list" id="2" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*로스트치킨</h4>
									<img src="resources/images/menu/로스트치킨.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 1)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 1)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">6000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="2">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>

                                <form class="order_list" id="3" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*쉬림프</h4>
									<img src="resources/images/menu/쉬림프.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 2)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 2)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">5500</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="3">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="4" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*스테이크치즈</h4>
									<img src="resources/images/menu/스테이크치즈.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 3)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 3)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">6500</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="4">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="5" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*베지</h4>
									<img src="resources/images/menu/베지.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 4)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 4)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">4000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="5">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="6" style="width : 200px; display: inline-block;">
								<div class="bread" >
									<h4>*베지아보카도</h4>
									<img src="resources/images/menu/베지아보카도.png" width="150" height="150">
								    <br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 5)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 5)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">4500</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="6">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>

                                <form class="order_list" id="7" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*로스트치킨아보카도</h4>
									<img src="resources/images/menu/로스트치킨아보카도.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 6)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 6)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">6500</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="7">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>

                                <form class="order_list" id="8" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*비엘티</h4>
									<img src="resources/images/menu/비엘티.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 7)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 7)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">5000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="8">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="9" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*풀드포크바비큐</h4>
									<img src="resources/images/menu/풀드포크바비큐.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 8)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 8)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">5500</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="9">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="10" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*치킨데리야끼</h4>
									<img src="resources/images/menu/치킨데리야끼.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 9)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 9)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">5000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="10">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="11" style="width : 200px; display: inline-block;">
								<div class="bread" >
									<h4>*터키베이컨아보카도</h4>
									<img src="resources/images/menu/터키베이컨아보카도.png" width="150" height="150">
								    <br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 10)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 10)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">6000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="11">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>

                                <form class="order_list" id="12" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*로티세리바비큐치킨</h4>
									<img src="resources/images/menu/로티세리바비큐치킨.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 11)" >&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 11)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">6000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    
                                    <input type="hidden" class="ingNo" name="ingNo" value="12">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>

                                <form class="order_list" id="13" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*이탈리안비엠티</h4>
									<img src="resources/images/menu/이탈리안비엠티.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 12)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 12)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">5000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="13">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="14" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*K-바비큐</h4>
									<img src="resources/images/menu/K-바비큐.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 13)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 13)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">5500</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="14">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
                                
                                <form class="order_list" id="15" style="width : 200px; display: inline-block;">
								<div class="bread">
									<h4>*스파이시이탈리안</h4>
									<img src="resources/images/menu/스파이시이탈리안.png" width="150" height="150">
									<br>
								    <b>매출 수량 : </b>
								    <div style="display: inline-block;">
								        <input type="text" class="count_result" name="order_count" value="0" style="width:30px; margin: 0px;">
								    </div>
								    <div style="float: right;">    
								        <input type="button" value="+" style="font-weight: bolder; font-size: 15px;" onclick="count('plus', 14)">&nbsp;&nbsp;
								        <input type="button" value="-" style="font-weight: bolder; font-size: 15px;" onclick="count('minus', 14)">
								    </div>
                                    <div class="result_price" style="margin-top : 10px; margin-left: 3px;font-weight: bolder;">
                                        [ 단가 : <div id="price" style="display: inline-block; color :rgb(243, 128, 5)">6000</div>원&nbsp;/&nbsp;
                                        <div id="total_price" style="display : inline-block; color:blue">0</div>원]
                                        <div id="total_price_hidden" hidden>0</div>
                                        <input type="hidden" name="tot_price" value="0">
                                    </div>
                                    <input type="hidden" class="ingNo" name="ingNo" value="15">
                                    <input type="hidden" name="stat" value="N">
								</div>
                                </form>
								<br><br>

								
                                <hr> 
								<br><br>
                            
                                <div id="total" style="float : right; margin-right: 30px; font-size: 30px;">
                                    총 매출액 : <b id="tot_order_price">0</b>&nbsp;원
                                </div>

                                <br><br>
								<div style="width: 100%; text-align: center;">
								    
								    <button type="button" onclick="exe();" class="btn btn-success btn-lg" style="font-family: 'Noto Sans KR', sans-serif;">판매 기입</button>&nbsp;
								    <button type="reset" onclick="re();" class="btn btn-danger btn-lg" style="font-family: 'Noto Sans KR', sans-serif;">돌아가기</button><br>
								
								    <br>
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
        let number = resultElement[i].value;

        //사용자 입력값 숫자 유효성 체크 
        if(!regExp.test(number)){
            
            alert("수량(숫자)만 입력해주세요.");

            number = 0;

        }else{

        // 더하기/빼기
        if(type === 'plus') {

            number = parseInt(number) + 1;

            num2 = price[i].innerText * number;        
            

        }else if(type === 'minus')  {

                if(number==0){

                    number = 0;

                }else{

                    number = parseInt(number) - 1;
                }

                num2 = price[i].innerText * number;
            }
        }

        // 가격 출력 
        // 콤마 찍어내기 .toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        tot[i].innerText = num2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

        //콤마없는 가격 찍어주기
        hidden_value[i].innerText = num2;

        tot_price[i].value = num2;
        
        // 수량 결과 출력
        resultElement[i].value = number;    
        
        orderPrice();
    }
 }
}


//발주 수량 직접 입력시 자동으로 가격 계산하여 보여주기
$("input[class=count_result").on("keyup",function(key){ 

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

    if(amount>1000){

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

    // 모든 input태그 안에있는 가격 결과 element
    //var price_el = $('div[id=total_price]');

    //결과 값을 담아줄 element
    var tot = $("div[id=total]").children("b[id=tot_order_price]");

    //,가 붙여져있지 않은 값이 담겨있는 element
    var tot2 = $("div[id=total_price_hidden]");

    //최종 총 가격을 담아줄 변수 선언
    var num_tot = 0;

    // 모든 input태그(가격)을 불러와서 변수에 담아주기 
    for(var i=0; i<tot2.length; i++){

        num_tot += parseInt(tot2[i].innerText);

        tot.text(num_tot.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));

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

                for(var i=0; i<ingNo.length; i++){

                    status[i].setAttribute("value", "B");

                    var form1 = $("form[id="+(i+1)+"]").serialize();
                    // //자동발주 신청 stat값 AB로 변경해주기 
                    
                    //controller로 보내기
                    (function(i){
                        console.log(form1);
                            $.ajax({
                                type: "post",
                                url: "salesPage1.csh",
                                data: form1,
                                dataType: 'json',
                                async: false
                            });
                    })(i);
                
                }
            
            location.href = "menuSales.csh";
        }
        else{
            alert("1개 이상 발주수량을 선택해주세요.");
        }
    }
</script>
</html>
