package com.s5.sand5rang.sein.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.sein.service.SeinService;

@Controller
public class SeinController {

	@Autowired
	private SeinService seinService;
	
	@RequestMapping("/menu.ma")
    public String menuController()
    {
        return "sein/menu";
    }
	
	@RequestMapping("/orderList.se")
    public String orderListController()
    {
        return "sein/franchisee";
    }
	
	@RequestMapping("/orderEnroll.se")
    public String orderEnrollController()
    {
        return "sein/order_enroll";
    }
	
	@RequestMapping("/deposit.se")
    public String depositController()
    {
        return "sein/deposit";
    }
}
