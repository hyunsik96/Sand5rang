package com.s5.sand5rang.sein.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.s5.sand5rang.sein.service.SeinService;
import com.s5.sand5rang.sein.vo.Order;

@Controller
public class SeinController {

	@Autowired
	private SeinService seinService;
	
	@RequestMapping(value="menu.ma")
    public String menuController()
    {
        return "main/menu";
    }
	
	@RequestMapping(value="aboutSand.ma")
    public String aboutController()
    {
        return "main/aboutSand";
    }
	
	@RequestMapping(value="branch.ma")
    public String branchController()
    {
        return "main/branch";
    }
	
	@RequestMapping(value="orderList.se", produces="text/html; charset=UTF-8")
    public String orderListController(Model m)
    {
		//날짜별 발주 합계 list select 
		ArrayList<Order> allOlist= seinService.selectAllOrderList();
		
		//날짜별 원재료별 발주 내역 select
		ArrayList<Order> order = seinService.selectOrder2();
		
		m.addAttribute("all_Olist", allOlist);
		m.addAttribute("order", order);
		
        return "sein/orderlist";
    }
	
	/*발주 신청 페이지 띄우기용*/
	@RequestMapping(value="orderEnrollForm.se")
    public String orderEnrollFormController(HttpSession session)
    {
		//당일 발주 신청 건이 있는지 선체크 해주고 페이지 띄워주기 
		//int result = seinService.selectOrder();
		
//		if(result==24) {
//			//당일 선 발주건 있음 
//			
//			session.setAttribute("messesage", "true");
//			
//			 return "sein/orderlist";
//			 
//		}else {
			//당일 선 발주건 없음 
			return "sein/order_enroll";
		//}
       
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
		
		m.addAttribute("olist", olist);
		
        return "sein/order_enroll_result";
    }
	
	
	@RequestMapping(value="orderUpdate.se")
	public String orderUpdateController(Model m) {
		
		int result = seinService.updateOrder();
		
		
		
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
