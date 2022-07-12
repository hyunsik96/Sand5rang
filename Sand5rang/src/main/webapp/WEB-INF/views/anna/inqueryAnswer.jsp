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
	      				<h3>문의 게시판 : 답변하기</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">
					

<br>
		<div class="wrap">
			
			<div class="content">
		
				<!--content 영역-->
				<div class="content_detail">

				<!--가맹점이 작성한 문의 제목-->
                <div class="inq_title"> 
                  	<div style="padding-bottom:5px; margin-left:10px;"><h1>채소류 발주에 대한 문의 드립니다.</h1></div>
                  
                       	<!--작성글 세부 정보 및 답변 상태-->
                       	<div class="inq_info">
                            <div style="display:inline-block; padding-right:10px; font-size:15px;margin-left:10px; ">카테고리</div>
                            <div style="display:inline-block; padding-right:10px; font-size:15px;">청계천점 </div>
                            <div style="display:inline-block; padding-right:10px; font-size:15px;">22.06.26</div>
                            <div style="display:inline-block; padding-right:10px; font-size:15px;">답변상태</div>
                            <div style="display:inline-block; font-size:15px;">답변완료</div>
                        </div><br>
                </div>
					</div>

					<!--가맹점이 작성한 문의 본문-->
					<div class="inq_content"> 
						<pre>
안녕하세요 샌드오랑 청계천점입니다.
현재 채소류 발주시 40개 이상은 발주가 되지 않는데 어떤 문제가 있는건가요? 현재 채소류 발주시 40개 이상은 발주가 되지 않는데 어떤 문제가 있는건가요?
공지채널에서도 확인 할 수 없어 문의를 먼저 남깁니다 빠른 답변 부탁드립니다. 공지채널에서도 확인 할 수 없어 문의를 먼저 남깁니다.
현재 채소류 발주시 40개 이상은 발주가 되지 않는데 어떤 문제가 있는건가요? 발주가 되지 않는데 어떤 문제가 있는건가요?
공지채널에서도 확인 할 수 없어 문의를 먼저 남깁니다 빠른 답변 부탁드립니다.

 현재 채소류 발주시 40개 이상은  공지채널에서도 확인 할 수 없어 문의를 먼저 남깁니다 빠른 답변 부탁드립니다.

 현재 채소류 발주시 40개 이상은 발주가 되지 않는데 어떤 문제가 있는건가요?
공지채널에서도 확인 할 수 없어 문의를 먼저 남깁니다 빠른 답변 부탁드립니다.</pre>
					</div>

				</div><br>
				
				<!--관리자 답변 부분-->

				<div class="inq_answer" align="center">
					<textarea style="width:800px; height:400px; resize: none; color:grey;" placeholder="답변내용을 입력하세요.">
					</textarea>
				</div><br>
				
				<div align="center">
					<button type="submit" class="btn btn-primary btn-large">등록하기</button>
					<button type="reset" onClick="history.back();" class="btn btn-large">취소하기</button>
				</div>
			
			</div>
		
		</div>


						
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
