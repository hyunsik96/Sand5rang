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
					<a href="hyunsikTest.hs">
						<i class="icon-dashboard"></i>
						<span>메인</span>
					</a>	    				
				</li>
                
                
				<li class="dropdown active">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 업무처리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li class="active"><a href="hyunsikTest2.hs">가맹점 주문처리</a></li>
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
	      		
	      		<div class="widget widget-table action-table">
	      			
	      			<div class="widget-header">
	      				<i class="icon-indent-left"></i>
	      				<h3>가맹점 주문조회</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">

              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th class="td-actions">가맹점명</th>
                    <th class="td-actions">빵</th>
                    <th class="td-actions">채소</th>
                    <th class="td-actions">치즈</th>
                    <th class="td-actions">고기</th>
                    <th class="td-actions">소스</th>
                    <th class="td-actions">날짜</th>
                    <th class="td-actions">승인 / 반려</th>
                  </tr>
                </thead>
              </table>
              
             <table class="table table-striped table-bordered">
                  <tr>
                    <td class="td-actions">우장산점</td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9001">999</span></td>          
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9002">999</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9003">999</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9004">999</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9005">999</span></td>
                    <td class="td-actions">22/07/13</td>
                    <td class="td-actions"><a href="javascript:;" class="btn btn-success">승인</a><a href="javascript:;" class="btn btn-danger">반려</a></td>
                  </tr>
              </table>
			

              <div id="9001" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">파마산</th>
			                    <th class="td-actions">화이트</th>
			                    <th class="td-actions">플랫</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>

              <div id="9002" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">양상추</th>
			                    <th class="td-actions">토마토</th>
			                    <th class="td-actions">오이</th>
			                    <th class="td-actions">양파</th>
			                    <th class="td-actions">피망</th>
			                    <th class="td-actions">할라피뇨</th>
			                    <th class="td-actions">아보카도</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
              
              <div id="9003" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">아메리칸</th>
			                    <th class="td-actions">모짜렐라</th>
			                    <th class="td-actions">슈레드</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
              
              <div id="9004" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">페퍼로니</th>
			                    <th class="td-actions">에그</th>
			                    <th class="td-actions">치킨</th>
			                    <th class="td-actions">쉬림프</th>
			                    <th class="td-actions">비프</th>
			                    <th class="td-actions">베이컨</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>

              <div id="9005" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">랜치</th>
			                    <th class="td-actions">스위트칠리</th>
			                    <th class="td-actions">올리브오일</th>
			                    <th class="td-actions">머스타드</th>
			                    <th class="td-actions">후추</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
              

             <table class="table table-striped table-bordered">
                  <tr>
                    <td class="td-actions">우장산점</td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9006">999</span></td>          
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9007">999</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9008">999</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9009">999</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#9010">999</span></td>
                    <td class="td-actions">22/07/13</td>
                    <td class="td-actions"><a href="javascript:;" class="btn btn-success">승인</a><a href="javascript:;" class="btn btn-danger">반려</a></td>
                  </tr>
              </table>
			

              <div id="9006" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">파마산</th>
			                    <th class="td-actions">화이트</th>
			                    <th class="td-actions">플랫</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>

              <div id="9007" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">양상추</th>
			                    <th class="td-actions">토마토</th>
			                    <th class="td-actions">오이</th>
			                    <th class="td-actions">양파</th>
			                    <th class="td-actions">피망</th>
			                    <th class="td-actions">할라피뇨</th>
			                    <th class="td-actions">아보카도</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
              
              <div id="9008" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">아메리칸</th>
			                    <th class="td-actions">모짜렐라</th>
			                    <th class="td-actions">슈레드</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
              
              <div id="9009" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">페퍼로니</th>
			                    <th class="td-actions">에그</th>
			                    <th class="td-actions">치킨</th>
			                    <th class="td-actions">쉬림프</th>
			                    <th class="td-actions">비프</th>
			                    <th class="td-actions">베이컨</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>

              <div id="9010" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">랜치</th>
			                    <th class="td-actions">스위트칠리</th>
			                    <th class="td-actions">올리브오일</th>
			                    <th class="td-actions">머스타드</th>
			                    <th class="td-actions">후추</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
								<td class="td-actions">9</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>


					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
	      		
								<ul class="pagination pagination-sm">
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


  </body>

</html>
