package com.s5.sand5rang.sein.controller;

import java.security.SecureRandom;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.hyunsik.service.HyunsikService;
import com.s5.sand5rang.hyunsik.vo.Main;
import com.s5.sand5rang.sein.service.SeinService;
import com.s5.sand5rang.sein.vo.EmailSendSe;
import com.s5.sand5rang.sein.vo.Enroll;
import com.s5.sand5rang.sein.vo.Order;
import com.s5.sand5rang.sein.vo.Payment;
import com.s5.sand5rang.sein.vo.Store;

@Controller
public class SeinController {

	@Autowired
	private SeinService seinService;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;	
	
	@Autowired
	private HyunsikService hyunsikService;

	//main(메인) - 메뉴 
	@RequestMapping(value="menu.ma")
    public String menuController(){
        return "main/menu";
    }
	
	//main(메인) - 회사소개
	@RequestMapping(value="aboutSand.ma")
    public String aboutController(){
		return "main/aboutSand";
    }
	
	//main(메인) - 지사소개
	@RequestMapping(value="branch.ma")
    public String branchController(){
        return "main/branch";
    }
	
	//main(메인) - 로그인
	@RequestMapping(value="login.me")
	public String loginController() {
		return "main/login";
	}
	
	//비밀번호 찾기
	@RequestMapping("findPwd.me")
	public String findPwd() {
		return "main/findPwd";
			
	}
	//비밀번호 변경
	@RequestMapping("updatePwd.me")
	public String updatePwd() {
		return "main/updatePwd";
	}
	
	//main(메인) - 로그인(아이디/비밀번호 일치확인)
	@RequestMapping(value="loginStore.me")
	public ModelAndView loginStoreController(ModelAndView mv, Store store,  HttpSession session, 
													String saveId, HttpServletResponse response) {
	
		
		//saveId값이 'y'와 일치한다면 => 아이디를 저장하겠다(쿠키생성)
		//아니라면 아이디를 저장하지 않겠다(쿠키삭제)
		if(saveId != null && saveId.equals("y")) {
			
			//아이디 저장 체크박스 클릭 시 
			Cookie cookie = new Cookie("saveId", store.getStoreId());
			
			//쿠키의 유효기간
			//60초 * 60분(1시간) * 24(하루) * 일수 => 초로 환산해서 만료시간 1일 
			cookie.setMaxAge(60*60*24*365);
			
			response.addCookie(cookie);
			
		}else {
			//아이디 저장 체크박스 선택하지 않았을 경우 
			Cookie cookie = new Cookie("saveId", store.getStoreId());
			
			cookie.setMaxAge(0);
			
			response.addCookie(cookie);
		}
		
		// 비밀번호 암호화 후 
		// loginstore의 storePwd필드 : 암호화된 비밀번호 담겨있을 예정임 
		// store의 storePwd 필드 : 영문 비밀번호 값
		// loginstore의 storePwd 필드 : 암호화된 비밀번호 값 
		Store loginstore = seinService.loginStore(store);
		// 아이디만 일치하는지 1차 체크 
		// 비밀번호도 일치하는지 2차 체크 
		
		
		//BCryptPassowrdEncoder 클래스에서 제공하는 maches메소드
		//matches(평문, 암호문)을 작성하면 내부적으로 대조작업이 이루어져 구문이 일치하는지 비교 
		//일치한다면 true/ 일치하지않는다면 false로 반환
		
		// 일단 조회된 회원결과가 있는지 그리고 평문 비밀번호와 암호화된 비밀번호가 일치하는지 확인해주기 
		if(loginstore != null && bCryptPasswordEncoder.matches(store.getStorePwd(), loginstore.getStorePwd())){
			
			session.setAttribute("loginstore", loginstore);
			session.setAttribute("alertMsg", "로그인에 성공했습니다.");
			
			if(loginstore.getStoreId().equals("admin")) {
				
				mv.setViewName("redirect:admain.hs");
				
			}else {
				
				mv.setViewName("redirect:frmain.hs");
			}
			
		}else { 
			//로그인 실패 
			session.setAttribute("alertMsg", "비밀번호가 일치하지않습니다.");
			 
			mv.setViewName("redirect:login.me"); 
		}

			return mv;
	}
	
