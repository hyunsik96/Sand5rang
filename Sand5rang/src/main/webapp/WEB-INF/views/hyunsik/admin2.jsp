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
							<i class="icon-user"></i> 
							관리자 님
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
					<a href="admain.hs">
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
                        <li><a href="ad1.hs">가맹점 주문처리</a></li>
						<li class="active"><a href="ad2.hs">공장발주내역</a></li>
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
						<li><a href="inqList.an">문의 조회</a></li>
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
	      	
	      	<div class="span12">      		
	      		
	      		<div class="widget widget-table action-table">
	      			
	      			<div class="widget-header">
	      				<i class="icon-indent-right"></i>
	      				<h3>공장발주내역</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content whyunsik">

<c:if test="${!empty list}">

              <table class="table table-striped table-bordered">
                <thead>
                  <tr>
                    <th class="td-actions">날짜</th>
                    <th class="td-actions">BREAD</th>
                    <th class="td-actions">VEGETABLE</th>
                    <th class="td-actions">CHEESE</th>
                    <th class="td-actions">MEAT</th>
                    <th class="td-actions">SAUCE</th>
                  </tr>
                </thead>
              </table>
              
<c:forEach var="aaa" items="${list}" varStatus="status">
    
    <c:forEach var="indent" items="${list[status.index]}" varStatus="status2">
	    <c:if test="${indent.ingNo eq 1}">
			<c:set var="a" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 2}">
			<c:set var="b" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 3}">
			<c:set var="c" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 4}">
			<c:set var="d" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 5}">
			<c:set var="e" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 6}">
			<c:set var="f" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 7}">
			<c:set var="g" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 8}">
			<c:set var="h" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 9}">
			<c:set var="i" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 10}">
			<c:set var="j" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 11}">
			<c:set var="k" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 12}">
			<c:set var="l" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 13}">
			<c:set var="m" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 14}">
			<c:set var="n" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 15}">
			<c:set var="o" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 16}">
			<c:set var="p" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 17}">
			<c:set var="q" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 18}">
			<c:set var="r" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 19}">
			<c:set var="s" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 20}">
			<c:set var="t" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 21}">
			<c:set var="u" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 22}">
			<c:set var="v" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 23}">
			<c:set var="w" value="${indent.count}"/>
		</c:if>
	    <c:if test="${indent.ingNo eq 24}">
			<c:set var="x" value="${indent.count}"/>
		</c:if>
	</c:forEach>
             <table class="table table-striped table-bordered">
                  <tr>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" data-target="#${status.index}1, #${status.index}2, #${status.index}3, #${status.index}4, #${status.index}5">${aaa[0].date}</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#${status.index}1">${a+b+c}</span></td>          
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#${status.index}2">${d+e+f+g+h+i+j}</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#${status.index}3">${k+l+m}</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#${status.index}4">${n+o+p+q+r+s}</span></td>
                    <td class="td-actions"><span class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#${status.index}5">${t+u+v+w+x}</span></td>
                  </tr>
              </table>
	
              <div id="${status.index}1" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">파마산</th>
			                    <th class="td-actions">화이트</th>
			                    <th class="td-actions">플랫</th>
			                    <th class="td-actions"></th>
			                    <th class="td-actions"></th>
			                    <th class="td-actions"></th>
			                    <th class="td-actions"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">${a}</td>
								<td class="td-actions">${b}</td>
								<td class="td-actions">${c}</td>
								<td class="td-actions"></td>
								<td class="td-actions"></td>
								<td class="td-actions"></td>
								<td class="td-actions"></td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>

              <div id="${status.index}2" class="accordion-body collapse">
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
								<td class="td-actions">${d}</td>
								<td class="td-actions">${e}</td>
								<td class="td-actions">${f}</td>
								<td class="td-actions">${g}</td>
								<td class="td-actions">${h}</td>
								<td class="td-actions">${i}</td>
								<td class="td-actions">${j}</td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
              
              <div id="${status.index}3" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">아메리칸</th>
			                    <th class="td-actions">모짜렐라</th>
			                    <th class="td-actions">슈레드</th>
			                    <th class="td-actions"></th>
			                    <th class="td-actions"></th>
			                    <th class="td-actions"></th>
			                    <th class="td-actions"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">${k}</td>
								<td class="td-actions">${l}</td>
								<td class="td-actions">${m}</td>
								<td class="td-actions"></td>
								<td class="td-actions"></td>
								<td class="td-actions"></td>
								<td class="td-actions"></td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
              
              <div id="${status.index}4" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">페퍼로니</th>
			                    <th class="td-actions">에그마요</th>
			                    <th class="td-actions">치킨</th>
			                    <th class="td-actions">쉬림프</th>
			                    <th class="td-actions">비프</th>
			                    <th class="td-actions">베이컨</th>
			                    <th class="td-actions"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">${n}</td>
								<td class="td-actions">${o}</td>
								<td class="td-actions">${p}</td>
								<td class="td-actions">${q}</td>
								<td class="td-actions">${r}</td>
								<td class="td-actions">${s}</td>
								<td class="td-actions"></td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>

              <div id="${status.index}5" class="accordion-body collapse">
	          	<div class="accordion-inner">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
			                    <th class="td-actions">랜치</th>
			                    <th class="td-actions">스위트칠리</th>
			                    <th class="td-actions">올리브오일</th>
			                    <th class="td-actions">머스타드</th>
			                    <th class="td-actions">후추</th>
			                    <th class="td-actions"></th>
			                    <th class="td-actions"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="td-actions">${t}</td>
								<td class="td-actions">${u}</td>
								<td class="td-actions">${v}</td>
								<td class="td-actions">${w}</td>
								<td class="td-actions">${x}</td>
								<td class="td-actions"></td>
								<td class="td-actions"></td>
							</tr>
						</tbody>
	            	</table>
              	</div>
              </div>
</c:forEach>

</c:if>



					</div> <!-- /widget-content -->
<c:if test="${empty list}"><div id="micheuri">공장 발주내역이 없습니다.</div></c:if>
				</div> <!-- /widget -->
				
<c:if test="${!empty list}">     		
<ul class="pagination pagination-sm">
<c:choose>
	<c:when test="${pi.currentPage eq 1}">
	<li class="page-item disabled"><a class="page-link" href="#"><</a></li>
	</c:when>
	<c:otherwise>
	<li class="page-item"><a class="page-link" href="ad2.hs?p=${pi.currentPage - 1}"><</a></li>
	</c:otherwise>
</c:choose>

<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
	<c:if test="${pi.currentPage eq p}">
		<li class="page-item active"><a class="page-link" href="ad2.hs?p=${p}">${p}</a></li>
	</c:if>
	<c:if test="${pi.currentPage ne p}">
		<li class="page-item"><a class="page-link" href="ad2.hs?p=${p}">${p}</a></li>
	</c:if>
</c:forEach>

<c:choose>
	<c:when test="${pi.currentPage eq pi.maxPage}">
	<li class="page-item disabled"><a class="page-link" href="#">></a></li>
	</c:when>
	<c:otherwise>
	<li class="page-item"><a class="page-link" href="ad2.hs?p=${pi.currentPage + 1}">></a></li>
	</c:otherwise>
</c:choose>
</ul>

</c:if>  	
	      		
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    
    
    
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

</html>
