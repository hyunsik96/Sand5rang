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
						<li><a href="todayStock.csh">오늘의 재고</a></li>
						<li class="active"><a href="ingredientStock.csh">재료별 재고현황</a></li>
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
	      				<h3>재료별 재고 현황</h3>
	      				<!-- 
						<input type="text" id="search"
						style="display:inline-block; width:150px; height:15px; margin-top:10px; margin-left:65%;">
						<button id="btn" class="btn btn-success">검색</button>
						 -->
						 
						<select onchange="categoryChange(this)">
							<option>전체</option>
							<option value="B">빵</option>
							<option value="V">야채</option>
							<option value="M">고기</option>
							<option value="C">치즈</option>
							<option value="S">소스</option>
						</select>
						<script>
							function categoryChange(e){
								var good_a = ["파마산", "화이트", "플렛"];
								var good_b = 
							}
	
						</script>											
					
						
						
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">

<!-- 여기가 content 채우는 영역입니다 - 현식 -
	추가적으로, 각종  그림으로 표현된 아이콘들은 기존의 파일을 html로 각자 펴서 페이지들을 돌아다니며 class명을 통해 i 태그 속의 이미지 변경과 css 적용이 가능합니다.
	각자 views 폴더에 있는 본인의 폴더에서만 작업하며 마찬가지로 resources 폴더의 member 폴더의 본인의 폴더의 css 및 script를 변경합니다.
	가급적 모든 페이지의 css 는 css 파일을 통해 적용하는 것으로 연습해봅시다.
-->
	<table id="st_table" class="table table-bordered">
		<thead>
			<tr class="st_head">
				<th>재료명</th>
				<th>재고개수</th>
				<th>입고일</th>
			</tr>
		</thead>
		<tbody>

		</tbody>
	</table>
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
	<!-- /widget-content -->
		<ul class="pagination pagination-sm"> <!-- pagination-sm -->
			<li class="page-item"><a class="page-link" href="#"><</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">></a></li>
		</ul>	      		
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
 <script>
 	$(function(){
 		$("#btn").click(function(){
 			$.ajax({
 				url : "ingredientStock1.csh",
 				data : {search : $("#search").val()},
 				success : function(result){
 					var resultStr = ""
 					for(var i=0; i<result.length; i++){
 						resultStr += "<tr>"
 									+		"<td>"+ result[i].ingName +"</td>"
 									+		"<td>"+ result[i].count +"</td>"
 									+		"<td>"+ result[i].stoDate +"</td>"
 									+ "</tr>"
 					}
 					$("#st_table>tbody").html(resultStr);
 				},
 				error : function(){
 					console.log("ajax통신 실패!");
 				}
 			})
 		});
 	})
 </script>
 <script>
 	$(function(){
 		$("#search").keydown(function(){
 			$.ajax({
 				url : "ingredientStock1.csh",
 				data : {search : $("#search").val()},
 				success : function(result){
 					var resultStr = ""
 					for(var i=0; i<result.length; i++){
 						resultStr += "<tr>"
 									+		"<td>"+ result[i].ingName +"</td>"
 									+		"<td>"+ result[i].count +"</td>"
 									+		"<td>"+ result[i].stoDate +"</td>"
 									+ "</tr>"
 					}
 					$("#st_table>tbody").html(resultStr);
 				},
 				error : function(){
 					console.log("ajax통신 실패!");
 				}
 			}) 			
 		})
 	});
 </script>
 
 </body>

</html>
