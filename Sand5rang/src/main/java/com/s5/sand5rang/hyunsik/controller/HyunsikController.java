package com.s5.sand5rang.hyunsik.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.hyunsik.service.HyunsikService;
import com.s5.sand5rang.hyunsik.vo.EmailSendHs;
import com.s5.sand5rang.hyunsik.vo.Enroll;
import com.s5.sand5rang.hyunsik.vo.Indent;
import com.s5.sand5rang.hyunsik.vo.Main;
import com.s5.sand5rang.hyunsik.vo.Payment;
import com.s5.sand5rang.hyunsik.vo.StockF;
import com.s5.sand5rang.hyunsik.vo.StockS;
import com.s5.sand5rang.sein.vo.Store;
import com.s5.sand5rang.seonghoon.service.SeonghoonService;
import com.s5.sand5rang.seonghoon.vo.Ingredient;
import com.s5.sand5rang.seonghoon.vo.Stock;

@Controller
public class HyunsikController {

	@Autowired
	private HyunsikService hyunsikService;
	

	@Autowired
	private SeonghoonService seonghoonService;
	
	// 관리자 주문리스트
	@RequestMapping(value="ad1.hs")
	public String adCusIndentList(
			@RequestParam(value="p", defaultValue="1") int currentPage, 
			Model model) {

		int listCount = hyunsikService.ad1ListCount();

		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		
		
		ArrayList<String> idList = hyunsikService.selectAd1List(pi);
		ArrayList<Indent> indList = null;
		ArrayList<ArrayList<Indent>> list = new ArrayList<>();
		for(String id : idList) {
			indList = hyunsikService.selectIndLIst(id);
			list.add(indList);
		}

		model.addAttribute("pi", pi);
		model.addAttribute("list", list);

		return "hyunsik/admin1";
	}
	
	@RequestMapping(value="ad2.hs")
	public String factoryIndentList(
			@RequestParam(value="p", defaultValue="1") int currentPage, 
			Model model) {
		
		int listCount = hyunsikService.facListCount();
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<String> dateList = hyunsikService.selectAd2List(pi);
		ArrayList<Indent> facList = null;
		ArrayList<ArrayList<Indent>> list = new ArrayList<>();
		for(String date : dateList) {
			facList = hyunsikService.facIndList(date);
			list.add(facList);
		}
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);

