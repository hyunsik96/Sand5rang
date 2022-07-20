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
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${alertMsg}");
		</script>
		<!-- 일회성 알람 메세지 session scope에 있는 alertMsg 삭제해주기 -->
		<c:remove var="alertMsg" scope="session"/>
	 </c:if> 
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
						<a href="fr1.hs" class="dropdown-toggle">
							<i class="icon-money"></i>&nbsp;
							잔액 : ${m.frPay} 원
							
						</a>
					
					</li>
			
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i>
							${loginstore.storeName}
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
						<li><a href="ingredientStock1.csh">재료별 재고현황</a></li>
						<li><a href="ingredientAllStock.csh">전체 재고현황</a></li>
						<li><a href="ingredientDisposal1.csh">폐기현황</a></li>
                    </ul>    				
				</li>
				
				<li class="dropdown">					
					<a href="orderEnroll.se" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-long-arrow-down"></i>
						<span>발주</span>
						<b class="caret"></b>
					</a>	
				
					<ul class="dropdown-menu">
                        <li><a href="orderEnrollForm.se">발주신청</a></li>
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
                        <li><a href="fr1.hs">대금내역</a></li>
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
	      		
	      		<div class="widget " style="width:1200px">
	      			
	      			<div class="widget-header">
	      				<i class="icon-user"></i>
	      				<h3>제품 판매 현황</h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">

<!-- 여기가 content 채우는 영역입니다 - 현식 -
	추가적으로, 각종  그림으로 표현된 아이콘들은 기존의 파일을 html로 각자 펴서 페이지들을 돌아다니며 class명을 통해 i 태그 속의 이미지 변경과 css 적용이 가능합니다.
	각자 views 폴더에 있는 본인의 폴더에서만 작업하며 마찬가지로 resources 폴더의 member 폴더의 본인의 폴더의 css 및 script를 변경합니다.
	가급적 모든 페이지의 css 는 css 파일을 통해 적용하는 것으로 연습해봅시다.
-->
	<!-- 가게 마감 시간에 제품이 실제로 판매가 이루어졌다고 가정하고 해당 리스트에 오늘판매된 제품 목록을 기입해줌. -->
<c:if test="${!empty sales_list1 }">
	<table class="table table-bordered">
		<thead>
			<tr class="st_head">
				<th>판매날짜</th>
				<th>총판매개수</th>
				<th>총매출액</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="sales" items="${sales_list1}" varStatus="status">
			<tr class="st_body">
				<td>${sales.salDate}</td>
				<td><a data-toggle="modal" href="#Modal${status.count}">${sales.count}</a></td>
				<td>${sales.total}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>	
<c:if test="${empty sales_list1 }">
	<div align="center" style="color:red;">현재 판매된 내역이 존재하지 않습니다.</div>
</c:if>
					</div> <!-- /widget-content -->
	<a href="salesPage0.csh" class="btn btn-success" style="display:inline-block; margin-left:82%; width:160px;">판매기입 페이지로 이동</a>				
				</div> <!-- /widget -->
				
				
		<!-- /widget-content -->
<c:if test="${!empty sales_list1}">
<ul class="pagination pagination-sm">
	<c:choose>
		<c:when test="${pi.currentPage eq 1}">
		<li class="page-item disabled"><a class="page-link" href="#"><</a></li>
		</c:when>
		<c:otherwise>
		<li class="page-item"><a class="page-link" href="menuSales.csh?p=${pi.currentPage - 1}"><</a></li>
		</c:otherwise>
	</c:choose>

	<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
		<c:if test="${pi.currentPage eq p}">
			<li class="page-item active"><a class="page-link" href="menuSales.csh?p=${p}">${p}</a></li>
		</c:if>
		<c:if test="${pi.currentPage ne p}">
			<li class="page-item"><a class="page-link" href="menuSales.csh?p=${p}">${p}</a></li>
		</c:if>
	</c:forEach>

	<c:choose>
		<c:when test="${pi.currentPage eq pi.maxPage}">
		<li class="page-item disabled"><a class="page-link" href="#">></a></li>
		</c:when>
		<c:otherwise>
		<li class="page-item"><a class="page-link" href="menuSales.csh?p=${pi.currentPage + 1}">></a></li>
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

	<!-- The Modal -->
