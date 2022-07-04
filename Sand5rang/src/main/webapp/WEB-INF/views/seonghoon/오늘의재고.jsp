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
			
			<a class="brand" href="index.html">
				Sand5rang Admin				
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
					<a href="index.html">
						<i class="icon-dashboard"></i>
						<span>메인</span>
					</a>	    				
				</li>
                
                
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 업무처리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="icons.html">가맹점 주문처리</a></li>
						<li><a href="faq.html">공장발주내역</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="icons.html">가맹점 조회</a></li>
						<li><a href="faq.html">가맹가입신청</a></li>
						<li><a href="faq.html">문의 조회</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>재고관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="icons.html">오늘의 재고</a></li>
						<li><a href="faq.html">전체 재고 현황</a></li>
						<li><a href="faq.html">재료별 재고 현황</a></li>
						<li><a href="faq.html">폐기 현황 </a></li>
                    </ul>    				
				</li>				
                
				
				<li>
					<a href="reports.html">
						<i class="icon-list-alt"></i>
						<span>결제대금</span>
					</a>    				
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

<h3 style="margin-left:20px">빵(Bread)</h3>
<div class="bread" style="margin-top : 10px;">
	<h4>파마산</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="bread">
	<h4>화이트</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="bread">
	<h4>플랫</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<br>
<br>
<hr>
<h3 style="margin-left:20px">야채(Vegetable)</h3>
<div class="vegetable" style="margin-top:10px">
	<h4>양상추</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="vegetable">
	<h4>토마토</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="vegetable">
	<h4>오이</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="vegetable">
	<h4>양파</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="vegetable">
	<h4>피망</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="vegetable">
	<h4>할라피뇨</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="vegetable">
	<h4>아보카도</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<br>
<br>
<hr>
<h3 style="margin-left:20px">고기(Meat)</h3>
<div class="meat" style="margin-top:10px">
	<h4>페퍼로니</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="meat">
	<h4>에그</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="meat">
	<h4>치킨</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="meat">
	<h4>쉬림프</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="meat">
	<h4>비프</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="meat">
	<h4>베이컨</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<br><br>
<hr>
<h3 style="margin-left:20px">소스(sauce)</h3>
<div class="sauce" style="margin-top:10px">
	<h4>랜치</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="sauce">
	<h4>스위트칠리</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="sauce">
	<h4>올리브오일</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="sauce">
	<h4>머스타드</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="sauce">
	<h4>후추</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<br><br>
<hr>
<h3 style="margin-left:20px">치즈(cheese)</h3>
<div class="cheese" style="margin-top:10px">
	<h4>아메리카</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="cheese">
	<h4>모짜렐라</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>
<div class="cheese">
	<h4>슈레드</h4>
	<img src="resources/images/burger.png" width="100" height="100">
	<p>
	현재재고 : 10000 <br>
	유통기한 : 2022-07-04
	</p>
</div>



	
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
