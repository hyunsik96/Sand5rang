package com.s5.sand5rang.sein.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping(value="orderEnroll.se")
	public String orderEnrollController(Order o, Model m, HttpSession session) 
	{

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
