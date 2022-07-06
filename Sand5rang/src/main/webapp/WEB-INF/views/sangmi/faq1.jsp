<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
/* faq */
.faq_wrapper{padding-bottom:130px; min-height:277px}
.faq_wrapper .faq_contet{border-top:4px solid #009223;}
.faq_wrapper .faq_contet li{border-bottom:1px solid #dddddd; background-color:#fff;}
.faq_wrapper .fre{cursor:pointer; position:relative; padding:20px 100px 25px;}
.faq_wrapper .fre:after{content:''; background: 0 0 no-repeat; width:20px; height:20px; position:absolute; right:40px; top:50%; margin-top:-10px;}
.faq_wrapper .fre .q{position:absolute; left:35px; top:50%; margin-top:-15px; color:#fff; font-weight:bold; font-family:font_sw; font-size:18px; width:30px; height:30px; padding-top:1px; box-sizing:border-box; background-color:#073614; text-align:center; border-radius:15px;}
.faq_wrapper .fre strong{display:block; color:#292929; line-height:26px; font-size:16px; font-weight:normal;}
.faq_wrapper .ask{position:relative; padding:0 100px; overflow:hidden; height:0px;}
.faq_wrapper .ask .ask_text{position:relative; padding:18px 0 22px; border-top:1px solid #dddddd; color:#666666; line-height:26px; font-size:16px; opacity:0;}
.faq_wrapper .ask .a{position:absolute; left:35px; top:21px; color:#fff; font-weight:bold; font-family:font_sw; font-size:18px; width:30px; height:30px; padding-top:1px; box-sizing:border-box; background-color:#073614; text-align:center; border-radius:15px;}

.faq_wrapper .faq_contet li,
.faq_wrapper .fre:after,
.faq_wrapper .ask .ask_text{transition-duration:0.4s}

.faq_wrapper .faq_contet li.open{background-color:#f8f8f8}
.faq_wrapper .faq_contet li.open .fre strong{color:#009223; font-weight:300;}
.faq_wrapper .faq_contet li.open .fre:after{transform: rotate(135deg);}
.faq_wrapper .faq_contet li.open .ask_text{opacity:1;}

.open{
    list-style-type : none;
}
    </style>
</head>
<body>
  <div id="content">
    <h2 class="subTitle">가맹관련 자주하는 질문&답변</h2>
     <div class="content">
        <div class="faq_wrapper">
          <ul class="faq_contet" id="ui_faq_items">
            <li class="open">
              <div class="fre">
                 <div class="q">Q</div>
                 <strong>샌드오랑 가맹점 오픈에 필요한 투자금액은 어느 정도인가요?</strong>
                
                </div>
                <div class="ask" style="height:144px;">
                  <div class="a">A</div>
                  <div class="ask_text">
                    최소 전용 면적 25평 기준, 약 2억원~ 2억 1천만원이 예상됩니다.
                    <br>
                    (추가공사, 별도비용, 임대료, 부가세 제외)
                    <br>
                    자세한 예상비용은 홈페이지에 문의를 해주세요.
                  </div>
                </div>
            </li>
            <li class="open" style="none;">
                <div class="fre">
                   <div class="q">Q</div>
                   <strong>샌드오랑 가맹점주가 되기 위한 조건이 있나요?</strong>
                   
                  </div>
                  <div class="ask" style="height:144px;">
                    <div class="a">A</div>
                    <div class="ask_text">
                      샌드오랑은 한국 전통 프랜차이즈이며, 매장수 분포지역 기준, 한국 QSR 브랜드입니다.
                      <br>
                      따라서 제품의 퀄리티, 매장 운영, 고객 서비스에 있어 브랜드의 가치를 실현하기 위해 운영 매누얼 및 본사의 규정과 지침을 이행하고 준수 할 수 있는 분, 고객 서비스 마인드를 갖춘 분과 가맹계약을 체결합니다. 
                      <br>
                      각 지사의 가맹 개발자는 계약 체결 전, 심도 깊은 상담, 성향 테스트를 통해 이부분은 검증합니다.
                    </div>
                  </div>
              </li>
              <li class="open">
                <div class="fre">
                   <div class="q">Q</div>
                   <strong>가맹이 불가능한 지역은 언제쯤 상담 및 가맹점 오픈이 가능한가요?</strong>
             
                  </div>
                  <div class="ask" style="height:144px;">
                    <div class="a">A</div>
                    <div class="ask_text">
                      지사 설립 후 가맹이 가능한 지역이 되기까지 최소 1년 이상 소요될 것으로 예산되나, 준비 상황에 따라 가맹시점이 달라질 수 있습니다.
                    </div>
                  </div>
              </li>
              <li class="open">
                <div class="fre">
                   <div class="q">Q</div>
                   <strong>가맹점 개설 절차로는 어떻게 되나요?</strong>
            
                  </div>
                  <div class="ask" style="height:800px;">
                    <div class="a">A</div>
                    <div class="ask_text" style="height:500px;">
                      <img src="resources/images/가맹점과정절차.png" >
                    </div>
                  </div>
              </li>

          </ul>


        </div>
    </div>
  </div>


</body>
  <script>
    $(function(){
       
         $("div").click(function(){


            var $p = $(this).next();  
            
            
            if($p.css("display") =="none"){ 
 
              $(this).siblings("p").slideUp(1000);

               $p.slideDown(1000);             
            }
            else{ 

        
                $p.slideUp(1000);
            }

         });

    });
</script>
</html>