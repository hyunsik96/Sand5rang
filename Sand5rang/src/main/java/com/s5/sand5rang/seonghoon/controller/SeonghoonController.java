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
		ArrayList<Stock> list1 = seonghoonService.selectIng1();
		ArrayList<Stock> list2 = seonghoonService.selectIng2();
		ArrayList<Stock> list3 = seonghoonService.selectIng3();
		ArrayList<Stock> list4 = seonghoonService.selectIng4();
		ArrayList<Stock> list5 = seonghoonService.selectIng5();
		
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
	public String salesPage_menu1( int count, int menNo,
			 Model model, HttpSession session){
		
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);
		
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
		
	}
	@RequestMapping(value="salesPage2.csh")
	public String salesPage_menu2( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);		
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage3.csh")
	public String salesPage_menu3( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage4.csh")
	public String salesPage_menu4( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage5.csh")
	public String salesPage_menu5( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage6.csh")
	public String salesPage_menu6( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage7.csh")
	public String salesPage_menu7( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage8.csh")
	public String salesPage_menu8( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage9.csh")
	public String salesPage_menu9( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage10.csh")
	public String salesPage_menu10( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage11.csh")
	public String salesPage_menu11( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage12.csh")
	public String salesPage_menu12( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage13.csh")
	public String salesPage_menu13( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage14.csh")
	public String salesPage_menu14( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	@RequestMapping(value="salesPage15.csh")
	public String salesPage_menu15( int count, int menNo,
			 Model model, HttpSession session){
		HashMap<String,Integer> hashmap = new HashMap<String, Integer>();
		hashmap.put("count", count);
		hashmap.put("menNo", menNo);	
		int result = seonghoonService.insertSales(hashmap);
		
		if(result > 0) {
			return "redirect:salesPage0.csh";
		}else {
			return "common/errorFr";
		}
	}
	




}
