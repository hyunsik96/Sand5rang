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

  
</head>
<style>

	.input-box{position:relative; margin:10px 0;}
	.input-box > input{background:transparent; border:none; border-bottom: solid 1px #ccc; padding:20px 0px 5px 0px; font-size:14pt; width:100%;}
              input::placeholder{color:transparent;}
              input:placeholder-shown + label{color:#aaa; font-size:12pt; top:15px;}
              input:focus + label, label{color:#8aa1a1; font-size:10pt; pointer-events: none; position: absolute; left:0px; top:0px;
                transition: all 0.2s ease ; -webkit-transition: all 0.2s ease; -moz-transition: all 0.2s ease; -o-transition: all 0.2s ease;}
			  input:focus, input:not(:placeholder-shown){ border-bottom: solid 1px #8aa1a1;outline:none;}
              input[type=submit]{background-color: #8aa1a1; border:none; color:white; 
              					 border-radius: 5px; width:100%; height:35px; font-size: 14pt; margin-top:100px;}
	#forgot{text-align: right; font-size:12pt; color:rgb(164, 164, 164); margin:10px 0px;}
            
	.login-fields> h3 {text-align:left; font-family: 'Noto Sans KR', sans-serif;}
	.login-fields> p {font-family: 'Noto Sans KR', sans-serif;}
	
	.login-box { margin:auto; width:500px; height: 550px; border-radius: 5px; background: rgba(255, 255, 255, 0.5); }
	
	.sub_page { background-color: rgb(234 234 234);}
  .input-box> p { color:grey; font-size:10px; text-align: left; margin-bottom: 30px; margin-top: 20px;}

  .content { padding-top: 30px; }
  .changePw{ margin-bottom: 20px; align:left;}
  .login-actions { text-align:left; font-size: 14px; margin-bottom: 20px;}
  .button {background-color: #0b571f; padding:10px 150px; border-radius: 4px;}
  
            


</style>


<body class="sub_page">


  <div class="hero_area">
   

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
                <a class="nav-link" href="branch.ma">지사안내</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="joinForm.an">가맹문의</a>
              </li>
            </ul>
            <div class="user_option">
              <a href="login.me" class="order_online">
                 Login
              </a>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>


<!--  비밀번호 찾기 폼      -->
			<div class="account-container" style="margin-bottom: 200px; margin-top : 200px">
				<div class="login-box"><!-- 가운데 화이트 박스 만들고 싶음 -->
				<div class="content clearfix heading_container heading_center">
					
					<form action="findPwdEmail.se" method="post">
					
			            <div class="changePw">
                   			<img src="resources/images/pwimg.png" style="width:200px; height:150px;"alt="changePw">
			            </div>
			     
					
						<div class="login-fields">
							<h3>비밀번호를 잊으셨나요?</h3>	
	
							
							<div class="input-box">
				                <input id="username" type="text" name="storeId" placeholder="아이디">
				                <label for="username">아이디를 입력하세요</label>
				            </div>
				
				            <div class="input-box">
				                <input id="email" type="email" name="email" placeholder="이메일">
				                <label for="email">이메일을 입력하세요</label>
			                    <p>* 가맹점 계정에 등록되어 있는 이메일을 입력하세요.<br>
			                                                        가맹점 아이디와 이메일 정보가 일치할 시 비밀번호 변경 링크가 전송됩니다. </p>
				            </div>	

						</div> <!-- /login-fields -->
				
						<div>						
							<button type="submit" class=" submit button btn btn-success btn-large">비밀번호 찾기</button>
						</div>
					</form>
					
				</div><!-- content clearfix -->
			
						</div> <!-- /content -->
							
				
					</div> <!-- /account-container -->

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
              <a href="javascript:;">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
                </span>
              </a>
              <a href="javascript:;">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call 02) 807-4421 
                </span>
              </a>
              <a href="javascript:;">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  Sand5rang@naver.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4 footer-col">
          <div class="footer_detail">
            <a href="javascript:;" class="footer-logo">
              Sand5rang
            </a>
            <p>
              Korea tradition Sandwich Franchise Sand5rang 
            </p>

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
          Sand5rang<br><br>
          &copy; <span id="displayYear"></span> Distributed By
          Sand5rang
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