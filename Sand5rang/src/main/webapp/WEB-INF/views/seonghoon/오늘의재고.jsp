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
                
                
				<li class="dropdown active">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>재고관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="menuSales.csh">매출기입</a></li>
						<li class="active"><a href="todayStock.csh">오늘의 재고</a></li>
						<li><a href="ingredientStock1.csh">재료별 재고현황</a></li>
						<li><a href="ingredientAllStock.csh">전체 재고현황</a></li>
						<li><a href="ingredientDisposal1.csh">폐기관리</a></li>
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
	      				<h3>오늘의 재고</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">


<!-- 여기가 content 채우는 영역입니다 - 현식 -
	추가적으로, 각종  그림으로 표현된 아이콘들은 기존의 파일을 html로 각자 펴서 페이지들을 돌아다니며 class명을 통해 i 태그 속의 이미지 변경과 css 적용이 가능합니다.
	각자 views 폴더에 있는 본인의 폴더에서만 작업하며 마찬가지로 resources 폴더의 member 폴더의 본인의 폴더의 css 및 script를 변경합니다.
	가급적 모든 페이지의 css 는 css 파일을 통해 적용하는 것으로 연습해봅시다.
-->

<hr>
<h3 style="margin-left:20px">빵(Bread)</h3>
<c:forEach var="i" items="${i_list1}">
<div class="${i.ingType}">
	<h4>${i.ingName}</h4>
	<img src="resources/images/ingredient/${i.ingName}.jpg" width="150" height="150">
	<p>
	현재재고 : 
		<c:forEach var="s" items="${s_list1}">
			<c:if test="${i.ingNo eq s.ingNo}">
			<span>${s.count}</span>
			</c:if>
		</c:forEach>
	유통기한 : 		
		<c:forEach var="d" items="${d_list1 }">
			<c:if test="${i.ingNo eq d.ingNo }">
			<span>${d.stoDate }</span>
			</c:if>
		</c:forEach>
	</p>
</div>
</c:forEach>
<hr>
<h3 style="margin-left:20px">야채(Vegetable)</h3>
<c:forEach var="i" items="${i_list2}">
<div class="${i.ingType}">
	<h4>${i.ingName}</h4>
	<img src="resources/images/ingredient/${i.ingName }.jpg" width="150" height="150">
	<p>
	현재재고 : 	
	<c:forEach var="s" items="${s_list2}">
		<c:if test="${i.ingNo eq s.ingNo}">
		<span>${s.count}</span><br>
		</c:if>
	</c:forEach>
	유통기한 : 	
	<c:forEach var="d" items="${d_list2 }">
		<c:if test="${i.ingNo eq d.ingNo }">
		<span>${d.stoDate }</span>
		</c:if>
	</c:forEach>
	</p>
</div>
</c:forEach>
<hr>
<h3 style="margin-left:20px">고기(Meat)</h3>
<c:forEach var="i" items="${i_list3}">
<div class="${i.ingType}">
	<h4>${i.ingName}</h4>
	<img src="resources/images/ingredient/${i.ingName}.jpg" width="150" height="150">
	<p>
	현재재고 : 	
	<c:forEach var="s" items="${s_list3}">
		<c:if test="${i.ingNo eq s.ingNo}">
		<span>${s.count}</span><br>
		</c:if>
	</c:forEach>
	유통기한 : 
	<c:forEach var="d" items="${d_list3 }">
		<c:if test="${i.ingNo eq d.ingNo }">
		<span>${d.stoDate }</span>
		</c:if>
	</c:forEach>
	</p>
</div>
</c:forEach>
<hr>
<h3 style="margin-left:20px">소스(Sauce)</h3>
<c:forEach var="i" items="${i_list4}">
<div class="${i.ingType}">
	<h4>${i.ingName }</h4>
	<img src="resources/images/ingredient/${i.ingName}.jpg" width="150" height="150">
	<p>
	현재재고 : 
	<c:forEach var="s" items="${s_list4}">
		<c:if test="${i.ingNo eq s.ingNo}">
		<span>${s.count}</span><br>
		</c:if>
	</c:forEach>
	유통기한 : 	
	<c:forEach var="d" items="${d_list4 }">
		<c:if test="${i.ingNo eq d.ingNo }">
		<span>${d.stoDate }</span>
		</c:if>
	</c:forEach>
	</p>
