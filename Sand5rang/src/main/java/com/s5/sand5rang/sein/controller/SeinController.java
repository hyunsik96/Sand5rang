package com.s5.sand5rang.sein.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(value="orderList.se")
    public String orderListController()
    {
        return "sein/orderlist";
    }
	
	/*발주 신청 페이지 띄우기용*/
	@RequestMapping(value="orderEnrollForm.se")
    public String orderEnrollFormController()
    {
        return "sein/order_enroll";
    }
	
	/*발주 신청 insert용 */
	@ResponseBody
	@RequestMapping(value="orderEnroll.se", produces="text/html; charset=UTF-8")
	public String orderEnrollController(int order_count, int ingNo, int tot_price,String stat, Model m, HttpSession session) 
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
		//2. 모든 수량이 0이면 안됨 
		
		int result = seinService.insertOrder(order);
		
	
		//성공 => 게시글 리스트페이지로 url재요청
		//session.setAttribute("alertMsg", "발주가 성공적으로 등록되었습니다.");

		return (result>0) ? "success" : "fail";
			
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
