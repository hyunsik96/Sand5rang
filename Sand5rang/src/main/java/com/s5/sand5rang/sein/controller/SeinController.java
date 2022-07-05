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
        return "main/menu";
    }
	
	@RequestMapping("/aboutSand.ma")
    public String aboutController()
    {
        return "main/aboutSand";
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
	
	@RequestMapping("/depositList.se")
    public String depositListController()
    {
        return "sein/depositList";
    }
}
