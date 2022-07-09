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
	<c:if test="${not empty alertMsg}">
		<script>
			alertify.alert("알람","${alertMsg}");
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
                
                
				<li class="dropdown active">					
					<a href="ingredientAllStock.csh" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>재고관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li class="active"><a href="menuSales.csh">매출기입</a></li>
						<li><a href="todayStock.csh">오늘의 재고</a></li>
						<li><a href="ingredientAllStock.csh">전체 재고현황</a></li>
						<li><a href="ingredientDisposal.csh">폐기현황</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="orderEnroll.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>발주</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
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
    
    
    

<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">      		
	      		
	      		<div class="widget ">
	      			
	      			<div class="widget-header">
	      				<i class="icon-user"></i>
	      				<h3>판매 기입</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">

<!-- 여기가 content 채우는 영역입니다 - 현식 -
	추가적으로, 각종  그림으로 표현된 아이콘들은 기존의 파일을 html로 각자 펴서 페이지들을 돌아다니며 class명을 통해 i 태그 속의 이미지 변경과 css 적용이 가능합니다.
	각자 views 폴더에 있는 본인의 폴더에서만 작업하며 마찬가지로 resources 폴더의 member 폴더의 본인의 폴더의 css 및 script를 변경합니다.
	가급적 모든 페이지의 css 는 css 파일을 통해 적용하는 것으로 연습해봅시다.
-->
	<!-- 제품판매현황에서 클릭하면 상세 페이지로 이동할 수 있도록 함. -->
<c:forEach var="m" items="${list}" varStatus="status">	
<form class="resultForm" method="post" action="salesPage${status.count}.csh">
				<div class="menu" style="margin-top:20px;">
					<h4>${m.menName}</h4>
					<img src="resources/images/menu/${m.menName}.png" width="150" height="150">
					<p>
					<input type="hidden" name="menNo" value="${status.count}">		
					판매개수 : <input type="number" name="count" class="stock_style"><br> 
					판매금액 : <input type="number" class="stock_style"><br>
					판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
					</p>
				</div>
<button class="resultbtn" type="submit" hidden>판매기입</button>
</form>			
</c:forEach>
<button id="btnEvent">판매기입</button>
<script>
	$(function(){
		$("#btnEvent").click(function(){
			$(".resultbtn").()trigger("click");
		});			
	});
</script>
<!-- 	<div class="menu">
				<h4>로스트치킨</h4>
				<img src="resources/images/menu/로스트치킨.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>쉬림프</h4>
				<img src="resources/images/menu/쉬림프.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>		
			<div class="menu">
				<h4>스테이크치즈</h4>
				<img src="resources/images/menu/스테이크치즈.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>베지</h4>
				<img src="resources/images/menu/베지.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>베지아보카도</h4>
				<img src="resources/images/menu/베지아보카도.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu" style="margin-top : 20px;">
				<h4>로스트치킨아보카도</h4>
				<img src="resources/images/menu/로스트치킨아보카도.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>비엘티</h4>
				<img src="resources/images/menu/비엘티.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>		
			<div class="menu">
				<h4>풀드포크바비큐</h4>
				<img src="resources/images/menu/풀드포크바비큐.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>치킨데리야끼</h4>
				<img src="resources/images/menu/치킨데리야끼.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>터키베이컨아보카도</h4>
				<img src="resources/images/menu/터키베이컨아보카도.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>로티세리바비큐치킨</h4>
				<img src="resources/images/menu/로티세리바비큐치킨.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu" style="margin-top:20px;">
				<h4>이탈리안비엠티</h4>
				<img src="resources/images/menu/이탈리안비엠티.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>		
			<div class="menu">
				<h4>K-바비큐</h4>
				<img src="resources/images/menu/k-바비큐.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" readonly><br>
				</p>
			</div>
			<div class="menu">
				<h4>스파이시이탈리안</h4>
				<img src="resources/images/menu/스파이시이탈리안.png" width="150" height="150">
				<p>
				판매개수 : <input type="number" class="stock_style" value="1000" ><br> 
				판매금액 : <input type="number" class="stock_style" value="1000000"><br>
				판매날짜 : <input type="date" class="stock_style" value="2022-07-05" ><br>
				</p>
			</div>
-->							
					</div> <!-- /widget-content -->
			
						
				</div> <!-- /widget -->
	      		
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    
    
    
 
<div class="extra">

	<div class="extra-inner">

		<div class="container">

			<div class="row">
                    <div class="span3">
                        <h4>
                            About Free Admin Template</h4>
                        <ul>
                            <li><a href="javascript:;">EGrappler.com</a></li>
                            <li><a href="javascript:;">Web Development Resources</a></li>
                            <li><a href="javascript:;">Responsive HTML5 Portfolio Templates</a></li>
                            <li><a href="javascript:;">Free Resources and Scripts</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Support</h4>
                        <ul>
                            <li><a href="javascript:;">Frequently Asked Questions</a></li>
                            <li><a href="javascript:;">Ask a Question</a></li>
                            <li><a href="javascript:;">Video Tutorial</a></li>
                            <li><a href="javascript:;">Feedback</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Something Legal</h4>
                        <ul>
                            <li><a href="javascript:;">Read License</a></li>
                            <li><a href="javascript:;">Terms of Use</a></li>
                            <li><a href="javascript:;">Privacy Policy</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>
                            Open Source jQuery Plugins</h4>
                        <ul>
                            <li><a href="">Open Source jQuery Plugins</a></li>
                            <li><a href="">HTML5 Responsive Tempaltes</a></li>
                            <li><a href="">Free Contact Form Plugin</a></li>
                            <li><a href="">Flat UI PSD</a></li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                </div> <!-- /row -->

		</div> <!-- /container -->

	</div> <!-- /extra-inner -->

</div> <!-- /extra -->


    
    
<div class="footer">
	
	<div class="footer-inner">
		
		<div class="container">
			
			<div class="row">
				
    			<div class="span12">
    				&copy; 2013 <a href="#">Bootstrap Responsive Admin Template</a>.
    			</div> <!-- /span12 -->
    			
    		</div> <!-- /row -->
    		
		</div> <!-- /container -->
		
	</div> <!-- /footer-inner -->
	
</div> <!-- /footer -->
    


<jsp:include page="include/6.jsp" />


  </body>

</html>
