<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="/sand5rang/resources/images/logo.png" type="">

  <title>Sand5rang</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="/sand5rang/resources/css/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="/sand5rang/resources/css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="/sand5rang/resources/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="/sand5rang/resources/css/responsive.css" rel="stylesheet" />

  <!-- google font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script>

<script type="text/javascript">
    $("input[name=chk]").click(function() {
        var total = $("input[class=chk]").length;
        var checked = $("input[class=chk]:checked").length;
        
        if(total != checked) $("#checkbox").prop("checked", false);
        else $("#checkbox").prop("checked", true); 
    });
    
    $(function() {
    	$("#input_text").on('input', function(){
    		if($("input_text").val()=='')
    			${".btn"}.attr("disabled", true);
    		else
    			${".btn"}.attr("")
    			
    	})
    })

</script>

    
</head>
<style>
.sub_page { background-color: rgb(234 234 234);}
.inquiry_wrapper{background-color:rgb(234 234 234); margin:auto; padding:70px 49px; border:1px solid #e8e8e8;}
.subTitle{padding:72px 0 76px !important; margin-bottom:30px; color:#0B571F;}
.subTitle> h2 {font-family: 'Noto Sans KR', sans-serif;}
.h_title {font-family: 'Noto Sans KR', sans-serif; text-align: center; color:#0B571F;}
.button {display:inline-block; background-color: #0b571f; padding:5px 5px; border-radius: 4px;}

.inquiry_wrapper .summary_txt{padding-top:20px; color:#f8f9fa; font-size:16px; line-height:26px;
                              text-align:center; letter-spacing:-0.4px; font-weight:normal;}
.inquiry_wrapper .agree_section {display: flex; justify-content: center;}

/*개인정보수집동의 checkbox*/
.form_checkbox{display:inline-block; cursor:pointer; overflow:hidden; position:relative; vertical-align:middle; color:#292929; font-size:16px; line-height:26px; letter-spacing:-0.05em}
.form_checkbox input[type="checkbox"]{height:0; opacity:0; width:0; position:absolute;}
.form_checkbox { cursor: pointer; overflow: hidden; position: relative; vertical-align: middle; color: #292929; font-size: 14px; line-height: 26px; letter-spacing: -0.02em;}
.form_checkbox em {color: #0B571F; font-style: normal;}
.form_checkbox .icon:before {content: ''; width: 0; height: 20px; background: url(https://www.subway.co.kr/images/common/icon_checkbox.png) 0 0 no-repeat;
                              position: absolute; left: 4px; top: 0; transition-duration: 0.2s;}
.form_checkbox .icon { width: 26px; height: 26px; border: 2px solid #dddddd; border-radius: 50px; display: inline-block; position: relative; vertical-align: top; margin-right: 10px;}
.form_checkbox input[type="checkbox"]:checked+.icon:before {width: 24px;}


           

/*inquiry_weapper*/
.inquiry_wrapper{background-color:#f8f9fa; background-clip: content-box; padding:70px 49px; border:1px solid #e8e8e8; font-family: 'Noto Sans KR', sans-serif;}
.inquiry_wrapper .board_write_wrapper .agree_info{overflow:hidden; padding:25px 0 30px 0; margin:auto; width: 1000px;}
.inquiry_wrapper .board_write_wrapper .agree_info >p{float:left; color:#666666; font-size:16px; font-weight:300; letter-spacing:-0.03em; text-indent:10px;}
.inquiry_wrapper .board_write_wrapper .agree_info >p:after{content:''; background:url(../../../resouces/images/icon_ess.png) no-repeat; width:7px; height:6px; display:inline-block; vertical-align:middle; position:relative; margin-left:4px; top:-2px;}
.inquiry_wrapper .board_write_wrapper .agree_info >.form_checkbox{float:right; top:-5px;}

.inquiry_notice { width:1000px; background: rgb(234 234 234) url(https://www.subway.co.kr/images/common/icon_exc.png) 25px 50% no-repeat; display: flex;color: #999999; 
                  flex-direction: column; justify-content: center; font-size: 13px; margin: auto; margin-top: 20px; padding: 15px 15px 10px 81px;min-height: 52px;}
.inquiry_wrapper .btns_wrapper{position:relative; left:-70px; margin-right:-140px; padding-top:40px;}

 /* board-write*/         
.board_write_wrapper{position:relative; padding: 50px 50px; position: relative; display: flex; flex-direction: column; justify-content: center;}
.board_write_wrapper .rt_note { color: #999999; font-size: 16px; letter-spacing: -0.05em; position: absolute; right: 100px; top: -29px;
    background: url(../../..resorces/images/icon_ess.png) 0 7px no-repeat; padding-right: 40px; }
.board_write_wrapper th{font-weight:300; color:#666666; font-size:16px; height:21px; padding-top:24px; border-bottom:1px solid #e8e8e8; text-align:left; vertical-align:top;}
.board_write_wrapper td{height:45px; padding:12px 0; border-bottom:1px solid #e8e8e8;}
.board_write_wrapper td .file_note{font-size:13px; color:#999999; margin-left:25px;} 
.writeTable {margin-left:auto; margin-right:auto;}
 
.inquiry_wrapper .pd_agree_wrapper{overflow:hidden; margin-bottom:96px;}
.inquiry_wrapper .pd_agree_wrapper .pd_agree{float:left; width:490px;}
.inquiry_wrapper .pd_agree_wrapper .pd_agree:first-child{margin-right:48px;}
.inquiry_wrapper .pd_agree_wrapper .pd_agree h3{color:#666666; font-size:18px; font-weight:300; letter-spacing:-0.05em; padding-bottom:19px;}
.inquiry_wrapper .pd_agree_wrapper .pd_agree .scroll_wrapper{border:2px solid #e5e5e5; height:150px; padding:13px 0 13px 17px; overflow:auto; color:#bbbbbb; font-size:13px; line-height:21px; margin-bottom:14px;}
.inquiry_wrapper .pd_agree_wrapper .pd_agree .scroll_wrapper .mCSB_inside>.mCSB_container{margin-right:17px;}
.inquiry_wrapper .pd_agree_wrapper .pd_agree .scroll_wrapper .mCSB_scrollTools .mCSB_draggerRail{opacity:0 !important}
.inquiry_wrapper .pd_agree_wrapper .pd_agree .scroll_wrapper .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar{width:5px !important; background-color:#dddddd !important}


.inquiry_wrapper .form_select{margin-right:7px;}
.inquiry_wrapper .em{display:inline-block; vertical-align:middle; width:63px; text-align:center; color:#292929; font-size:15px;}
.inquiry_wrapper .board_write_wrapper .agree_info.type01{border-bottom:0;}
.inquiry_wrapper .board_write_wrapper .agree_info.type01 >p {float:none;text-indent:0;}

.form_text input { width: 100%; border: 0; background: #efefef; height: 45px; color: #292929; font-size: 16px; text-indent: 15px }
.board_write_wrapper th { font-weight: 300; color: #666666; font-size: 16px; height: 21px; padding-top: 24px; border-bottom: 1px solid #e8e8e8; text-align: left; vertical-align: top; display: table-cell; }
.board_write_wrapper td { height: 45px; padding: 12px 0; border-bottom: 1px solid #e8e8e8; display: table-cell; vertical-align: inherit;}

.form_text input {width: 100%; border: 0;  background: #efefef; height: 45px; color: #292929; font-size: 16px; text-indent: 15px;}
input {vertical-align: middle; font-family: 'Noto Sans KR', sans-serif;  outline: none;}
.form_textarea textarea {background-color: #efefef; width: 100%; border: 0; font-family: 'Noto Sans KR', sans-serif; font-size: 16px; resize: none;}

/*email-textbox*/
#franchiseEmail {width:350px;}
#authNum {width:350px;}

/*adress selectbox*/
.nice-select .option {cursor: pointer; font-weight: 400; line-height: 40px; list-style: none; min-height: 40px; outline: 0;
    padding-left: 20px; padding-right: 29px; text-align: left; -webkit-transition: all .2s; transition: all .2s;}

.inquiry_wrapper .btn_post_num{position:relative;}
.inquiry_wrapper .btn_post_num a{padding:0 20px;color:#0B571F;letter-spacing:-.4px;font-weight:300;}
.inquiry_wrapper .btn_post_num:before{content:'';position:absolute;top:calc(50% - 8px);left:0;width:2px;height:16px;background-color:#e8e8e8;}
.inquiry_wrapper .post_wrap {margin-bottom:10px;border:2px solid #ddd;width:470px;box-sizing: border-box;}
.inquiry_wrapper .post_wrap .form_text{background-color:#fff;width:340px}

/*button*/
.btns_wrapper{text-align:center; margin-bottom: 50px;}
.btns_wrapper .btn{margin:0 4px;}

p { display: block; margin-block-start: 1em; margin-block-end: 1em; margin-inline-start: 0px; margin-inline-end: 0px; }

</style>
<body class="sub_page">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="/sand5rang">
            <img src="resources/images/logo.png" width="85px" height="80px">
            <span>
              Sand5rang
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="aboutSand.ma">About Sand</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="menu.ma">Menu book</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="menu.html">지사안내</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="joinForm.an">가맹문의</a>
              </li>
            </ul>
            <div class="user_option">
              <a href="login.an" class="order_online">
                Login
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>


<br>

    <div class="inquiry_wrapper">
      
          <div class="subTitle" align="center">
              <h2>가맹 신청ㆍ문의 </h2>
          </div>
          <div class="agree_section">
            <div class="pd_agree_wrapper">
                <!-- 개인정보수집 및 이용동의 -->
               
                  <div class="pd_agree">
                      <h3>개인정보수집 및 이용동의</h3>
                          <div class="scroll_wrapper">
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
                                </div>
                      
                          <div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer">
                          <div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 72px; max-height: 140px; top: 0px;">
                          <div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail">
                          </div></div></div></div></div>
              
                    <!-- checkbox -->
                    <label class="form_checkbox">
                        <input name="agree1" type="checkbox" class="chk" required>
                        <span class="icon"></span>개인정보수집 및 이용에 동의합니다. <em>(필수)</em>
                    </label>
                    <!--// checkbox -->
            </div>
            <!--// 개인정보수집 및 이용동의 -->
            <!-- 개인정보 위탁동의 -->
            <div class="pd_agree">
                <h3>개인정보 위탁동의</h3>
                       
                <div class="scroll_wrapper mCustomScrollbar _mCS_2"><div id="mCSB_2" class="scrollbox" tabindex="0" style="max-height: none;"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
                    회사는 서비스의 향상을 위하여 아래와 같이 외부 전문업체를 통하여 업무를 위탁하여
                    운영하고 있습니다. 위탁 업무를 위해 제공되는 정보는 해당 업무를 위해 필요한 최소
                    한의 정보만 제공됩니다.<br><br>

                    - 데이터 전산 처리 및 유지관리 : Wylie.Co.Ltd, IMT oteSoft Corporation<br>
                    - 결제 처리업체 : Fiserv<br>
                    - 고객 경험 관리 서비스 제공, 샌드오랑 프로그램 및 마케팅 관리 : 샌드오랑 코리아<br>
                    ,IPCA, Simplicity Australasia Ltd<br>
                    - 고객센터 운영 : 씨엔티테크 ㈜<br><br>

                    회사는 고객님의 개인정보를 중요시하며, “정보통신망 이용촉진 및 정보보호＂에 관한
                    법률을 준수하고 있습니다.<br>
                </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: block; height: 120px; max-height: 140px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
                <!--// 20180131 -->
                <!-- checkbox -->
                <label class="form_checkbox">
                    <input name="agree2" type="checkbox" class="chk" required>
                    <span class="icon"></span>개인정보 위탁에 동의합니다. <em>(필수)</em>
                </label>
                <!--// checkbox -->
            </div>
            <!--// 개인정보 위탁동의 -->
          
        </div> <!-- agree_section -->
      </div>

        <h2 class="h_title">문의 작성하기</h2>
        <div class="board_write_wrapper">
        <p class="rt_note">* 필수입력사항<span class="ess"></span></p>
            <table class="writeTable">
                <colgroup>
                    <col width="130px">
                    <col width="*">
                </colgroup>
                <tbody>
                      <tr>
                          <th scope="col">이름 *<span class="ess"></span></th>
                          <td>
                              <span class="form_text" style="width:100%">
                                  <input type="text" maxlength="5" name="storeName" placeholder="이름을 입력해주세요" value="" required>
                              </span>
                          </td>
                      </tr>
                      <tr>
                          <th scope="col">연락처 *<span class="ess"></span></th>
                          <td>
                              <span class="form_text" style="width:100%">
                                  <input maxlength="11" name="phone" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="연락 가능한 전화번호를 입력해주세요" type="text" value="" required>
                              </span>
                          </td>
                      </tr>
                      <tr>
                          <th scope="col">이메일 * <span class="ess"></span></th>
                          <td>
                              <span class="form_text" style="width:200px">
                                  <input id="franchiseEmail" maxlength="50" name="email" onkeyup="" placeholder="이메일을 입력하세요" type="email" value="" required>
                                  <button class="button btn btn-success btn-large">인증번호 발송</button><br>
                            </span><br>

                              <span class="form_text" style="width:200px">
                                  <!--<input type="text" name="email2" id="franchiseEmail2" maxlength="50" onkeypress="view.onchangeEmailDomail(); return true;" onkeyup="subwayCommon.inputEmail(this);" th:value="${email2}"/>-->
                                  <input id="authNum" maxlength="8" name="authNum" type="text" placeholder="인증번호를 입력하세요" value="" required>
                                  <button class="button btn btn-success btn-large">인증번호 확인</button>
                                </span>
                              <div class="form_select" style="width:196px; margin-left:7px;">
                              </div>
                          </td>
                      </tr>
                      <tr>
                          <th scope="col">지역 * <span class="ess"></span></th>
                          <td>
                              <div class="form_select" style="width:120px; display: inline-block;">
                                  <select name="region1">
                                      <option value="">시/도</option>
                                      <option value="001">서울특별시</option>
                                  </select>
                              </div>
                              <div class="form_select" id="select2" style=" display: inline-block;">
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
                          <th scope="col">제목 * <span class="ess"></span></th>
                          <td>
                              <span class="form_text" style="width:100%">
                                  <input maxlength="50" name="subject" placeholder="제목을 입력해주세요" type="text" value="" required>
                              </span>
                          </td>
                      </tr>
                      <tr>
                          <th scope="col">내용 *<span class="ess"></span></th>
                          <td>
                              <span class="form_textarea" style="width:100%";>
                                  <textarea cols="5" maxlength="1000" name="content" placeholder="가맹점 신청과 관련된 문의사항을 작성해 주세요.
문의하실 내용을 구체적으로 작성해 주시면 더욱 빠르고 정확한 답변을 드릴 수 있습니다." rows="10" style="width:900px; height:300px;" required>
                                  </textarea>
                              </span>
                          </td>
                      </tr>   
                </tbody>
            </table>

            <div class="agree_info">
                <p>신청·문의사항에 대한 답변은 메일로 발송됩니다. 동의하시겠습니까?</p>
                <!-- checkbox -->
                <label class="form_checkbox">
                    <input name="agree3" type="checkbox" required>
                    <span class="icon"></span> 동의합니다.
                </label>
                <!--// checkbox -->
            </div>

            <div class="inquiry_notice">
                <ul>
                    <li> 문의가 집중되거나 주말의 경우 답변이 지연될 수 있습니다. 최대한 빠르게 답변 드리도록 하겠습니다.</li>
                    <li> 욕설, 비속어, 비방성 등의 부적절한 단어 포함되어 있는 경우, 답변 진행이 어려울 수 있습니다.</li>
                </ul>
            </div>
          </div>


        <div class="btns_wrapper">
        	<button  class="btn" onclick="clickBack(); history.back();"><span>취소</span></button>
            <button class="btn btn-success" onclick="clickSubmit(); location.href='joinForm2.an'"><span>등록하기</span></button>
        </div>
        
        <script>
			function clickBack(){
				alert('작성한 내용은 저장되지 않습니다. 취소 하시겠습니까?');
			}
			
			function clickSubmit(){
				alert('등록하시겠습니까?');
			}
			</script>
       </div> 
  

  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <div class="row">
        <div class="col-md-4 footer-col">
          <div class="footer_contact">
            <h4>
              Contact Us
            </h4>
            <div class="contact_link_box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call 02) 807-4421 
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Sand5rang@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <div class="footer_detail">
            <a href="" class="footer-logo">
              Sand5rang
            </a>
            <p>
              Korea tradition Sandwich Franchise Sand5rang 
            </p>
            <div class="footer_social">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-pinterest" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <h4>
            Opening Hours
          </h4>
          <p>
            Everyday
          </p>
          <p>
            10.00 Am -10.00 Pm
          </p>
        </div>
      </div>
      <div class="footer-info">
        <p>
          &copy; <span id="displayYear"></span> All Rights Reserved By
          <a href="https://html.design/">Sand5rang</a><br><br>
          &copy; <span id="displayYear"></span> Distributed By
          <a href="https://themewagon.com/" target="_blank">Sand5rang</a>
        </p>
      </div>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="/sand5rang/resources/js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script src="/sand5rang/resources/js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- isotope js -->
  <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
  <!-- custom js -->
  <script src="/sand5rang/resources/js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
  <!-- End Google Map -->

</body>

</html>