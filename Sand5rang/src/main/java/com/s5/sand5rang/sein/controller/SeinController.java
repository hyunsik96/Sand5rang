package com.s5.sand5rang.sein.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@PostMapping(value="orderEnroll.se", produces="application/json; charset=UTF-8")
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
		
		int result = seinService.insertOrder(order);
		
		if(result>0) {
			//성공 => 게시글 리스트페이지로 url재요청
			session.setAttribute("alertMsg", "발주가 성공적으로 등록되었습니다.");
			
			return "sein/order_enroll_result";
			
		}else {
			//실패 => 에러페이지 포워딩
			m.addAttribute("errorMsg", "발주 등록실패");
			
			return "/resources/member/sein/error";
	    }
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
