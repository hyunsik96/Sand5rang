package com.s5.sand5rang.seonghoon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.seonghoon.service.SeonghoonService;

@Controller
public class SeonghoonController {

	@Autowired
	private SeonghoonService seonghoonService;
	
	@RequestMapping(value="main.csh")
	public String mainController(Model model) {
		return "seonghoon/메인";
	}
	
	@RequestMapping(value="todayStock.csh")
	public String todayStockList(Model model) {
		return "seonghoon/오늘의재고";
	}
	
	@RequestMapping(value="ingredientStock.csh")
	public String ingredientStockList(Model model) {
		return "seonghoon/재료별재고현황";
	}
	
	@RequestMapping(value="ingredientAllStock.csh")
	public String ingredientAllStockList(Model model) {
		return "seonghoon/전체재고현황";
	}
	
	@RequestMapping(value="ingredientDisposal.csh")
	public String ingredientDisposalList(Model model) {
		return "seonghoon/폐기현황";
	}
	@RequestMapping(value="menuSales.csh")
	public String menuSalesList(Model model) {
		return "seonghoon/제품판매현황";
	}
	
	@RequestMapping(value="salesPage.csh")
	public String salesPage(Model model) {
		return "seonghoon/제품판매페이지";
	}
	
}
