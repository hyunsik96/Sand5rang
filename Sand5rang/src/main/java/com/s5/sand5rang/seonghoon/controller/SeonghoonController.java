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
import com.s5.sand5rang.seonghoon.service.SeonghoonService;
import com.s5.sand5rang.seonghoon.vo.Expiration;
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
		
		int listCount = seonghoonService.select_is_ListCount(search);
		
		
		ArrayList<Stock> ing_list = seonghoonService.selectSearchIng(hashmap);
		
		return new Gson().toJson(ing_list);
		
	}
	
	/***************** 전체 재고현황 *********************/

	
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
		m.setMenNo(ingNo); // 원재료 번호
		m.setCount(order_count); // 판매 개수
		m.setTotal(tot_price); // 
//		m.setStoreId((Store)session.getAttribute("loginUser").getUserId());
		
		seonghoonService.insertSales(m);
		
		
		
	// 2. FLOW 테이블에 INSERT
		
		// 이번회차 메뉴에 담긴 ingNo을 담아둔 리스트
		ArrayList<Ingredient> ingList = seonghoonService.selectIngMen(ingNo);
				
		for(Ingredient i : ingList) {
			
			// 반복문을돌려 한 원재료를 i 에 담는다.
			i.setCount(order_count);
			
			// i.setStoreId(세션의 아이디);
			
			// flow 테이블에 인서트
			int stock = seonghoonService.insertFlow(i);
			
			
			
			
	// 3. STOCK 테이블에 UPDATE
			
			Expiration exp = new Expiration();
			
			exp.setCount(order_count);
			exp.setExpiration(i.getExpiration());
	
			i.setIndex(0); exp.setDay0(seonghoonService.getExp(i));
			i.setIndex(1); exp.setDay1(seonghoonService.getExp(i));
			i.setIndex(2); exp.setDay2(seonghoonService.getExp(i));
			i.setIndex(3); exp.setDay3(seonghoonService.getExp(i));
			i.setIndex(4); exp.setDay4(seonghoonService.getExp(i));
			i.setIndex(5); exp.setDay5(seonghoonService.getExp(i));
			i.setIndex(6); exp.setDay6(seonghoonService.getExp(i));
			i.setIndex(7); exp.setDay7(seonghoonService.getExp(i));
			i.setIndex(8); exp.setDay8(seonghoonService.getExp(i));
			i.setIndex(9); exp.setDay9(seonghoonService.getExp(i));
			i.setIndex(10); exp.setDay10(seonghoonService.getExp(i));
			i.setIndex(11); exp.setDay11(seonghoonService.getExp(i));
			i.setIndex(12); exp.setDay12(seonghoonService.getExp(i));
			i.setIndex(13); exp.setDay13(seonghoonService.getExp(i));

			
			// Expiration exp 객체를 오롯이 가지게 되었습니다.
			
			int c = exp.getCount();
			int use = 0;
			// 유통기한 2일
			if(exp.getExpiration()==2) {
				
				if(exp.getDay1() >= c) {
					use = (exp.getDay1()-c); i.setUse(use); i.setIndex(1); seonghoonService.updateStock(i);	
				}else {
					i.setUse(0); i.setIndex(1); seonghoonService.updateStock(i);	                                          // 어제꺼 업데이트
					use = (exp.getDay1()+exp.getDay0()-c); i.setUse(use); i.setIndex(0); seonghoonService.updateStock(i);	  // 오늘꺼 업데이트
				}
				
			// 유통기한 7일
			}else if(exp.getExpiration()==7) {
				
				if(exp.getDay6() >= c) {
					use = (exp.getDay6()-c); i.setUse(use); i.setIndex(6); seonghoonService.updateStock(i);	
				}else if((exp.getDay6() + exp.getDay5()) >= c) {
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);	                                          
					use = (exp.getDay6()+exp.getDay5()-c); i.setUse(use); i.setIndex(5); seonghoonService.updateStock(i);
				}else if((exp.getDay6() + exp.getDay5() + exp.getDay4()) >= c) {
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);	                                          
					use = (exp.getDay6()+exp.getDay5()+exp.getDay4()-c); i.setUse(use); i.setIndex(4); seonghoonService.updateStock(i);
				}else if((exp.getDay6() + exp.getDay5() + exp.getDay4() + exp.getDay3()) >= c) {
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);	                                          
					use = (exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()-c); i.setUse(use); i.setIndex(3); seonghoonService.updateStock(i);
				}else if((exp.getDay6() + exp.getDay5() + exp.getDay4() + exp.getDay3() + exp.getDay2()) >= c) {
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(3); seonghoonService.updateStock(i);	                                          
					use = (exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()+exp.getDay2()-c); i.setUse(use); i.setIndex(2); seonghoonService.updateStock(i);
				}else if((exp.getDay6() + exp.getDay5() + exp.getDay4() + exp.getDay3() + exp.getDay2() + exp.getDay1()) >= c) {
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(3); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(2); seonghoonService.updateStock(i);	                                          
					use = (exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()+exp.getDay2()+exp.getDay1()-c); i.setUse(use); i.setIndex(1); seonghoonService.updateStock(i);
				}else{
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(3); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(2); seonghoonService.updateStock(i);	                                          
					i.setUse(0); i.setIndex(1); seonghoonService.updateStock(i);	                                          
					use = (exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()+exp.getDay2()+exp.getDay1()+exp.getDay0()-c); i.setUse(use); i.setIndex(0); seonghoonService.updateStock(i);
				}
				
				
				
			// 유통기한 14일
			}else {
				
				if(exp.getDay13() >= c) {
					use = (exp.getDay13()-c); i.setUse(use); i.setIndex(13); seonghoonService.updateStock(i);	
				}else if((exp.getDay13() + exp.getDay12()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);	                                          
					use = (exp.getDay13()+exp.getDay12()-c); i.setUse(use); i.setIndex(12); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()-c); i.setUse(use); i.setIndex(11); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()-c); i.setUse(use); i.setIndex(10); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()-c); i.setUse(use); i.setIndex(9); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()-c); i.setUse(use); i.setIndex(8); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8() + exp.getDay7()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()-c); i.setUse(use); i.setIndex(7); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8() + exp.getDay7() + exp.getDay6()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(7); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()+exp.getDay6()-c); i.setUse(use); i.setIndex(6); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8() + exp.getDay7() + exp.getDay6() + exp.getDay5()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(7); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()+exp.getDay6()+exp.getDay5()-c); i.setUse(use); i.setIndex(5); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8() + exp.getDay7() + exp.getDay6() + exp.getDay5() + exp.getDay4()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(7); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()+exp.getDay6()+exp.getDay5()+exp.getDay4()-c); i.setUse(use); i.setIndex(4); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8() + exp.getDay7() + exp.getDay6() + exp.getDay5() + exp.getDay4() + exp.getDay3()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(7); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()+exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()-c); i.setUse(use); i.setIndex(3); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8() + exp.getDay7() + exp.getDay6() + exp.getDay5() + exp.getDay4() + exp.getDay3() + exp.getDay2()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(7); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(3); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()+exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()+exp.getDay2()-c); i.setUse(use); i.setIndex(2); seonghoonService.updateStock(i);
				}else if((exp.getDay13() + exp.getDay12() + exp.getDay11() + exp.getDay10() + exp.getDay9() + exp.getDay8() + exp.getDay7() + exp.getDay6() + exp.getDay5() + exp.getDay4() + exp.getDay3() + exp.getDay2() + exp.getDay1()) >= c) {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(7); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(3); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(2); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()+exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()+exp.getDay2()+exp.getDay1()-c); i.setUse(use); i.setIndex(1); seonghoonService.updateStock(i);
				}else {
					i.setUse(0); i.setIndex(13); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(12); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(11); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(10); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(9); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(8); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(7); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(6); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(5); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(4); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(3); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(2); seonghoonService.updateStock(i);
					i.setUse(0); i.setIndex(1); seonghoonService.updateStock(i);
					use = (exp.getDay13()+exp.getDay12()+exp.getDay11()+exp.getDay10()+exp.getDay9()+exp.getDay8()+exp.getDay7()+exp.getDay6()+exp.getDay5()+exp.getDay4()+exp.getDay3()+exp.getDay2()+exp.getDay1()+exp.getDay0()-c); i.setUse(use); i.setIndex(0); seonghoonService.updateStock(i);
				}
					
				
				
				
				
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
// for문 끝			
		}
		

		
		
		
		
		
			
	}
	
	

	
	




}