		return "hyunsik/admin2";
	}

	@RequestMapping(value="ad3.hs")
	public String paymentList(
			@RequestParam(value="p", defaultValue="1") int currentPage, 
			Model model) {
	
		int listCount = hyunsikService.payListCount();
		int pageLimit = 10;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Payment> list = hyunsikService.paymentList(pi);
		int index = 0;
		
		for(Payment p : list) {
			list.get(index).setTotal(hyunsikService.realPayList(p));
			index++;
		}
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);

		return "hyunsik/admin3";
	}
	
	// 관리자 주문리스트에서 승인
	@RequestMapping(value="ad1app.hs")
	public String adCusApp(String storeId, String status) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("storeId", storeId);
		map.put("status", status);
		
		// 승인처리 (발주 상태값 B or AB => Y or AY)
		hyunsikService.adCusApp(map);
		
		// 승인내역 결제대금 테이블에 합쳐서 저장
		hyunsikService.storePay(storeId);

		return "redirect:ad1.hs";	

	}
	
	// 관리자 주문리스트에서 반려
	@RequestMapping(value="ad1dis.hs")
	public String adCusDis(String storeId) {
		
		int result = hyunsikService.adCusDis(storeId);
		
		if(result>0) {
			return "redirect:ad1.hs";
		}else {
			return "common/errorAd";
		}
		
	}
	
	
	// 매일 15시 00분 00초 실행
    @Scheduled(cron="00 00 15 * * ?")
    public void facIndent() {
    	
    	// 미처리 발주 일괄 반려처리
    	hyunsikService.disAll();
    	
    	// 24가지 재료별 공장발주 FACTORY 테이블 INSERT
    	for(int i = 1; i<25; i++) {
    	hyunsikService.facInd(i);
    	}
    	
    }
    
    
    // 매일 07시 00분 00초 실행
    @Scheduled(cron="00 00 07 * * ?")
    public void storeIn() {
    	
    	// 전날 15시 발주승인된 리스트 불러오기
    	ArrayList<Indent> list = hyunsikService.storeInList();
    	
    	// 전날 승인받은 발주 각 가맹점으로 입고
    	for(Indent i : list) {
    		
    		// 재고테이블 추가처리
    		hyunsikService.addStock(i);
    		
    		// 기록테이블 추가처리
    		hyunsikService.addFlow(i);
    	}
    	
    }
    
	@RequestMapping(value="ingredientAllStock.csh")
	public String ingredientAllStockList( HttpSession session,
			Model model,
			@RequestParam(value="p",defaultValue="1") int currentPage
			){
		// 재고 합계

		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		Main mm = hyunsikService.befIndent2(storeId);
        model.addAttribute("mm", mm);
		StockF sf = new StockF();
		sf.setStoreId(storeId);
		 
		sf.setIndex(1); sf.setType("B"); int b = hyunsikService.getMyStock(sf); model.addAttribute("b", b);
		sf.setIndex(1); sf.setType("V"); int v = hyunsikService.getMyStock(sf); model.addAttribute("v", v);
		sf.setIndex(6); sf.setType("M"); int m = hyunsikService.getMyStock(sf); model.addAttribute("m", m);
		sf.setIndex(6); sf.setType("C"); int c = hyunsikService.getMyStock(sf); model.addAttribute("c", c);
		sf.setIndex(13); sf.setType("S"); int s = hyunsikService.getMyStock(sf); model.addAttribute("s", s);
		
		
		
		// 재고 현황
		
		int flowDate = hyunsikService.endFlowDate(storeId);
		
//입출고 내역이 있을때		
if(flowDate!=0) {
	
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMdd");
		String formatedNow = now.format(formatter);
		int nowDate = Integer.parseInt(formatedNow);		
		
		int chai = nowDate - flowDate;
		
		int listCount = (chai+1)*2;
		
		if(chai==0) {
			listCount = 0;
		}
		
		int pageLimit = 10;
		int boardLimit = 6;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<StockF> indexList = hyunsikService.indexList(pi, listCount);
		
		StockF fsf = new StockF();
		fsf.setStoreId(storeId);
		ArrayList<StockF> list = new ArrayList<>();
		
		for(int i = 0; i < indexList.size(); i+=2) {
			
			fsf.setIndex(indexList.get(i).getIndex());
			
			fsf.setIo("O"); list.add(hyunsikService.flowList(fsf));
			
			fsf.setIo("I"); list.add(hyunsikService.flowList(fsf));
		}
		
		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
			
// 입출고 내역이 없을때
}else {
		model.addAttribute("confirm", 1);
}
		
	return "seonghoon/전체재고현황";
	}

	
	
	// 가맹점 결제대금내역 리스트 조회
	@RequestMapping(value="fr1.hs")
	public String frPayList(HttpSession session, 
			@RequestParam(value="p", defaultValue="1") int currentPage, 
			Model model) {
	
		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);
		int listCount = hyunsikService.payListCount2(storeId);
		int pageLimit = 10;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Payment> list = hyunsikService.paymentList2(pi, storeId);
		int index = 0;
		
		for(Payment p : list) {
			list.get(index).setTotal(hyunsikService.realPayList(p));
			index++;
		}
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);

		return "sein/depositList";
		
		
	}
	
	public int forceStop(String storeId, int menNo, int count) {
		
		ArrayList<Ingredient> ingList = seonghoonService.selectIngMen(menNo);
		
		ArrayList<Stock> s_list1 = seonghoonService.selectStock1(storeId);
		ArrayList<Stock> s_list2 = seonghoonService.selectStock2(storeId);
		ArrayList<Stock> s_list3 = seonghoonService.selectStock3(storeId);
		ArrayList<Stock> s_list4 = seonghoonService.selectStock4(storeId);
		ArrayList<Stock> s_list5 = seonghoonService.selectStock5(storeId);
		
		StockS s = new StockS(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
		
		for(Stock sss : s_list1) {
			if(sss.getIngNo()==1) { s.setA(sss.getCount()); }
			if(sss.getIngNo()==2) { s.setB(sss.getCount()); }
			if(sss.getIngNo()==3) { s.setC(sss.getCount()); }
		}
		
		for(Stock sss : s_list2) {
			if(sss.getIngNo()==4) { s.setD(sss.getCount()); }
			if(sss.getIngNo()==5) { s.setE(sss.getCount()); }
			if(sss.getIngNo()==6) { s.setF(sss.getCount()); }
			if(sss.getIngNo()==7) { s.setG(sss.getCount()); }
			if(sss.getIngNo()==8) { s.setH(sss.getCount()); }
			if(sss.getIngNo()==9) { s.setI(sss.getCount()); }
			if(sss.getIngNo()==10) { s.setJ(sss.getCount()); }
		}
		
		for(Stock sss : s_list5) {
			if(sss.getIngNo()==11) { s.setK(sss.getCount()); }
			if(sss.getIngNo()==12) { s.setL(sss.getCount()); }
			if(sss.getIngNo()==13) { s.setM(sss.getCount()); }
		}
		
		for(Stock sss : s_list3) {
			if(sss.getIngNo()==14) { s.setN(sss.getCount()); }
			if(sss.getIngNo()==15) { s.setO(sss.getCount()); }
			if(sss.getIngNo()==16) { s.setP(sss.getCount()); }
			if(sss.getIngNo()==17) { s.setQ(sss.getCount()); }
			if(sss.getIngNo()==18) { s.setR(sss.getCount()); }
			if(sss.getIngNo()==19) { s.setS(sss.getCount()); }
		}
		
		for(Stock sss : s_list4) {
			if(sss.getIngNo()==20) { s.setT(sss.getCount()); }
			if(sss.getIngNo()==21) { s.setU(sss.getCount()); }
			if(sss.getIngNo()==22) { s.setV(sss.getCount()); }
			if(sss.getIngNo()==23) { s.setW(sss.getCount()); }
			if(sss.getIngNo()==24) { s.setX(sss.getCount()); }
		}
		
		int kkk = 0;
		
		for(Ingredient iiiii : ingList) {
			if(iiiii.getIngNo()==1) { if(count > s.getA()) { kkk = 1; } }
			if(iiiii.getIngNo()==2) { if(count > s.getB()) { kkk = 1; } }
			if(iiiii.getIngNo()==3) { if(count > s.getC()) { kkk = 1; } }
			if(iiiii.getIngNo()==4) { if(count > s.getD()) { kkk = 1; } }
			if(iiiii.getIngNo()==5) { if(count > s.getE()) { kkk = 1; } }
			if(iiiii.getIngNo()==6) { if(count > s.getF()) { kkk = 1; } }
			if(iiiii.getIngNo()==7) { if(count > s.getG()) { kkk = 1; } }
			if(iiiii.getIngNo()==8) { if(count > s.getH()) { kkk = 1; } }
			if(iiiii.getIngNo()==9) { if(count > s.getI()) { kkk = 1; } }
			if(iiiii.getIngNo()==10) { if(count > s.getJ()) { kkk = 1; } }
			if(iiiii.getIngNo()==11) { if(count > s.getK()) { kkk = 1; } }
			if(iiiii.getIngNo()==12) { if(count > s.getL()) { kkk = 1; } }
			if(iiiii.getIngNo()==13) { if(count > s.getM()) { kkk = 1; } }
			if(iiiii.getIngNo()==14) { if(count > s.getN()) { kkk = 1; } }
			if(iiiii.getIngNo()==15) { if(count > s.getO()) { kkk = 1; } }
			if(iiiii.getIngNo()==16) { if(count > s.getP()) { kkk = 1; } }
			if(iiiii.getIngNo()==17) { if(count > s.getQ()) { kkk = 1; } }
			if(iiiii.getIngNo()==18) { if(count > s.getR()) { kkk = 1; } }
			if(iiiii.getIngNo()==19) { if(count > s.getS()) { kkk = 1; } }
			if(iiiii.getIngNo()==20) { if(count > s.getT()) { kkk = 1; } }
			if(iiiii.getIngNo()==21) { if(count > s.getU()) { kkk = 1; } }
			if(iiiii.getIngNo()==22) { if(count > s.getV()) { kkk = 1; } }
			if(iiiii.getIngNo()==23) { if(count > s.getW()) { kkk = 1; } }
			if(iiiii.getIngNo()==24) { if(count > s.getX()) { kkk = 1; } }
		}
		
		return kkk;

	}
	
	/*********** 판매기입페이지 ***********/
	@RequestMapping(value="salesPage0.csh")
	public String salesPage0(Model model, HttpSession session) {
		
		Store user = (Store)session.getAttribute("loginstore");

		String storeId = user.getStoreId();
		Main m = hyunsikService.befIndent2(storeId);
        model.addAttribute("m", m);
		int aaaaa = hyunsikService.countSales(storeId);
		
		if(aaaaa!=0) {
			session.setAttribute("alertMsg", "이미 오늘의 판매 기입이 완료되었습니다.");
			
			return "redirect:menuSales.csh"; 
			
		}
		
		return "seonghoon/판매기입페이지"; 
	}
	
	@RequestMapping(value="joinStoreForm.hs")
	public String joinjoin() {
		return "hyunsik/joinFormHs";
	}
	
	@ResponseBody
	@RequestMapping(value="emailCheck.hs", produces="text/html; charset=UTF-8")
	public String checkEmail(String checkEmail) {
		
		int a = hyunsikService.checkEmail(checkEmail);
		
		if(a>0) {
			return "NNNNN";
		}else {
			return "NNNNY";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="emailSend.hs", produces="text/html; charset=UTF-8")
	public String sendEmail(String userEmail) {
		
		int autNo = EmailSendHs.naverMailSend(userEmail);
		
		return Integer.toString(autNo);
		
	}
	
	@RequestMapping(value="insertStore.hs")
	public String insertStore(String storeName, String phone, String email, String region2, String subject, String content, HttpSession session) {
		
		Enroll e = new Enroll();
		
		e.setName(storeName); e.setPhone(phone); e.setEmail(email); e.setAddress(region2); e.setTitle(subject); e.setContent(content);
		
		int result = hyunsikService.insertStore(e);
		
		if(result>0) {
			session.setAttribute("alertMsg", "신청되었습니다.");
			return "redirect:/";
		}else {
			session.setAttribute("alertMsg", "신청에 실패하였습니다. 다시 시도해주세요.");
			return "redirect:/";
		}
		

	}
	

}
