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
			
			<a class="brand" href="admain.hs">
				Sand5rang 관리자				
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
					<a href="admain.hs">
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
                        <li><a href="hyunsikTest2.hs">가맹점 주문처리</a></li>
						<li><a href="hyunsikTest3.hs">공장발주내역</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown active" >					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li class="active"><a href="storeList.sm">가맹점 조회</a></li>
						<li><a href="storeEnrollList.sm">가맹가입신청</a></li>
						<li><a href="annatest3.an">문의 조회</a></li>
                    </ul>    				
				</li>
                
				
				<li>
					<a href="hyunsikTest4.hs">
						<i class="icon-money"></i>
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
	      				<h3>가맹점 전체조회</h3>
	  				</div> <!-- /widget-header -->
					
	
			   <table class="table table-striped table-bordered" align="center">
			       <thead align="center"> 
			          <tr>
			              <th>가맹점명</th>
			              <th>아이디</th>
			              <th>주소</th>
			              <th>번호</th>
			              <th>이메일</th>
			              <th>폐업</th>
			          </tr>
			         </thead>
			          <tbody align="center">
			            
			             <c:forEach var="s" items="${ list }" varStatus="status">
			              <tr>
			                <td>${s.storeName}</td>
			                <td>${s.storeId}</td>
			                <td>${s.address}</td> 
			                <td>${s.phone}</td>
			                <td>${s.email}</td>
			                <td>
			                
			                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#${status.index}">폐업</button>
			                </td>
			              </tr>
			             </c:forEach>  
			             
			              
			     </table>
		        
            <br><br>
            
                <ul class="pagination pagination-sm">
                    
                   <c:choose>
                     <c:when test="${ pi.currentPage eq 1 }">
                        <li class="page-item disabled"><a class="page-link" href="#"><</a></li>
                     </c:when>
                     <c:otherwise>
                        <li class="page-item"><a class="page-link" href="storeList.sm?cpage=${ pi.currentPage - 1 }"><</a></li>
                     </c:otherwise>
                   </c:choose> 
                    
                    
                    <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage}"> 
	                    <li class="page-item"><a class="page-link" href="storeList.sm?cpage=${ p }">${ p }</a></li>
                    </c:forEach>
                    
                    <c:choose>
                      <c:when test="${ pi.currentPage eq pi.maxPage }">
                        <li class="page-item disabled"><a class="page-link" href="#">></a></li>
                      </c:when>
                      <c:otherwise>
                         <li class="page-item"><a class="page-link" href="storeList.sm?cpage=${ pi.currentPage + 1 }">></a></li>
                      </c:otherwise>
                    </c:choose>
                    
                    
                    
                    
                </ul>
         

				

						
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

		<c:forEach var="s" items="${ list }" varStatus="status">
		    <!-- 폐업 버튼 클릭 시 보여질 Modal  -->
		    <div class="modal fade" id="${status.index}">
		        <div class="modal-dialog modal-sm">
		            <div class="modal-content">
		
		                <!-- Modal Header -->
		                <div class="modal-header">
		                    <h4 class="modal-title">폐업</h4>
		                    <button type="button" class="close" data-dismiss="modal">&times;</button>
		                </div>
		
		                <form action="storeclose.sm" method="get">
		                    <!-- Modal body -->
		                    <div class="modal-body">
		                        <div align="center">
		                            폐업 후 복구가 불가능합니다. <br>
		                            정말로 탈퇴 하시겠습니까? <br>
		                        </div>
                         <br>
                         
                         <input type="hidden" name="enrNo" value="${ s.enrNo }">	
                          	         
		                    </div>
		                    <!-- Modal footer -->
		                    <div class="modal-footer" align="center">
		                        <button type="submit" class="btn btn-danger">폐업하기</button>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </div>
		</c:forEach>
  </body>

</html>
