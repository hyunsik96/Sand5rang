package com.s5.sand5rang.seonghoon.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.hyunsik.service.HyunsikService;
import com.s5.sand5rang.hyunsik.vo.Main;
import com.s5.sand5rang.hyunsik.vo.StockS;
import com.s5.sand5rang.sein.vo.Store;
import com.s5.sand5rang.seonghoon.service.SeonghoonService;
import com.s5.sand5rang.seonghoon.vo.Expiration;
import com.s5.sand5rang.seonghoon.vo.Ingredient;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Sales;
import com.s5.sand5rang.seonghoon.vo.Stock;


@Controller
public class SeonghoonController {

	@Autowired
	private SeonghoonService seonghoonService;
	
	@Autowired
	private HyunsikService hyunsikService;
	
	@RequestMapping(value="main.csh")
	public String mainController(Model model) {
		return "seonghoon/메인";
	}
	/*********** 오늘의 재고 페이지 ***********/
	@RequestMapping(value="todayStock.csh")
	public String todayStockList(Model model, HttpSession session) {
		
		Store user = (Store)session.getAttribute("loginstore");
		String storeId = user.getStoreId();		
		
		Main m = hyunsikService.befIndent2(storeId);
	    model.addAttribute("m", m);		
		
		// STORE_ID가 테이블에 없는 경우 아래의 구문이 실행되지 않게끔.
		int a = seonghoonService.selectStoreId_list(storeId);
		if(a==0) {
			return "common/errorFr";
		}else {
			
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
		ArrayList<Stock> s_list1 = seonghoonService.selectStock1(storeId);
		ArrayList<Stock> s_list2 = seonghoonService.selectStock2(storeId);
		ArrayList<Stock> s_list3 = seonghoonService.selectStock3(storeId);
		ArrayList<Stock> s_list4 = seonghoonService.selectStock4(storeId);
		ArrayList<Stock> s_list5 = seonghoonService.selectStock5(storeId);
		model.addAttribute("s_list1",s_list1);
		model.addAttribute("s_list2",s_list2);
		model.addAttribute("s_list3",s_list3);
		model.addAttribute("s_list4",s_list4);
		model.addAttribute("s_list5",s_list5);
		
		// 유통기한
		/*
		ArrayList<Stock> d_list1 = seonghoonService.selectExpDate1(storeId);
		ArrayList<Stock> d_list2 = seonghoonService.selectExpDate2(storeId);
		ArrayList<Stock> d_list3 = seonghoonService.selectExpDate3(storeId);
		ArrayList<Stock> d_list4 = seonghoonService.selectExpDate4(storeId);
		ArrayList<Stock> d_list5 = seonghoonService.selectExpDate5(storeId);
		model.addAttribute("d_list1",d_list1);
		model.addAttribute("d_list2",d_list2);
		model.addAttribute("d_list3",d_list3);
		model.addAttribute("d_list4",d_list4);
		model.addAttribute("d_list5",d_list5);
		*/
			return "seonghoon/오늘의재고";
		}
}
	
	/********************* 재료별 재고 현황 ************************/
	/*
	@RequestMapping(value="ingredientStock.csh")
	public String ingredientView(Model model) {
		return "seonghoon/재료별재고현황";
	}
	*/
	
	@RequestMapping(value="ingredientStock1.csh")
	public String selectSortIngredient(
				Model model,
				@RequestParam(value="p", defaultValue="1") int currentPage,
				@RequestParam(value="ingType", defaultValue="B") String ingType,
				@RequestParam(value="ingName", defaultValue="파마산") String ingName,
				HttpSession session
			) {
		
		
		// 세션에 담긴 로그인 정보 가져오기
		Store user = (Store)session.getAttribute("loginstore");
		String storeId = user.getStoreId();		
		/*
		System.out.println("ingType : "+ingType);
		System.out.println("ingName : "+ingName);
		System.out.println("storeId : "+storeId);
		*/
		Main m = hyunsikService.befIndent2(storeId);
		model.addAttribute("m", m);
		
		// select태그 2개의 값 가져오기
		HashMap<String, String> hashmap = new HashMap<>();
		hashmap.put("ingType", ingType);
		hashmap.put("ingName", ingName);
		hashmap.put("storeId", storeId);
		
		// 페이징 바 
		int listCount = seonghoonService.ingListcount(hashmap);
		// System.out.println("listCount : "+listCount);
		
		int pageLimit = 10;
		int boardLimit = 5;
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Stock> sort_list = seonghoonService.selectSortIngredient(pi, hashmap);
		
		for(int i=0; i<sort_list.size(); i++) {
			System.out.println(sort_list.get(i));
		}
		
		model.addAttribute("pi", pi);
		model.addAttribute("sort_list", sort_list);
		
		
		return "seonghoon/재료별재고현황";
		
	}
	
