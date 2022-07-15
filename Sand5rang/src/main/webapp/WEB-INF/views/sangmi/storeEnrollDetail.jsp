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
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



    
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
			
				<li class="active">
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
				
				<li class="dropdown">					
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>가맹점 관리</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="storeList.sm">가맹점 조회</a></li>
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
	      				<h3>가맹가입신청 상세페이지</h3>
	  				</div> <!-- /widget-header -->
	

  
    <a class="btn btn-secondary" style="float:right;" href="storeEnrollList.sm">목록으로</a>
    <br><br><br>
  
  
    <table class="type05" style="margin:auto;"> 
           <tr>
               <th scope="row">이름</th>
               <td>${e.storeName}</td>
           </tr>  
           <tr>
             <th scope="row">연락처</th>
             <td>${e.phone}</td>
           </tr>  
           <tr>
             <th scope="row">이메일</th>
             <td>${e.email}</td> 
           </tr>
           <tr>
             <th scope="row">지역</th>
             <td>${e.enrollAdd}</td>
           </tr>
           <tr>
             <th scope="row">제목</th>
             <td>${e.title}</td>
           </tr>
           <tr>
             <th scope="row">내용</th>
             <td>${e.content}</td>
           </tr>   
      </table>
    
    <hr border="1px solid lightgrey;">

    


     <form id="enrollForm" class="" method="post" action="insertStore.sm" align="left" style="margin:auto; width:600px; border:1px solid lightgrey" >
        <div class="form-group" >
            <input type="hidden" name="contact_number">

          <label for="userName">* 가맹점 명 : </label>
          <input type="text" class="form-control" id="storeName" name="storeName" placeholder="가맹점 이름을 써주세요." style="width:400px;"><br>
               
          
          <label for="userId">* 가맹점 아이디 : </label>
          <input type="text" class="form-control" id="storeId" name="storeId" placeholder="가맹점 아이디를 써주세요." style="width:400px;"><br>
          <div id="checkResult" style="font-size:0.8em; display:none;"></div>     
      
          <label for="userPwd">* 가맹점 비밀번호 : </label>
          <input type="password" class="form-control" id="storePwd" name="storePwd" placeholder="가맹점 비밀번호를 써주세요." style="width:400px;"><br>
           
          <label for="address">* 가맹점 주소 : 
          <input type="text" class="form-control" id="address_kakao" name="address" placeholder="가맹점  주소 클릭!" style="width:400px;" >
                     <!--  상세주소:<input type="text" name="address_detail" />-->
        </label>
          <label for="content">^ 내용 : </label>
          <textarea class="form-control" id="content" name="message" placeholder="가맹점 승인 혹은 반려이유를 써주세요." style="width:400px; height:100px; resize:none;"></textarea><br> 
        
        </div>
          
      
        <br>

        <div align="right">
         
            <input type="hidden" name="enrNo" value="${ e.enrNo }">
   
            <button type="submit" class="btn btn-primary" >확인</button>
            <!-- <button type="submit" class="btn btn-danger">반려</button> -->
        </div>
    </form>

	       <script>
          $(function() {
        	  
        	  //아이디를 입력하는 input 요소 객체 자체를 변수에 담아두기
        	  var $idInput = $("#enrollForm input[name=storeId]");
        	  
        	  $idInput.keyup(function() {
        		 
        		 // 우선 최소5글자 이상으로 입력되어야지만 ajax를 요청 할 수 있게끔 막아주기
        		 if($idInput.val().length >= 6){
        			 
        			 $.ajax({
        				 url : "idCheck.sm",
        				 data : {checkId : $idInput.val()},
        				 success : function(result) {
        					 
        					 if(result == "NNNNN"){ //사용 불가능
        						 
        						 // 빨간색 메세지(사용불가능) 출력
        						 $("#checkResult").show();
        					     $("#checkResult").css("color","red").text("중복된 아이디가 존재합니다. 다시 입력해주세요.");
        						 
        					     // 회원가입버튼 비활성
        					     $("#enrollForm :submit").attr("disabled",true);
        					     
        					 }
        					 else{ //사용 가능
        						 
        						 //초록색 메세지(사용가능) 출력
        						 $("#checkResult").show();
        					     $("#checkResult").css("color","green").text("멋진 아아디네요!");
        						 
        					     //회원가입버튼 활성
        					     $("#enrollForm :submit").attr("disabled",false);
        					     
        					 }
        					 
        				 },
        				 error : function() {
        					 console.log("아이디 중복 체크용 ajax 통신 실패!");
        				 }
        			 });
        			 
        		 }
        		 else{ //6글자 미만일때 => 회원가입버튼 비활성, 메세지 숨기기
        			 
        			 $("#checkResult").hide();
        		     $("#enrollForm :submit").attr("disabled",true);
        			 
        		 }
        		 
        	  });
        	  
          });   
        </script>
        
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		window.onload = function(){
		    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("address_kakao").value = data.address; // 주소 넣기
		                //document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
		            }
		        }).open();
		    });
		}
		</script>

	
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