	//로그아웃
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
			
			//session무효화 시켰음 : session().invalidate();
			session.invalidate();
			
			//메인페이지로 url재요청
			return "redirect:/";
	}
	
	//비밀번호 변경
	@RequestMapping("newPwd.me")
	public ModelAndView newPwdController(ModelAndView mv, Store store, String newPwd, HttpSession session) {
		
		if(store.getStoreId()=="" && store.getStorePwd()=="" && newPwd == "") {
			
			session.setAttribute("alertMsg", "필수 입력값을 모두 입력해주세요.");
			
			mv.setViewName("redirect:updatePwd.me");
			
		}else {
					//입력한 id값으로 기존 pwd뽑아오기
					Store storeResult = seinService.loginStore(store);
					
					//입력받은 현재 pwd값과 기존 비밀번호 일치하는지 확인
					if(store != null && bCryptPasswordEncoder.matches(store.getStorePwd(), storeResult.getStorePwd())){
						
						//비밀번호 변경 가능
						//입력받은 새 비밀번호 복호화하기 
						String enPwd = bCryptPasswordEncoder.encode(newPwd);
						
						store.setStorePwd(enPwd);
						
						//새 비밀번호 Store에 update
						int result = seinService.newPwdUpdate(store);
						
						if(result>0) {
							//새로운 비밀번호 변경 성공 
							session.setAttribute("alertMsg", "비밀번호변경에 성공하였습니다.");
							
							mv.setViewName("redirect:login.me");
							
						}else {
							
							session.setAttribute("alertMsg", "비밀번호변경에 실패하였습니다.");
							
							mv.setViewName("redirect:updatePwd.me");
						}
						
					}else {
						//기존 비밀번호와 일치하지 않음 에러 발생시키기 
						session.setAttribute("alertMsg", "기존 비밀번호와 일치하지 않습니다. 다시 시도해주세요.");
						
						mv.setViewName("redirect:updatePwd.me");
						}
				}
		return mv;
	}
	
	
	//비밀번호 찾기 
	@RequestMapping(value="findPwdEmail.se")
	public String pwdFindController(String email, String storeId, HttpSession session) {
		
		Store store = new Store();
		store.setStoreId(storeId);
		store.setEmail(email);
		
		// 아이디만 일치하는지 1차 체크 
		Store loginstore = seinService.loginStore(store);
		
		
		int emailCheck = seinService.emailCheck(store);
		
		
		if(loginstore != null && emailCheck>0) {
			//랜덤 생성될 비밀번호 길이 
			int newPwd = 10;
			String newPwd2 = generateRandomPassword(newPwd);
			
			EmailSendSe.naverMailSend(email, newPwd2);
			
			store.setStorePwd(bCryptPasswordEncoder.encode(newPwd2));
			
			int result = seinService.newPwdUpdate(store);
			
			if(result>0) {
				System.out.println("비밀번호 변경 성공");
			}else {
				System.out.println("비밀번호 변경 실패");
			}
			
			session.setAttribute("alertMsg", "작성하신 이메일로 임시비밀번호를 발송하였습니다. 확인 후 반드시 비밀번호 변경해주세요.");
			
			return "redirect:sucessMail.me";
			
		}else {
			session.setAttribute("alertMsg", "일치하는 회원정보를 찾을 수 없습니다.");
			
			return "redirect:findPwd.me";
		}
		
	}
	
	//비밀번호 찾기 이메일 발송 성공
	@RequestMapping(value="sucessMail.me")
	public String successMailController() {
		return "main/login";
	}
	
	// 특정 길이의 임의의 영숫자 비밀번호를 생성하는 메소드
    public static String generateRandomPassword(int len)
    {
        // ASCII 범위 – 영숫자(0-9, a-z, A-Z)
        final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        
        SecureRandom random = new SecureRandom();
 
        // 루프의 각 반복은 주어진 문자에서 무작위로 문자를 선택합니다.
        // ASCII 범위를 `StringBuilder` 인스턴스에 추가합니다.
        return IntStream.range(0, len)
                .map(i -> random.nextInt(chars.length()))
                .mapToObj(randomIndex -> String.valueOf(chars.charAt(randomIndex)))
                .collect(Collectors.joining());
    }
	
    //메인 매장검색
    @ResponseBody
    @RequestMapping(value="searchBranch.ma", produces="application/json; charset=UTF-8")
    public String searchBranchController(String value1) {
    	
    	Enroll enroll = new Enroll();
    	enroll.setStoreName(value1);
    	
    	ArrayList<Enroll> storeList = seinService.searchBranch(enroll);
    	
    	return new Gson().toJson(storeList);
    }
    
    
	/*발주 리스트 조회*/
	@RequestMapping(value="orderList.se", produces="text/html; charset=UTF-8")
    public String orderListController(Model m, HttpSession session, @RequestParam(value="cpage", defaultValue="1") int currentPage)
    {

		Store loginstore = (Store)session.getAttribute("loginstore");
		String storeId = loginstore.getStoreId();
		
		
		Main main = hyunsikService.befIndent2(storeId);
        m.addAttribute("m", main);
		
		//페이징처리를 위한 변수들 세팅 => PageInfo 객체
		
		int listCount = seinService.selectListCount(storeId);
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//날짜별 발주 합계 list select 
		ArrayList<Order> allOlist= seinService.selectAllOrderList(storeId, pi);
		
		
		if(allOlist.isEmpty()) {
			
			return "sein/noOrderlist";
			
		}else {
			//날짜별 원재료별 발주 내역 select
			ArrayList<Order> order = seinService.selectOrder2(storeId);
			
			m.addAttribute("all_Olist", allOlist);
			m.addAttribute("order", order);
			m.addAttribute("pi", pi);
			
	        return "sein/orderlist";
		}
    }
	
	/*발주 신청 페이지 띄우기용*/
	@RequestMapping(value="orderEnrollForm.se")
    public String orderEnrollFormController(HttpSession session, Model m)
    {
		
		Store loginstore = (Store)session.getAttribute("loginstore");
		String storeId = loginstore.getStoreId();
		
		Main main = hyunsikService.befIndent2(storeId);
        m.addAttribute("m", main);
		
		//현재 시간뽑기
		LocalTime now = LocalTime.now();
		//15시 기준 뽑기 
		LocalTime time = LocalTime.of(15, 00); 
		
		//15시 기준으로 현재 시간이 이전일 경우 
		if(now.isBefore(time)) {
			//당일 발주 신청 건이 있는지 선체크 해주고 페이지 띄워주기 
			int result = seinService.selectOrder(storeId);
			
			if(result==24) {
				
				String alertMsg ="당일 발주 신청한 내역이 있습니다. 발주 취소 후 다시 신청해주세요."; 
				//당일 선 발주건 있음 
			
				session.setAttribute("alertMsg", alertMsg);
				
				return "redirect:orderList.se";
				 
			}else {
				//당일 선 발주건 없음 
				return "sein/order_enroll";
			}
		}else {
			//당일 발주 신청 건이 있는지 선체크 해주고 페이지 띄워주기 
			int result = seinService.selectOrder3(storeId);
		
			if(result==24) {
				
				String alertMsg ="당일 발주 신청한 내역이 있습니다. 발주 취소 후 다시 신청해주세요."; 
				//당일 선 발주건 있음 
			
				session.setAttribute("alertMsg", alertMsg);
				
				return "redirect:orderList.se";
				 
			}else {
				//당일 선 발주건 없음 
				return "sein/order_enroll";
			}
		}
		
    }
	
	/*발주 신청 insert용 */
	@ResponseBody
	@RequestMapping(value="orderEnroll.se", produces="text/html; charset=UTF-8")
	public String orderEnrollController(int order_count, int ingNo, int tot_price, int allPrice, String stat, Model m, HttpSession session) 
	{
			Store loginstore = (Store)session.getAttribute("loginstore");
			String storeId = loginstore.getStoreId();
	
			Main main = hyunsikService.befIndent2(storeId);
	        m.addAttribute("m", main);
			
			//재료발주 갯수 order_count;
			//원재료번호 ingNo;
			//원재료발주 총가격 tot_price;
			//원재료 발주 상태 stat;
			Order order = new Order();
			order.setStoreId(storeId);
			order.setCount(order_count);
			order.setIngNo(ingNo);
			order.setTotal(tot_price);
			order.setStatus(stat);
			
			//현재 잔액보다 발주 금액이 큰지 조회 먼저 ==> 현재 잔액조회 select
			int balance = seinService.todayMyPayment(storeId);
			
			//payment행 조회
			int payCount = seinService.myPayment(storeId);
			
			//발주 날짜가 당일 날짜의 15시 이후 인지 이전인지 체크하여 INSET DATE 날짜 다르게 넣어줘야함

			//현재 시간뽑기
			LocalTime now = LocalTime.now();
			//15시 기준 뽑기 
			LocalTime time = LocalTime.of(15, 00); 
			
			//15시 기준으로 현재 시간이 이전일 경우 
			if(now.isBefore(time)) {
				//payment행이 아예 없을 경우에는 발주 실행이 되지 않도록 만들어주기 
				//발주 금액 > 현재 잔액
				if(allPrice<balance && payCount>0) {
					//현재 잔액보다 발주 금액이 작으면 발주 가능 
					int result = seinService.insertOrderBefore(order);
					//성공 => 게시글 리스트페이지로 url재요청
					session.setAttribute("alertMsg", "발주가 성공적으로 등록되었습니다.");
					
					return (result>0) ? "success" : "error";
					
				}else {
					session.setAttribute("alertMsg", "잔액보다 발주금액이 큽니다. 잔액 충전 후 발주해주세요.");
					
					return "1";
				}
				
			}else {
			//15시 기준으로 현재 시간이 이후일 경우 
				//payment행이 아예 없을 경우에는 발주 실행이 되지 않도록 만들어주기 
				//발주 금액 > 현재 잔액
				if(allPrice<balance && payCount>0) {
					//현재 잔액보다 발주 금액이 작으면 발주 가능 
					int result = seinService.insertOrderAfter(order);
					
					//성공 => 게시글 리스트페이지로 url재요청
					session.setAttribute("alertMsg", "발주가 성공적으로 등록되었습니다.");
					
					return (result>0) ? "success" : "error";
					
				}else {
					session.setAttribute("alertMsg", "잔액보다 발주금액이 큽니다. 잔액 충전 후 발주해주세요.");
					
					return "1";
				}
			}
	}
	
	// 자동발주
	// 매일 14시 00분 00초 실행
    @Scheduled(cron="00 00 14 * * ?")
    public void orderEnrollOutoController() 
	{
    	
    	//0. 자동발주 신청 내역 조회
    	ArrayList<Order> olist = seinService.selectAutoOrder();
    	
    	Order order = new Order();
    	
    	//1. 잔액조회시 현재 가지고있는 금액보다 큰 금액 발주안됨 
    	for(int i=0; i< olist.size(); i++) {
    
    		order.setCount(olist.get(i).getCount());
    		order.setIngNo(olist.get(i).getIngNo());
    		order.setTotal(olist.get(i).getTotal());
    		order.setStatus("AB");
    		order.setStoreId(olist.get(i).getStoreId());
    		
    		int result = seinService.insertOrderBefore(order);
    		
    		if(result>0) {
        		System.out.println("자동발주 성공!");
        	}else {
        		System.out.println("자동발주 실패!");
        	}
    	}
	}
	
	
	/*발주 신청 결과 페이지 띄우기용*/
	@RequestMapping(value="orderEnrollResult.se")
    public String orderEnrollResultController(Model m, HttpSession session)
    {
		Store loginstore = (Store)session.getAttribute("loginstore");
		String storeId = loginstore.getStoreId();
		

		Main main = hyunsikService.befIndent2(storeId);
        m.addAttribute("m", main);
		
		//현재 시간뽑기
		LocalTime now = LocalTime.now();
		//15시 기준 뽑기 
		LocalTime time = LocalTime.of(15, 00); 
		
		//15시 기준으로 현재 시간이 이전일 경우 
		if(now.isBefore(time)) {
			//실제로는 세션에 로그인된 가맹점 id로 당일 발주내역 조회해오면 됨 
			
			ArrayList<Order> olist = seinService.selectTodayOrder(storeId);
		
			m.addAttribute("olist", olist);
		}else {
			//실제로는 세션에 로그인된 가맹점 id로 당일 발주내역 조회해오면 됨 
			
			ArrayList<Order> olist = seinService.selectTodayOrder2(storeId);
		
			m.addAttribute("olist", olist);
		}
		
        return "sein/order_enroll_result";
    }
	
	//발주 리스트에서 발주 신청 결과 페이지 띄우기
	@RequestMapping(value="orderlistResult.se")
	public String orderlistResultController(Model m, HttpSession session, String listDate) {
		
		Store loginstore = (Store)session.getAttribute("loginstore");
		String storeId = loginstore.getStoreId();
		

		Main main = hyunsikService.befIndent2(storeId);
        m.addAttribute("m", main);
		
		Order order = new Order();
		order.setStoreId(storeId);
		order.setInDate(listDate);
		
		//실제로는 세션에 로그인된 가맹점 id로 당일 발주내역 조회해오면 됨 			
		ArrayList<Order> olist = seinService.selectOrderResult(order);
				
		m.addAttribute("olist", olist);
		
		return "sein/order_enroll_result2";
	}
	
	//B(빵)발주내용 update
	@RequestMapping(value="orderUpdate1.se")
	public String orderUpdateController(Model m, int ingNo0, int ingNo1, int ingNo2, 
			int hidden_iprice0, int hidden_iprice1, int hidden_iprice2, 
			int count0, int count1, int count2, 
			String indDate0, String indDate1, String indDate2, 
			String ingType0, HttpSession session) {
		
		Store loginstore = (Store)session.getAttribute("loginstore");
		String storeId = loginstore.getStoreId();
		
		Order order = new Order();
		int[] ingNo = {ingNo0, ingNo1, ingNo2};
		int[] hidden_iprice = {hidden_iprice0, hidden_iprice1, hidden_iprice2};
		int[] count = {count0, count1, count2};
		String[] indDate = {indDate0, indDate1, indDate2};
		
		int tott = hidden_iprice0+ hidden_iprice1+ hidden_iprice2;
		int Ucount = count0 + count1 + count2;
		
		for(int i=0; i<3; i++) {
			order.setIngNo(ingNo[i]);
			order.setTotal(hidden_iprice[i]);
			order.setCount(count[i]);
			order.setInDate(indDate[i]);
			order.setStoreId(storeId);
			order.setIngType(ingType0);
			
			//원재료 업데이트 전 원재료(해당 원재료를 뺀) 총 가격 
			int beprice= seinService.selectBeforeChangeIngre(order);
			
			//현재잔액조회
			int pay = seinService.todayMyPayment(storeId);
			
			if((tott + beprice)> pay) {
				
				session.setAttribute("alertMsg", "현재 잔액보다 발주금액이 큽니다. 다시 입력해주세요.");
			
			}else {
				//현재 발주 총 수량이 0보다는 커야됨 
				int bCount = seinService.balanceCount(order);
				
				//현재 모든 count가 0일때
				if(Ucount == 0 && bCount == 0) {
					session.setAttribute("alertMsg", "당일 전체발주 수량은 0보다 커야합니다. 다시입력해주세요.");
				}else {
					int result = seinService.updateOrder(order);
					
					if(result>0) {
						session.setAttribute("alertMsg", "발주 수정이 완료되었습니다.");
					}else {
						session.setAttribute("alertMsg", "발주 수정이 실패되었습니다.");
					}
				}
			}
			
		}
		return "redirect:orderList.se";
	}
	
	//V(야채)발주내용 update
	@RequestMapping(value="orderUpdate2.se")
	public String orderUpdateController2(Model m, int ingNo3, int ingNo4, int ingNo5, int ingNo6, int ingNo7, int ingNo8, int ingNo9, 
				int hidden_iprice3, int hidden_iprice4, int hidden_iprice5, int hidden_iprice6, int hidden_iprice7, int hidden_iprice8, int hidden_iprice9, 
				int count3, int count4, int count5, int count6, int count7, int count8, int count9, 
				String indDate3, String indDate4, String indDate5, String indDate6, String indDate7, String indDate8, String indDate9, 
				String ingType3, HttpSession session) {
			
			Store loginstore = (Store)session.getAttribute("loginstore");
			String storeId = loginstore.getStoreId();
			
			Order order = new Order();
			int[] ingNo = {ingNo3, ingNo4, ingNo5, ingNo6, ingNo7, ingNo8, ingNo9};
			int[] hidden_iprice = {hidden_iprice3, hidden_iprice4, hidden_iprice5, hidden_iprice6, hidden_iprice7, hidden_iprice8, hidden_iprice9 };
			int[] count = {count3, count4, count5, count6, count7, count8, count9};
			String[] indDate = {indDate3, indDate4, indDate5, indDate6, indDate7, indDate8, indDate9 };
			
			int tott = hidden_iprice3 + hidden_iprice4 + hidden_iprice5 + hidden_iprice6 + hidden_iprice7+ hidden_iprice8+ hidden_iprice9;
			int Ucount = count3 + count4 + count5 + count6 + count7 + count8 + count9;
			
			for(int i=0; i<7; i++) {
				order.setIngNo(ingNo[i]);
				order.setTotal(hidden_iprice[i]);
				order.setCount(count[i]);
				order.setInDate(indDate[i]);
				order.setStoreId(storeId);
				order.setIngType(ingType3);
				
				int beprice= seinService.selectBeforeChangeIngre(order);
				
				int pay = seinService.todayMyPayment(storeId);
				
				if((tott + beprice)> pay) {
					
					session.setAttribute("alertMsg", "현재 잔액보다 발주금액이 큽니다. 다시 입력해주세요.");
					
				}else {
					//현재 발주 총 수량이 0보다는 커야됨 
					int bCount = seinService.balanceCount(order);
					
					//현재 모든 count가 0일때
					if(Ucount == 0 && bCount == 0) {
						session.setAttribute("alertMsg", "당일 전체발주 수량은 0보다 커야합니다. 다시입력해주세요.");
					}else {
						int result = seinService.updateOrder(order);
						
						if(result>0) {
							session.setAttribute("alertMsg", "발주 수정이 완료되었습니다.");
						}else {
							session.setAttribute("alertMsg", "발주 수정이 실패되었습니다.");
						}
					}
				}
				
			}
			return "redirect:orderList.se";
		}
	
	    //c(치즈)발주내용 update
		@RequestMapping(value="orderUpdate3.se")
		public String orderUpdateController3(Model m, int ingNo10, int ingNo11, int ingNo12, 
				int hidden_iprice10, int hidden_iprice11, int hidden_iprice12, 
				int count10, int count11, int count12, 
				String indDate10, String indDate11, String indDate12, 
				String ingType10, HttpSession session) {
			
			Store loginstore = (Store)session.getAttribute("loginstore");
			String storeId = loginstore.getStoreId();
			
			Order order = new Order();
			int[] ingNo = {ingNo10, ingNo11, ingNo12};
			int[] hidden_iprice = {hidden_iprice10, hidden_iprice11, hidden_iprice12};
			int[] count = {count10, count11, count12};
			String[] indDate = {indDate10, indDate11, indDate12};
			
			int tott = hidden_iprice10+ hidden_iprice11+ hidden_iprice12;
			int Ucount = count10 + count11 + count12;
		
			
			for(int i=0; i<3; i++) {
				order.setIngNo(ingNo[i]);
				order.setTotal(hidden_iprice[i]);
				order.setCount(count[i]);
				order.setInDate(indDate[i]);
				order.setStoreId(storeId);
				order.setIngType(ingType10);
				
				int beprice= seinService.selectBeforeChangeIngre(order);
				
				int pay = seinService.todayMyPayment(storeId);
				
				if((tott + beprice)> pay) {
					
					session.setAttribute("alertMsg", "현재 잔액보다 발주금액이 큽니다. 다시 입력해주세요.");
					
				}else {
					//현재 발주 총 수량이 0보다는 커야됨 
					int bCount = seinService.balanceCount(order);
					
					//현재 모든 count가 0일때
					if(Ucount == 0 && bCount == 0) {
						session.setAttribute("alertMsg", "당일 전체발주 수량은 0보다 커야합니다. 다시입력해주세요.");
					}else {
						int result = seinService.updateOrder(order);
						
						if(result>0) {
							session.setAttribute("alertMsg", "발주 수정이 완료되었습니다.");
						}else {
							session.setAttribute("alertMsg", "발주 수정이 실패되었습니다.");
						}
					}
				}
				
			}
			return "redirect:orderList.se";
		}
		
		//M(고기)발주내용 update
		@RequestMapping(value="orderUpdate4.se")
		public String orderUpdateController4(Model m, int ingNo13, int ingNo14, int ingNo15, int ingNo16, int ingNo17, int ingNo18, 
					int hidden_iprice13, int hidden_iprice14, int hidden_iprice15, int hidden_iprice16, int hidden_iprice17, int hidden_iprice18, 
					int count13, int count14, int count15, int count16, int count17, int count18, 
					String indDate13, String indDate14, String indDate15, String indDate16, String indDate17, String indDate18, 
					String ingType13, HttpSession session) {
				
				Store loginstore = (Store)session.getAttribute("loginstore");
				String storeId = loginstore.getStoreId();
				
				Order order = new Order();
				int[] ingNo = { ingNo13, ingNo14, ingNo15, ingNo16, ingNo17, ingNo18 };
				int[] hidden_iprice = {hidden_iprice13, hidden_iprice14, hidden_iprice15, hidden_iprice16, hidden_iprice17, hidden_iprice18};
				int[] count = {count13, count14, count15, count16, count17, count18};
				String[] indDate = {indDate13, indDate14, indDate15, indDate16, indDate17, indDate18};
				
				int tott = hidden_iprice13 + hidden_iprice14 + hidden_iprice15 + hidden_iprice16+ hidden_iprice17+ hidden_iprice18;
				int Ucount = count13 + count14 + count15 + count16 + count17 + count18;
				
				for(int i=0; i<6; i++) {
					order.setIngNo(ingNo[i]);
					order.setTotal(hidden_iprice[i]);
					order.setCount(count[i]);
					order.setInDate(indDate[i]);
					order.setStoreId(storeId);
					order.setIngType(ingType13);
					
					int beprice= seinService.selectBeforeChangeIngre(order);
					
					int pay = seinService.todayMyPayment(storeId);
					
					if((tott + beprice)> pay) {
						
						session.setAttribute("alertMsg", "현재 잔액보다 발주금액이 큽니다. 다시 입력해주세요.");
						
					}else {
						//현재 발주 총 수량이 0보다는 커야됨 
						int bCount = seinService.balanceCount(order);
						
						//현재 모든 count가 0일때
						if(Ucount == 0 && bCount == 0) {
							session.setAttribute("alertMsg", "당일 전체발주 수량은 0보다 커야합니다. 다시입력해주세요.");
						}else {
							int result = seinService.updateOrder(order);
							
							if(result>0) {
								session.setAttribute("alertMsg", "발주 수정이 완료되었습니다.");
							}else {
								session.setAttribute("alertMsg", "발주 수정이 실패되었습니다.");
							}
						}
					}
					
				}
				return "redirect:orderList.se";
			}
		
		//S(소스)발주내용 update
		@RequestMapping(value="orderUpdate5.se")
		public String orderUpdateController5(Model m, int ingNo19, int ingNo20, int ingNo21, int ingNo22, int ingNo23, 
							int hidden_iprice19, int hidden_iprice20, int hidden_iprice21, int hidden_iprice22, int hidden_iprice23, 
							int count19, int count20, int count21, int count22, int count23,
							String indDate19, String indDate20, String indDate21, String indDate22, String indDate23,
							String ingType19, HttpSession session) {
						
						Store loginstore = (Store)session.getAttribute("loginstore");
						String storeId = loginstore.getStoreId();
						
						Order order = new Order();
						int[] ingNo = {ingNo19, ingNo20, ingNo21, ingNo22, ingNo23};
						int[] hidden_iprice = { hidden_iprice19, hidden_iprice20, hidden_iprice21, hidden_iprice22, hidden_iprice23};
						int[] count = {count19, count20, count21, count22, count23};
						String[] indDate = {indDate19, indDate20, indDate21, indDate22, indDate23};
						
						int tott = hidden_iprice19+ hidden_iprice20+ hidden_iprice21 + hidden_iprice22 + hidden_iprice23;
						int Ucount = count19 + count20 + count21 + count22 + count23;
					
						
						for(int i=0; i<5; i++) {
							order.setIngNo(ingNo[i]);
							order.setTotal(hidden_iprice[i]);
							order.setCount(count[i]);
							order.setInDate(indDate[i]);
							order.setStoreId(storeId);
							order.setIngType(ingType19);
							
							int beprice= seinService.selectBeforeChangeIngre(order);
							
							int pay = seinService.todayMyPayment(storeId);
							
							if((tott + beprice)> pay) {
								
								session.setAttribute("alertMsg", "현재 잔액보다 발주금액이 큽니다. 다시 입력해주세요.");
								
							}else {
								//현재 발주 총 수량이 0보다는 커야됨 
								int bCount = seinService.balanceCount(order);
								
								//현재 모든 count가 0일때
								if(Ucount == 0 && bCount == 0) {
									session.setAttribute("alertMsg", "당일 전체발주 수량은 0보다 커야합니다. 다시입력해주세요.");
								}else {
									int result = seinService.updateOrder(order);
									
									if(result>0) {
										session.setAttribute("alertMsg", "발주 수정이 완료되었습니다.");
									}else {
										session.setAttribute("alertMsg", "발주 수정이 실패되었습니다.");
									}
								}
							}
							
						}
				return "redirect:orderList.se";
		}
	
	//가맹점 결제page 
	@RequestMapping(value="deposit.se")
    public String depositController(HttpSession session, Model m)
    {
		Store loginstore = (Store)session.getAttribute("loginstore");
		int enrNo = loginstore.getEnrNo();
		String storeId = loginstore.getStoreId();
	

		Main main = hyunsikService.befIndent2(storeId);
        m.addAttribute("m", main);
		
		Enroll enrollInfo = seinService.selectEnrollInfo(enrNo);
		
		m.addAttribute("email", enrollInfo.getEmail());
		
        return "sein/deposit";
    }
	
	//발주 삭제
	@RequestMapping(value="orderDelete.se")
	public String deleteDataController(HttpSession session, String inDate, Model m) {
		
		Store loginstore = (Store)session.getAttribute("loginstore");
		String storeId = loginstore.getStoreId();
		

		Main main = hyunsikService.befIndent2(storeId);
        m.addAttribute("m", main);
		
		Order order = new Order();
		order.setStoreId(storeId);
		order.setInDate(inDate);
		
		int result = seinService.deleteOrder(order);
		
		if(result>0) {
			session.setAttribute("alertMsg", "당일 발주건이 성공적으로 삭제되었습니다.");
		}else {
			session.setAttribute("aleretMsg", "당일 발주건 삭제가 실패되었습니다.");
		}
		return "redirect:orderList.se";
	}
	
	
	//가맹점 결제구현 
	@RequestMapping(value="depositInsert.se")
	public String depositPayController(HttpSession session, Model m, String deposit_name, int deposit_price) {
		
		Store loginstore = (Store)session.getAttribute("loginstore");
		String storeId = loginstore.getStoreId();
		//int enrNo = loginstore.getEnrNo();
	

		Main main = hyunsikService.befIndent2(storeId);
        m.addAttribute("m", main);
		
		Payment payment = new Payment();
		payment.setDeposit(deposit_price);
		payment.setStoreId(storeId);
		
		if(deposit_price==0) {
			
			session.setAttribute("alertMsg", "입금 금액은 0보다 크게 입력해주세요");
			
			return "sein/deposit";
			
		}else {
			int result = seinService.depositInsert(payment);
			
			if(result>0) {
				session.setAttribute("alertMsg", "결제를 성공하였습니다.");
			}else {
				session.setAttribute("alertMsg", "결제를 실패하였습니다. 다시 시도해주세요.");
			}
			return "redirect:fr1.hs";
		}
	}
}
