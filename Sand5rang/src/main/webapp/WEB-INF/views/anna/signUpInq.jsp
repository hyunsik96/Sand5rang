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
	      				<h3></h3>
	  				</div> <!-- /widget-header -->
					
					<div class="widget-content">

<br>


    <div class="inquiry_wrapper">
        <div class="subTitle" align="center">
            <h1>가맹 신청ㆍ문의 </h1>
        </div>

        <div class="pd_agree_wrapper">
            <!-- 개인정보수집 및 이용동의 -->
            <div class="pd_agree">
                <h3>개인정보수집 및 이용동의</h3>
                <div class="scroll_wrapper m">
                    <div id="mCSB_1" class="scrollbox" 
                        style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container" 
                        style="position:relative; top:0; left:0;">
                    ■ 개인정보의 수집 및 이용목적<br>
                    서비스 이용에 따른 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달
                    (민원처리를 위해 해당 매장 및 매장 담당 지사에 성함 및 연락처가 전달될 수 있음을
                    알려드립니다.)<br><br>

                    ■ 개인정보의 수집 항목<br>
                    이름,이메일,연락처 및 개인정보처리방침에서 명시한 자동으로 수집되는 정보<br><br>

                    ■ 개인정보의 보유 및 이용기간<br>
                    원칙적으로, 개인정보 수집 및 이용목적이 달성된 후(회원 탈퇴 등)에는 귀하의 개인정보를 지체 없이 파기합니다. 단,관계법령의 규정에 의하여 보존할
                    필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.<br>
                    - 서비스이용기록, 접속로그, 접속IP정보 : 3개월 (통신비밀보호법)<br>
                    - 표시/광고에 관한 기록 : 6개월 (전자상거래법등에서의 소비자보호에 관한 법률)<br>
                    - 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래법등에서의 소비자보호에 관한 법률)<br>
                    - 대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래법등에서의 소비자보호에 관한 법률)<br>
                    - 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래법등에서의 소비자보호에 관한 법률)<br>
                </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 72px; max-height: 140px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                <!--// 20180131 -->
                <!-- checkbox -->
                <label class="form_checkbox">
                    <input name="agree1" type="checkbox">
                    <span class="icon"></span>개인정보수집 및 이용에 동의합니다. <em>(필수)</em>
                </label>
                <!--// checkbox -->
            </div>
            <!--// 개인정보수집 및 이용동의 -->
            <!-- 개인정보 위탁동의 -->
            <div class="pd_agree">
                <h3>개인정보 위탁동의</h3>
                            <!-- 20180131 -->
                <div class="scroll_wrapper mCustomScrollbar _mCS_2"><div id="mCSB_2" class="scrollbox" tabindex="0" style="max-height: none;"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
                    회사는 서비스의 향상을 위하여 아래와 같이 외부 전문업체를 통하여 업무를 위탁하여
                    운영하고 있습니다. 위탁 업무를 위해 제공되는 정보는 해당 업무를 위해 필요한 최소
                    한의 정보만 제공됩니다.<br><br>

                    - 데이터 전산 처리 및 유지관리 : Wylie.Co.Ltd, IMT Soft Corporation<br>
                    - 결제 처리업체 : Fiserv<br>
                    - 고객 경험 관리 서비스 제공, 써브카드 프로그램 및 마케팅 관리 : 써브카드 코리아<br>
                    ,IPCA, Simplicity Australasia Ltd<br>
                    - 고객센터 운영 : 씨엔티테크 ㈜<br><br>

                    회사는 고객님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호＂에 관한
                    법률을 준수하고 있습니다.<br>
                </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 120px; max-height: 140px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                <!--// 20180131 -->
                <!-- checkbox -->
                <label class="form_checkbox">
                    <input name="agree2" type="checkbox">
                    <span class="icon"></span>개인정보 위탁에 동의합니다. <em>(필수)</em>
                </label>
                <!--// checkbox -->
            </div>
            <!--// 개인정보 위탁동의 -->
        </div><hr>

        <h2 class="h_title">문의 작성하기</h2>
        <div class="board_write_wrapper"></div>
        <p class="rt_note">필수입력사항<span class="ess"></span></p>
            <table>
                <colgroup>
                    <col width="130px">
                    <col width="*">
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="col">이름<span class="ess"></span></th>
                        <td>
                            <span class="form_text" style="width:100%">
                                <!-- #210416 이름, 연락처, 이메일 readonly 추가 요청 -->
                                <input maxlength="10" name="writer" placeholder="이름을 입력해주세요" type="text" value="">
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">연락처<span class="ess"></span></th>
                        <td>
                            <span class="form_text" style="width:100%">
                                <!-- #210416 이름, 연락처, 이메일 readonly 추가 요청 -->
                                <input maxlength="15" name="contact" onkeyup="" placeholder="연락 가능한 전화번호를 입력해주세요" type="text" value="">
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">이메일<span class="ess"></span></th>
                        <td>
                            <span class="form_text" style="width:200px">
                                <input id="franchiseEmail1" maxlength="50" name="email1" onkeyup="" placeholder="이메일" type="text" value="">
                            </span>
                            <span class="em">@</span>
                            <span class="form_text" style="width:200px">
                                <!--<input type="text" name="email2" id="franchiseEmail2" maxlength="50" onkeypress="view.onchangeEmailDomail(); return true;" onkeyup="subwayCommon.inputEmail(this);" th:value="${email2}"/>-->
                                <input id="franchiseEmail2" maxlength="50" name="email2" type="text" readonly="readonly" value="">
                            </span>
                            <div class="form_select" style="width:196px; margin-left:7px;">
                                <!-- #210416 이름, 연락처, 이메일 readonly 추가 요청 -->
                                <select id="emailDomain" name="dmain" onchange="view.domain();" readonly="readonly">
                                    <option value="" disabled="">직접입력</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="hanmail.net" disabled="">hanmail.net</option>
                                    <option value="hotmail.com" disabled="">hotmail.com</option>
                                    <option value="nate.com" disabled="">nate.com</option>
                                    <option value="empas.com" disabled="">empas.com</option>
                                    <option value="dreamwiz.com" disabled="">dreamwiz.com</option>
                                    <option value="lycos.co.kr" disabled="">lycos.co.kr</option>
                                    <option value="korea.com" disabled="">korea.com</option>
                                    <option value="gmail.com" disabled="">gmail.com</option>
                                    <option value="hanmir.com" disabled="">hanmir.com</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">지역<span class="ess"></span></th>
                        <td>
                            <div class="form_select" style="width:196px;">
                                <select name="region1">
                                    <option value="">시/도</option>
                                    <option value="001">서울특별시</option>
                                </select>
                            </div>
                            <div class="form_select" id="select2" style="width:196px;">
                                <select name="region2">
                                    <option value="">시/군/구</option>
                                        <option value="001">강남구</option>
                                        <option value="002">강동구</option>
                                        <option value="003">강북구</option>
                                        <option value="004">강서구</option>
                                        <option value="005">관악구</option>
                                        <option value="006">광진구</option>
                                        <option value="007">구로구</option>
                                        <option value="008">금천구</option>
                                        <option value="009">노원구</option>
                                        <option value="010">도봉구</option>
                                        <option value="011">동대문구</option>
                                        <option value="012">동작구</option>
                                        <option value="013">마포구</option>
                                        <option value="014">서대문구</option>
                                        <option value="015">서초구</option>
                                        <option value="016">성동구</option>
                                        <option value="017">성북구</option>
                                        <option value="018">송파구</option>
                                        <option value="019">양천구</option>
                                        <option value="020">영등포구</option>
                                        <option value="021">용산구</option>
                                        <option value="022">은평구</option>
                                        <option value="023">종로구</option>
                                        <option value="024">중구</option>
                                        <option value="025">중랑구</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">제목<span class="ess"></span></th>
                        <td>
                            <span class="form_text" style="width:100%">
                                <input maxlength="50" name="subject" placeholder="제목을 입력해주세요" type="text" value="">
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="col">내용<span class="ess"></span></th>
                        <td>
                            <span class="form_textarea" style="width:100%" placeholder="none";>
                                <textarea cols="5" maxlength="1000" name="content" placeholder="가맹점 신청과 관련된 문의사항을 작성해 주세요. 
    문의하실 내용을 구체적으로 작성해 주시면 더욱 빠르고 정확한 답변을 드릴 수 있습니다." rows="10" style="width:600px; height:230px;"></textarea>
                            </span>
                        </td>
                    </tr>   
                </tbody>
            </table>

            <div class="agree_info">
                <p>신청·문의사항에 대한 답변은 메일로 발송됩니다. 동의하시겠습니까?</p>
                <!-- checkbox -->
                <label class="form_checkbox">
                    <input name="agree3" type="checkbox">
                    <span class="icon"></span> 동의합니다.
                </label>
                <!--// checkbox -->
            </div>

            <div class="inquiry_notice">
                <ul>
                    <li>· 문의가 집중되거나 주말의 경우 답변이 지연될 수 있습니다. 최대한 빠르게 답변 드리도록 하겠습니다.</li>
                    <li>· 욕설, 비속어, 비방성 등의 부적절한 단어 포함되어 있는 경우, 답변 진행이 어려울 수 있습니다.</li>
                </ul>
            </div><hr>


        <div class="btns_wrapper">
            <a class="btn" href="#" onclick="view.cancel();return false;" style="width:126px;"><span>취소</span></a>
            <a class="btn" href="#" onclick="view.save();return false;" style="width:170px;"><span>등록하기</span></a>
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
