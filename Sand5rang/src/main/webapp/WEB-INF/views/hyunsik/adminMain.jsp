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
                        <li><a href="ad1.hs">가맹점 주문처리</a></li>
						<li><a href="ad2.hs">공장발주내역</a></li>
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
					<a href="ad3.hs">
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
        <div class="span6">
          <!-- /widget -->
          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3>미처리 작업 현황</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div class="widget big-stats-container">
                <div class="widget-content">
                  <div id="big_stats" class="cf">
                    <div class="stat"> <div>주문</div> <a href="ad1.hs" class="aTag"><span class="value">&nbsp;${m.adInd}&nbsp;</span></a> </div>
                    <!-- 가맹점주들에게 받은 미처리 주문 총 수 -->
                    
                    <div class="stat"> <div>전날발주</div><a href="ad2.hs" class="aTag"><span class="value">&nbsp;${m.adFac}&nbsp;</span></a> </div>
                    <!-- 전날 공장으로 자동발주한 원재료 총 수 -->
                    
                    <div class="stat"> <div>가맹신청</div> <a href="storeEnrollList.sm" class="aTag"><span class="value">&nbsp;${m.adEnr}&nbsp;</span></a> </div>
                    <!-- 미처리 가맹신청 수 -->
                    
                    <div class="stat"> <div>문의글</div><a href="ad1.hs" class="aTag"> <span class="value">&nbsp;${m.adInq}&nbsp;</span></a> </div>
                    <!-- 미답변 문의글 수 --> 
                  </div>
                </div>
              </div>
            </div>
            <!-- /widget-content --> 
          </div>
          
          <div class="widget">
              <div class="widget-header">
                  <i class="icon-bar-chart"></i>
                  <h3>
                      총 매출 현황</h3>
              </div>
              <!-- /widget-header -->
              <div class="widget-content">
                  <canvas id="area-chart" class="chart-holder" width="538" height="250">
                  </canvas>
                  <!-- /line-chart -->
              </div>
              <!-- /widget-content -->
          </div>
          
          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3>8월 홍보 예정 이미지</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
<img src="resources/images/ingredient/8.png" style="width:100%; height:100%">
            </div>
          </div>

        </div>
        <!-- /span6 -->
        <div class="span6">


          <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3>샌드위치 관련 최근 기사</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <ul class="news-items">
	          <c:forEach var="t" items="${title}" begin="0" end="5" varStatus="status">
                <li>
                  <div class="news-item-date"> ${image[status.index*2+1]}> </div>
                  <div class="news-item-detail"><div class="gustlr"><a>${t}</div>
                    <p class="news-item-preview">${content[status.index]}</a></p>
                  </div>
                </li>
              </c:forEach>
              </ul>
            </div>
            <!-- /widget-content --> 
          </div>
          <!-- /widget -->
        </div>
        <!-- /span6 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
    
    
    
 
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
<script>

var lineChartData = {
        labels: ["${ch.day7}", "${ch.day6}", "${ch.day5}", "${ch.day4}", "${ch.day3}", "${ch.day2}", "${ch.day1}"],
        datasets: [
			{
			    fillColor: "rgba(151,187,205,0.5)",
			    strokeColor: "rgba(151,187,205,1)",
			    pointColor: "rgba(151,187,205,1)",
			    pointStrokeColor: "#fff",
			    data: [${ch.count7}, ${ch.count6}, ${ch.count5}, ${ch.count4}, ${ch.count3}, ${ch.count2}, ${ch.count1}]
			}
		]

    }

    var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);
    
</script>

  </body>

</html>
