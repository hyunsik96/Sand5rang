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

</head>

<body class="sub_page">

  <div class="hero_area">
    <div class="bg-box active">
      <img src="resources/images/gray.jpg" alt="">
    </div>

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

  <!-- 지사안내 -->
  <div>
    <div class="branch_img" style="background-color: #ffffff; width : 300px; display: inline-block; ">
      <br><br>
      <h2 style="font-family: 'Noto Sans KR', sans-serif; text-align: center; font-weight: bolder; color: #ffffff; font-size: 30px;">
        Sand5rang 지사안내
      </h2>
      <div style="margin-left: 100px;">
        <img src="resources/images/branch_map01.png" style="width : 600px"> 
      </div>
      <br>
      <div style="margin-left: 400px; margin-top: 50px;">
        <img src="resources/images/지사2.png" style="width: 320px; height: 40px; margin-bottom: 50px;">
      </div>
    </div> 

  <div style="margin-right: 90px; margin-top: 150px; width : 600px; height : 500px;  display: block; float: right; position: relative; ">
      <h2 style="font-family: 'Noto Sans KR', sans-serif; text-align: center; margin-bottom : 60px; margin-top: 50px;font-weight: bolder; color: #1b521b; ">SAND5RANG 매장검색</h2>

        <div id="g1" style="display: block; margin-left: 55px; float: left; ">
            <input type="text" name="searchkey" id="searchkey"
                style="width : 370px; height : 40px;  border-radius: 10px; border : solid 1px lightgray;" placeholder="&nbsp;* 매장명을 입력해주세요">
        </div>
        <div style="display: block; margin-left: 10px; float: left; margin-bottom: 10px;">
          <input type="button" id="btn" style="width : 100px; height: 40px; border-radius: 10px; font-family: 'Noto Sans KR', sans-serif; background-color: #1b521b; color: #ffffff" class="btn" value="검색">
        </div>
        <p class="mb-1" style="font-family: 'Noto Sans KR', sans-serif; margin-top : 50px; margin-left: 60px; width : 400px;">* 운영시간은 매장 사정에 따라 변경될 수 있습니다. </p>



        <div id="all" style="display: block; margin-left : 30px;float: left; margin-top: 35px;">
               
        </div>
    </div>
  </div>
    
</div>
</div>

  
  <br><br>
  <!-- 지사안내 끝-->

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


  <script>

      $(function(){
        
      $("#btn").click(function(){

              var resultStr = "";
              var resultStr2 = "";
              var messages = "※ 검색된 결과가 없습니다.";

              $.ajax({
                type: "get",
                url : "searchBranch.ma",
                data : {value1 : $("#searchkey").val()},
                dataType: 'json',
                success : function(orderList){

                
                  if(orderList == null){

                            resultStr2 += "<div id='d1' style='width : 550px; height : 100px;  border-radius: 10px; border : solid 1px lightgray; margin-bottom: 10px; line-height: 100px; box-shadow: 4px 4px 4px slategray'>"     
                             
                             + "<div id='d2' style='text-align: center; font-family: 'Noto Sans KR', sans-serif;'>"
                            
                             + "<h5 style='margin : 0px; padding : 0px; display: block; float: left; line-height: 100px; margin-left: 70px; color: red;'>" + messages + "</h5>";
                   
                             +"</div>";
                             
                             +"</div>";

                             $("#all").html(resultStr2);
                      
                  }else{  
                          for(var i=0; i<orderList.length; i++){
                      
                                    resultStr += "<div id='d1' style='width : 550px; height : 100px;  border-radius: 10px; border : solid 1px lightgray; margin-bottom: 10px; line-height: 100px; box-shadow: 4px 4px 4px slategray'>"     
                                  
                                    + "<div id='d2' style='text-align: center; font-family: 'Noto Sans KR', sans-serif;'>"

                                    + "<h5 style='margin : 0px; padding : 0px; display: block; float: left; line-height: 100px; margin-left: 90px; font-size : 15px; font-weight: bolder;'>"
                                                + orderList[i].storeName + ": " + "</h5>"
                                    +"<h6 style='margin : 0px; padding : 0px; display: block; float: left; line-height: 100px; margin-left: 10px;'> " 
                                                + orderList[i].enrollAdd + "</h6>"
                                    +"<h6 style='margin : 0px; padding : 0px; display: block; float: left; line-height: 100px; margin-left: 10px; color: darkgreen; font-size : 12px;'>" 
                                                +"[ 전화번호 : " + orderList[i].phone + " ]"+"</h6>"
                                    +"</div>";
                                  
                                    +"</div>";

                        }
                        $("#all").html(resultStr);
                 }
                },
                error : function(result){
                  console.log("ajax 통신 실패!");
                }
            });
         });
      });
  </script>

</body>
</html>