	/*********** 제품판매현황 ************/
	@RequestMapping(value="menuSales.csh")
	public String menuSalesList(
			Model model,
			@RequestParam(value="p", defaultValue="1") int currentPage,
			HttpSession session
			) {
		// session.getAttribute(로그인)
		Store user = (Store)session.getAttribute("loginstore");
		String storeId = user.getStoreId();
		
		Main m = hyunsikService.befIndent2(storeId);
	    model.addAttribute("m", m);
		
		int listCount = seonghoonService.menuSalesListCount(storeId);
		
		int pageLimit = 10;
		int boardLimit = 5; 
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		// 제품판매현황의 판매날짜, 총판매개수, 총판매금액을 담은 list
		// 1. 제품판매현황을 찍어주기 위한 list
		// 판매날짜, 가맹점아이디, 총개수, 총금액
		ArrayList<Sales> sales_list1 = seonghoonService.selectMenuSalesList1(pi, storeId);
		
		// 2. 페이징바가 먹혀있는 sales_list1에서 
		// salDate를 가져와서 이것을 동적쿼리로 대입함.
		Sales s = new Sales();
		ArrayList<ArrayList<Sales>> menu_list = new ArrayList<>();
		for(int i=0; i<sales_list1.size(); i++) {
			s.setSalDate(sales_list1.get(i).getSalDate());
			s.setStoreId(sales_list1.get(i).getStoreId());
			// System.out.println(s);
			menu_list.add(seonghoonService.MenuSalDate_List(s));
		}
		for(int i=0; i<menu_list.size(); i++) {
			System.out.println(menu_list.get(i));
	
		}
		
		// 2. 페이징바가 먹혀있는 sales_list1에서
		// salDate를 가져와서 이를 동적쿼리로 대입함
		// 모달에는 각각 판매된 메뉴의 개수를 가져옴.
		// 판매된 제품, 판매된 제품의 개수
		model.addAttribute("pi", pi);
		model.addAttribute("sales_list1", sales_list1);
		model.addAttribute("menu_list",menu_list);

		return "seonghoon/제품판매현황";
	}
	
	

	
	/*매출 기입 insert용 */
	@ResponseBody
	@RequestMapping(value="salesPage1.csh", produces="text/html; charset=UTF-8")
	public void orderEnrollController(int order_count, int ingNo, int tot_price, Model model, HttpSession session) {
		
		Store user = (Store)session.getAttribute("loginstore");
		String storeId = user.getStoreId();
		
		ArrayList<Ingredient> ingList111 = seonghoonService.selectIngMen(ingNo);
		
		ArrayList<Stock> s_list111 = seonghoonService.selectStock1(storeId);
		ArrayList<Stock> s_list222 = seonghoonService.selectStock2(storeId);
		ArrayList<Stock> s_list333 = seonghoonService.selectStock3(storeId);
		ArrayList<Stock> s_list444 = seonghoonService.selectStock4(storeId);
		ArrayList<Stock> s_list555 = seonghoonService.selectStock5(storeId);
		
		StockS s = new StockS(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
		
		for(Stock sss : s_list111) {
			if(sss.getIngNo()==1) { s.setA(sss.getCount()); }
			if(sss.getIngNo()==2) { s.setB(sss.getCount()); }
			if(sss.getIngNo()==3) { s.setC(sss.getCount()); }
		}
		
		for(Stock sss : s_list222) {
			if(sss.getIngNo()==4) { s.setD(sss.getCount()); }
			if(sss.getIngNo()==5) { s.setE(sss.getCount()); }
			if(sss.getIngNo()==6) { s.setF(sss.getCount()); }
			if(sss.getIngNo()==7) { s.setG(sss.getCount()); }
			if(sss.getIngNo()==8) { s.setH(sss.getCount()); }
			if(sss.getIngNo()==9) { s.setI(sss.getCount()); }
			if(sss.getIngNo()==10) { s.setJ(sss.getCount()); }
		}
		
		for(Stock sss : s_list555) {
			if(sss.getIngNo()==11) { s.setK(sss.getCount()); }
			if(sss.getIngNo()==12) { s.setL(sss.getCount()); }
			if(sss.getIngNo()==13) { s.setM(sss.getCount()); }
		}
		
		for(Stock sss : s_list333) {
			if(sss.getIngNo()==14) { s.setN(sss.getCount()); }
			if(sss.getIngNo()==15) { s.setO(sss.getCount()); }
			if(sss.getIngNo()==16) { s.setP(sss.getCount()); }
			if(sss.getIngNo()==17) { s.setQ(sss.getCount()); }
			if(sss.getIngNo()==18) { s.setR(sss.getCount()); }
			if(sss.getIngNo()==19) { s.setS(sss.getCount()); }
		}
		
		for(Stock sss : s_list444) {
			if(sss.getIngNo()==20) { s.setT(sss.getCount()); }
			if(sss.getIngNo()==21) { s.setU(sss.getCount()); }
			if(sss.getIngNo()==22) { s.setV(sss.getCount()); }
			if(sss.getIngNo()==23) { s.setW(sss.getCount()); }
			if(sss.getIngNo()==24) { s.setX(sss.getCount()); }
		}
		
		int kkk = 0;
		
		for(Ingredient iiiii : ingList111) {
			if(iiiii.getIngNo()==1) { if(order_count > s.getA()) { kkk = 1; } }
			if(iiiii.getIngNo()==2) { if(order_count > s.getB()) { kkk = 1; } }
			if(iiiii.getIngNo()==3) { if(order_count > s.getC()) { kkk = 1; } }
			if(iiiii.getIngNo()==4) { if(order_count > s.getD()) { kkk = 1; } }
			if(iiiii.getIngNo()==5) { if(order_count > s.getE()) { kkk = 1; } }
			if(iiiii.getIngNo()==6) { if(order_count > s.getF()) { kkk = 1; } }
			if(iiiii.getIngNo()==7) { if(order_count > s.getG()) { kkk = 1; } }
			if(iiiii.getIngNo()==8) { if(order_count > s.getH()) { kkk = 1; } }
			if(iiiii.getIngNo()==9) { if(order_count > s.getI()) { kkk = 1; } }
			if(iiiii.getIngNo()==10) { if(order_count > s.getJ()) { kkk = 1; } }
			if(iiiii.getIngNo()==11) { if(order_count > s.getK()) { kkk = 1; } }
			if(iiiii.getIngNo()==12) { if(order_count > s.getL()) { kkk = 1; } }
			if(iiiii.getIngNo()==13) { if(order_count > s.getM()) { kkk = 1; } }
			if(iiiii.getIngNo()==14) { if(order_count > s.getN()) { kkk = 1; } }
			if(iiiii.getIngNo()==15) { if(order_count > s.getO()) { kkk = 1; } }
			if(iiiii.getIngNo()==16) { if(order_count > s.getP()) { kkk = 1; } }
			if(iiiii.getIngNo()==17) { if(order_count > s.getQ()) { kkk = 1; } }
			if(iiiii.getIngNo()==18) { if(order_count > s.getR()) { kkk = 1; } }
			if(iiiii.getIngNo()==19) { if(order_count > s.getS()) { kkk = 1; } }
			if(iiiii.getIngNo()==20) { if(order_count > s.getT()) { kkk = 1; } }
			if(iiiii.getIngNo()==21) { if(order_count > s.getU()) { kkk = 1; } }
			if(iiiii.getIngNo()==22) { if(order_count > s.getV()) { kkk = 1; } }
			if(iiiii.getIngNo()==23) { if(order_count > s.getW()) { kkk = 1; } }
			if(iiiii.getIngNo()==24) { if(order_count > s.getX()) { kkk = 1; } }
		}
		
		if(kkk==1) {
			order_count=0;
		}
		
	// 1. SALES 테이블에 INSERT
		Menu m = new Menu();
		m.setMenNo(ingNo); // 원재료 번호
		m.setCount(order_count); // 판매 개수
		m.setTotal(tot_price); // 
		m.setStoreId(storeId);
//		m.setStoreId((Store)session.getAttribute("loginUser").getUserId());
		
		seonghoonService.insertSales(m);
		
		
		
	// 2. FLOW 테이블에 INSERT
		
		// 이번회차 메뉴에 담긴 ingNo을 담아둔 리스트
		ArrayList<Ingredient> ingList = seonghoonService.selectIngMen(ingNo);
				
		for(Ingredient i : ingList) {
			
			// 반복문을돌려 한 원재료를 i 에 담는다.
			i.setCount(order_count);
			
			i.setStoreId(storeId);
			
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
			
			int c = exp.getCount(); // 차감할 개수
			int use = 0; // 재고 개수
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
	
	
/************* 폐기관리 ********************/
// 1. 단순 포워딩	
@RequestMapping(value="ingredientDisposal.csh")
public String disposalView(Model model) {
	return "seonghoon/폐기관리";
}

// 2. 폐기 관리를 해야할 리스트 
@RequestMapping(value="ingredientDisposal1.csh")
public String selectDisposal(
		Model model,
		@RequestParam(value="p", defaultValue="1") int currentPage,
		@RequestParam(value="ingType", defaultValue="B") String ingType,
		@RequestParam(value="ingName", defaultValue="파마산") String ingName,
		HttpSession session		
		) {
	// 가맹점 아이디를 세션에
	Store user = (Store)session.getAttribute("loginstore");
	String storeId = user.getStoreId();	
	
	Main m = hyunsikService.befIndent2(storeId);
    model.addAttribute("m", m);
	
	// 두개의 select태그의 name값을 hashmap에
	HashMap<String, String> hashmap = new HashMap<>();
	hashmap.put("ingType",ingType);
	hashmap.put("ingName",ingName);
	hashmap.put("storeId",storeId);
	/*
	System.out.println("ingType : "+ingType);
	System.out.println("ingName : "+ingName);
	System.out.println("storeId : "+storeId);
	*/
	
	// 페이징 바를 포함한 select 구현
	
	int listCount = seonghoonService.disposalListCount(hashmap);
	// System.out.println("listCount : "+listCount);
	int pageLimit = 10;
	int boardLimit = 5;
	PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
	ArrayList<Stock> disposal_list = seonghoonService.selectDisposalList(pi,hashmap);
	
	model.addAttribute("pi", pi);
	model.addAttribute("disposal_list", disposal_list);
	
	return "seonghoon/폐기관리";
}

// 3. 폐기를 진행함
@PostMapping(value="disposalUpdate.csh")
public String updateDisposal(
			Model model,
			String ingType,
			String ingName,
			HttpSession session
		) {
	Store user = (Store)session.getAttribute("loginstore");
	String storeId = user.getStoreId();	
	
	Main m = hyunsikService.befIndent2(storeId);
    model.addAttribute("m", m);
	
	HashMap<String, String> hashmap = new HashMap<>();
	hashmap.put("ingType", ingType);
	hashmap.put("ingName", ingName);
	hashmap.put("storeId", storeId);
	
	System.out.println("ingType : "+ingType);
	System.out.println("ingName : "+ingName);
	System.out.println("storeId : "+storeId);
	
	int result = seonghoonService.updateDisposal(hashmap);
	if(result > 0) {
		return "redirect:ingredientDisposal.csh";
	}else {
		return "seonghoon/폐기관리";
	}
	
}
	




}
