package com.s5.sand5rang.seonghoon.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.seonghoon.service.SeonghoonService;
import com.s5.sand5rang.seonghoon.vo.Menu;

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
	public String salesPage_menu(	int[] count, int[] menNo,
			 Model model, HttpSession session){
		
		// count0, count1, count2,...
		// menNo0, menNo1, menNo2,...
		HashMap<String,Integer> hashmap = new HashMap<String,Integer>();
		for(int i=0; i<count.length; i++) {
			hashmap.put("count"+i, count[i]);
		}
		for(int i=0; i<menNo.length; i++) {
			hashmap.put("menNo"+i, menNo[i]);
		}
		
        // Iterator        
		Iterator<Entry<String,Integer>> it = hashmap.entrySet().iterator();        
		while(it.hasNext()) {            
			Entry<String,Integer> entrySet = (Entry<String,Integer>) it.next();            
			// key, value 출력            
			System.out.println(entrySet.getKey() + " : " + entrySet.getValue());        
		}
		
		int result = seonghoonService.insertSales(hashmap);
		if(result>0) {
			return "redirect:/salesPage0.csh";
		}else {
			return "common/errorPage";
		}
	}
	




}
