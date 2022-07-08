package com.s5.sand5rang.seonghoon.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.seonghoon.service.SeonghoonService;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Sales;

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
	
	
	
	/*********** 판매기입페이지 ***********/
	@RequestMapping(value="salesPage0.csh")
	public String salesPage0(Model model) {
		ArrayList<Menu> list = seonghoonService.selectMenu();
		model.addAttribute("list", list);
		return "seonghoon/판매기입페이지";
	}
	
	
	@RequestMapping(value="salesPage1.csh")
	public String salesPage_menu(	int count1, int count2, int count3, int count4, int count5, 
									int count6, int count7, int count8, int count9, int count10, 
									int count11, int count12, int count13, int count14, int count15,
									int menNo1, int menNo2, int menNo3, int menNo4, int menNo5,
									int menNo6, int menNo7, int menNo8, int menNo9, int menNo10,
									int menNo11, int menNo12, int menNo13, int menNo14, int menNo15,
									
			 Model model, HttpSession session){
		
		ArrayList<Sales> list_count = new ArrayList<>();
		list_count.get(1).setCount(count1);
		list_count.get(2).setCount(count2);
		list_count.get(3).setCount(count3);
		list_count.get(4).setCount(count4);
		list_count.get(5).setCount(count5);
		list_count.get(6).setCount(count6);
		list_count.get(7).setCount(count7);
		list_count.get(8).setCount(count8);
		list_count.get(9).setCount(count9);
		list_count.get(10).setCount(count10);
		list_count.get(11).setCount(count11);
		list_count.get(12).setCount(count12);
		list_count.get(13).setCount(count13);
		list_count.get(14).setCount(count14);
		list_count.get(15).setCount(count15);
		
		ArrayList<Sales> list_menNo = new ArrayList<>();
		list_menNo.get(1).setMenNo(menNo1);
		list_menNo.get(2).setMenNo(menNo2);
		list_menNo.get(3).setMenNo(menNo3);
		list_menNo.get(4).setMenNo(menNo4);
		list_menNo.get(5).setMenNo(menNo5);
		list_menNo.get(6).setMenNo(menNo6);
		list_menNo.get(7).setMenNo(menNo7);
		list_menNo.get(8).setMenNo(menNo8);
		list_menNo.get(9).setMenNo(menNo9);
		list_menNo.get(10).setMenNo(menNo10);
		list_menNo.get(11).setMenNo(menNo11);
		list_menNo.get(12).setMenNo(menNo12);
		list_menNo.get(13).setMenNo(menNo13);
		list_menNo.get(14).setMenNo(menNo14);
		list_menNo.get(15).setMenNo(menNo15);
		
		int result = seonghoonService.insertSales(list_count, list_menNo);
		if(result>0) {
			return "redirect:/salesPage0.csh";
		}else {
			return "common/errorPage";
		}
	}
	




}
