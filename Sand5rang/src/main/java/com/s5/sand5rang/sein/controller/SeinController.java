package com.s5.sand5rang.sein.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.s5.sand5rang.sein.service.SeinService;
import com.s5.sand5rang.sein.vo.Order;
import com.s5.sand5rang.sein.vo.Store;

@Controller
public class SeinController {

	@Autowired
	private SeinService seinService;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;	
	

	//main(메인) - 메뉴 
	@RequestMapping(value="menu.ma")
    public String menuController()
    {
        return "main/menu";
    }
	
	//main(메인) - 회사소개
	@RequestMapping(value="aboutSand.ma")
    public String aboutController()
    {
        return "main/aboutSand";
    }
	
	//main(메인) - 지사소개
	@RequestMapping(value="branch.ma")
    public String branchController()
    {
        return "main/branch";
    }
	
	//main(메인) - 로그인
	@RequestMapping(value="login.me")
	public String loginController() {
		
		return "main/login";
	}
	
	//main(메인) - 로그인(아이디/비밀번호 일치확인)
	@RequestMapping(value="loginStore.me")
	public ModelAndView loginStoreController(ModelAndView mv, Store store,  HttpSession session, 
													String saveId, HttpServletResponse response) {
		
		System.out.println(store.getStoreId());
		System.out.println("몇번?");
		
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
			session.setAttribute("alertMsg", "실패");
			 
			mv.setViewName("redirect:login.me"); 
		}

			return mv;
	}
	
	//url 매핑값만 적어줄 경우 value속성 생략 가능
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
			
			//session무효화 시켰음 : session().invalidate();
			session.invalidate();
			
			//메인페이지로 url재요청
			return "redirect:/";
	}
	
	//비밀번호 찾기
	@RequestMapping("findpass.me")
	public String findPassword() {
		
		
		
		return "main/findPassword";
		
	}
	
	/*발주 리스트 조회*/
	@RequestMapping(value="orderList.se", produces="text/html; charset=UTF-8")
    public String orderListController(Model m)
    {
		//날짜별 발주 합계 list select 
		ArrayList<Order> allOlist= seinService.selectAllOrderList();
		
		if(allOlist.isEmpty()) {
			
			return "sein/noOrderlist";
			
		}else {
			//날짜별 원재료별 발주 내역 select
			ArrayList<Order> order = seinService.selectOrder2();
			
			m.addAttribute("all_Olist", allOlist);
			m.addAttribute("order", order);
			
	        return "sein/orderlist";
		}
    }
	
	/*발주 신청 페이지 띄우기용*/
	@RequestMapping(value="orderEnrollForm.se")
    public String orderEnrollFormController(HttpSession session)
    {
		//당일 발주 신청 건이 있는지 선체크 해주고 페이지 띄워주기 
		int result = seinService.selectOrder();
		
		if(result==24) {
			//당일 선 발주건 있음 
			session.setAttribute("alertMsg", "당일 발주 신청한 내역이 있습니다. \n발주 취소 후 다시 신청해주세요.'");
			
			 return "sein/orderlist";
			 
		}else {
			//당일 선 발주건 없음 
			return "sein/order_enroll";
		}
    }
	
	/*발주 신청 insert용 */
	@ResponseBody
	@RequestMapping(value="orderEnroll.se", produces="text/html; charset=UTF-8")
	public String orderEnrollController(int order_count, int ingNo, int tot_price, String stat, Model m, HttpSession session) 
	{
			//재료발주 갯수 order_count;
			//원재료번호 ingNo;
			//원재료발주 총가격 tot_price;
			//원재료 발주 상태 stat;
			Order order = new Order();
			order.setCount(order_count);
			order.setIngNo(ingNo);
			order.setTotal(tot_price);
			order.setStatus(stat);
			
			//1. 잔액조회시 현재 가지고있는 금액보다 큰 금액 발주안됨 
			int result = seinService.insertOrder(order);
			
			//성공 => 게시글 리스트페이지로 url재요청
			//session.setAttribute("alertMsg", "발주가 성공적으로 등록되었습니다.");
			return (result>0) ? "success" : "fail";
			
	}
	
	// 자동발주
	// 매일 14시 00분 00초 실행
    @Scheduled(cron="00 00 15 * * ?")
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
    		order.setStatus(olist.get(i).getStatus());
    		
    		int result = seinService.insertOrder(order);
    		
    		if(result>0) {
        		System.out.println("자동발주 성공!");
        	}else {
        		System.out.println("자동발주 실패!");
        	}
    	}
	}
	
	
	/*발주 신청 결과 페이지 띄우기용*/
	@RequestMapping(value="orderEnrollResult.se")
    public String orderEnrollResultController(Model m)
    {
		//실제로는 세션에 로그인된 가맹점 id로 당일 발주내역 조회해오면 됨 
		ArrayList<Order> olist = seinService.selectTodayOrder();
		
		m.addAttribute("indDate", olist.get(0).getIndDate());
		m.addAttribute("olist", olist);
		
        return "sein/order_enroll_result";
    }
	
	
	@RequestMapping(value="orderUpdate.se")
	public String orderUpdateController(Model m) {
		
		//int result = seinService.updateOrder();
		
		return "sein/orderlist";
	}
	
	
	@RequestMapping(value="deposit.se")
    public String depositController()
    {
        return "sein/deposit";
    }
	
	@RequestMapping(value="depositList.se")
    public String depositListController()
    {
        return "sein/depositList";
    }
	
}