</div>
</c:forEach>
<hr>
<h3 style="margin-left:20px">치즈(Cheese)</h3>
<c:forEach var="i" items="${i_list5}">
<div class="${i.ingType}">
	<h4>${i.ingName}</h4>
	<img src="resources/images/ingredient/${i.ingName }.jpg" width="150" height="150">
	<p>
	현재재고 : 	
	<c:forEach var="s" items="${s_list5}">
		<c:if test="${i.ingNo eq s.ingNo}">
		<span>${s.count}</span><br>
		</c:if>
	</c:forEach>
	유통기한 :	
	<c:forEach var="d" items="${d_list5 }">
		<c:if test="${i.ingNo eq d.ingNo }">
 		<span>${d.stoDate }</span>
		</c:if>
	</c:forEach>
	</p>
</div>
</c:forEach>


<!-- 
<div class="bread">
	<h4>화이트</h4>
	<img src="resources/images/ingredient/화이트.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="bread">
	<h4>플랫</h4>
	<img src="resources/images/ingredient/플렛.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<br>
<br>
<hr>
<h3 style="margin-left:20px">야채(Vegetable)</h3>
<div class="vegetable">
	<h4>양상추</h4>
	<img src="resources/images/ingredient/양상추.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="vegetable">
	<h4>토마토</h4>
	<img src="resources/images/ingredient/토마토.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="vegetable">
	<h4>오이</h4>
	<img src="resources/images/ingredient/오이.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="vegetable">
	<h4>양파</h4>
	<img src="resources/images/ingredient/양파.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="vegetable">
	<h4>피망</h4>
	<img src="resources/images/ingredient/피망.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="vegetable">
	<h4>할라피뇨</h4>
	<img src="resources/images/ingredient/할라피뇨.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="vegetable">
	<h4>아보카도</h4>
	<img src="resources/images/ingredient/아보카도.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<hr>
<h3 style="margin-left:20px">고기(Meat)</h3>
<div class="meat">
	<h4>페퍼로니</h4>
	<img src="resources/images/ingredient/페퍼로니.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="meat">
	<h4>에그마요</h4>
	<img src="resources/images/ingredient/에그.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="meat">
	<h4>치킨</h4>
	<img src="resources/images/ingredient/치킨.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="meat">
	<h4>쉬림프</h4>
	<img src="resources/images/ingredient/쉬림프.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="meat">
	<h4>비프</h4>
	<img src="resources/images/ingredient/비프.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="meat">
	<h4>베이컨</h4>
	<img src="resources/images/ingredient/베이컨.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<br><br>
<hr>
<h3 style="margin-left:20px">소스(sauce)</h3>
<div class="sauce">
	<h4>랜치</h4>
	<img src="resources/images/ingredient/랜치.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="sauce">
	<h4>스위트칠리</h4>
	<img src="resources/images/ingredient/스위트칠리.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="sauce">
	<h4>올리브오일</h4>
	<img src="resources/images/ingredient/올리브오일.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="sauce">
	<h4>머스타드</h4>
	<img src="resources/images/ingredient/머스타드.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="sauce">
	<h4>후추</h4>
	<img src="resources/images/ingredient/후추.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<br><br>
<hr>
<h3 style="margin-left:20px">치즈(cheese)</h3>
<div class="cheese">
	<h4>아메리칸</h4>
	<img src="resources/images/ingredient/아메리칸.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="cheese">
	<h4>모짜렐라</h4>
	<img src="resources/images/ingredient/모짜렐라.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
	</p>
</div>
<div class="cheese">
	<h4>슈레드</h4>
	<img src="resources/images/ingredient/슈레드.jpg" width="150" height="150">
	<p>
	현재재고 : <a href="ingredientStock.csh">1000</a><br>
	유통기한 : <a href="ingredientDisposal.csh">2022-07-08</a>
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
