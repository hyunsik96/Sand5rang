package com.s5.sand5rang.seonghoon.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.s5.sand5rang.sein.vo.Order;
import com.s5.sand5rang.seonghoon.service.SeonghoonService;
import com.s5.sand5rang.seonghoon.vo.Flow;
import com.s5.sand5rang.seonghoon.vo.Ingredient;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Stock;


@Controller
public class SeonghoonController {

	@Autowired
	private SeonghoonService seonghoonService;
	
	@RequestMapping(value="main.csh")
	public String mainController(Model model) {
		return "seonghoon/메인";
	}
	/*********** 오늘의 재고 페이지 ***********/
	@RequestMapping(value="todayStock.csh")
	public String todayStockList(Model model) {
		
		// 원재료명, 원재료 이미지
		ArrayList<Ingredient> i_list1 = seonghoonService.selectTodayStock1();
		ArrayList<Ingredient> i_list2 = seonghoonService.selectTodayStock2();
		ArrayList<Ingredient> i_list3 = seonghoonService.selectTodayStock3();
		ArrayList<Ingredient> i_list4 = seonghoonService.selectTodayStock4();
		ArrayList<Ingredient> i_list5 = seonghoonService.selectTodayStock5();
		model.addAttribute("i_list1", i_list1);
		model.addAttribute("i_list2", i_list2);
		model.addAttribute("i_list3", i_list3);
		model.addAttribute("i_list4", i_list4);
		model.addAttribute("i_list5", i_list5);
		
		// 현재재고
		// 파마산 현재재고 : 1
		// 화이트 현재재고 : 2
		// 플렛 현재재고 : 3
		// ...
		ArrayList<Stock> s_list1 = seonghoonService.selectStock1();
		ArrayList<Stock> s_list2 = seonghoonService.selectStock2();
		ArrayList<Stock> s_list3 = seonghoonService.selectStock3();
		ArrayList<Stock> s_list4 = seonghoonService.selectStock4();
		ArrayList<Stock> s_list5 = seonghoonService.selectStock5();
		model.addAttribute("s_list1",s_list1);
		model.addAttribute("s_list2",s_list2);
		model.addAttribute("s_list3",s_list3);
		model.addAttribute("s_list4",s_list4);
		model.addAttribute("s_list5",s_list5);
		
		// 유통기한
		ArrayList<Stock> d_list1 = seonghoonService.selectExpDate1();
		ArrayList<Stock> d_list2 = seonghoonService.selectExpDate2();
		ArrayList<Stock> d_list3 = seonghoonService.selectExpDate3();
		ArrayList<Stock> d_list4 = seonghoonService.selectExpDate4();
		ArrayList<Stock> d_list5 = seonghoonService.selectExpDate5();
		model.addAttribute("d_list1",d_list1);
		model.addAttribute("d_list2",d_list2);
		model.addAttribute("d_list3",d_list3);
		model.addAttribute("d_list4",d_list4);
		model.addAttribute("d_list5",d_list5);
		
		
		return "seonghoon/오늘의재고";
	}
	
	/********************* 재료별 재고 현황 ************************/
	@RequestMapping(value="ingredientStock.csh")
	public String ingredientView(Model model) {
		return "seonghoon/재료별재고현황";
	}
	
	@ResponseBody
	@RequestMapping(value="ingredientStock1.csh", produces="application/json; charset=UTF-8")
	public String ingredientStockList(String search, Model model) {
		
		// System.out.println("검색어 : "+search);
		HashMap<String,String> hashmap = new HashMap<>();
		hashmap.put("search", search);
		
		
		ArrayList<Stock> ing_list = seonghoonService.selectSearchIng(hashmap);
		
		return new Gson().toJson(ing_list);
		
	}
	
	/***************** 전체 재고현황 *********************/
	@RequestMapping(value="ingredientAllStock.csh")
	public String ingredientAllStockList(
			Model model,
			@RequestParam(value="spage",defaultValue="1") int currentPage
			){
		// 재고 합계
		ArrayList<Stock> ss_list = seonghoonService.selectSumStock();
		model.addAttribute("ss_list",ss_list);
		
		// 재고 현황
		ArrayList<Flow> in_list = seonghoonService.selectInFlow();
		ArrayList<Flow> out_list = seonghoonService.selectOutFlow();
		model.addAttribute("in_list", in_list);
		model.addAttribute("out_list", out_list);
			
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
	public String salesPage0(Model model) { return "seonghoon/판매기입페이지"; }
	
	/*매출 기입 insert용 */
	@ResponseBody
	@RequestMapping(value="salesPage1.csh", produces="text/html; charset=UTF-8")
	public void orderEnrollController(int order_count, int ingNo, int tot_price, Model model, HttpSession session) {
		

		// 1. SALES 테이블에 INSERT
		

		
		Menu m = new Menu();
		m.setMenNo(ingNo);
		m.setCount(order_count);
		m.setTotal(tot_price);
//		m.setStoreId((Store)session.getAttribute("loginUser").getUserId());
		
		seonghoonService.insertSales(m);
		
		
		
		// 2. FLOW 테이블에 INSERT
		
		// 3. STOCK 테이블에 UPDATE
		
			
	}
	
	

	
	




}