<c:forEach var="s" items="${menu_list}" varStatus="status">
	<div class="modal" id="Modal${status.count}" style="display: none;">
		<div class="modal-dialog">
		  <div class="modal-content">	 
	  
		  <!-- Modal Header -->
		  <div class="modal-header">
			  <h4 class="modal-title">날짜별 메뉴 판매 현황</h4>
		  </div> 
		  
		  <!-- 해당 날짜에 어떤 메뉴가 판매되었는지 목록을 보여줌. -->
		  <!-- Modal body -->
		  <div class="modal-body">
				<table>
					<tr class="menuModal">
						<td>	
							<span>에그마요</span><br>
							<c:if test="${s[0].menNo eq 1}">
								<span>${s[0].count}</span>
							</c:if>
						</td>
						<td>
							<span>로스트치킨</span><br>
							<c:if test="${s[1].menNo eq 2}">
								<span>${s[1].count}</span>
							</c:if>
						</td>
						<td>
							<span>쉬림프</span><br>
							<c:if test="${s[2].menNo eq 3 }">
								<span>${s[2].count}</span>
							</c:if>
						</td>
						<td>
							<span>베지</span><br>
							<c:if test="${s[3].menNo eq 4}">
								<span>${s[3].count}</span>
							</c:if>
						</td>																								
						<td>
							<span>베지아보카도</span><br>
							<c:if test="${s[4].menNo eq 5 }">
								<span>${s[4].count}</span>
							</c:if>
						</td>
					</tr>
					<tr class="menuModal">
						<td>
							<span>스테이크치즈</span><br>
							<c:if test="${s[5].menNo eq 6 }">
								<span>${s[5].count}</span>
							</c:if>
						</td>
						<td>
							<span>로스트치킨아보카도</span><br>
							<c:if test="${s[6].menNo eq 7 }">
								<span>${s[6].count}</span>
							</c:if>
						</td>
						<td>
							<span>비엘티</span><br>
							<c:if test="${s[7].menNo eq 8 }">
								<span>${s[7].count}</span>
							</c:if>
						</td>
						<td>
							<span>풀드포크바비큐</span><br>
							<c:if test="${s[8].menNo eq 9 }">
								<span>${s[8].count}</span>
							</c:if>
						</td>
						<td>
							<span>치킨데리야끼</span><br>
							<c:if test="${s[9].menNo eq 10 }">
								<span>${s[9].count}</span>
							</c:if>
						</td>	
					</tr>
					<tr class="menuModal">
						<td>
							<span>터키베이컨아보카도</span><br>
							<c:if test="${s[10].menNo eq 11 }">
								<span>${s[10].count}</span>
							</c:if>
						</td>
						<td>
							<span>로티세리바비큐치킨</span><br>
							<c:if test="${s[11].menNo eq 12 }">
								<span>${s[11].count}</span>
							</c:if>
						</td>
						<td>
							<span>이탈리안비엠티</span><br>
							<c:if test="${s[12].menNo eq 13 }">
								<span>${s[12].count}</span>
							</c:if>
						</td>
						<td>
							<span>K-바비큐</span><br>
							<c:if test="${s[13].menNo eq 14 }">
								<span>${s[13].count}</span>
							</c:if>
						</td>
						<td>
							<span>스파이시이탈리안</span><br>
							<c:if test="${s[14].menNo eq 15 }">
								<span>${s[14].count}</span>
							</c:if>
						</td>	
					</tr>																														
				</table>	
		  </div>

		  <!-- Modal footer -->
		  <div class="modal-footer">
			  <button type="button" class="btn btn-success" data-dismiss="modal" onclick="closeModal();">닫기</button>
		  </div>  
	  </div>
	</div>
  </div>
</c:forEach>		  

  </body>

</html>
