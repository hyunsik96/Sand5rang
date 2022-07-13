package com.s5.sand5rang.hyunsik.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.hyunsik.service.HyunsikService;
import com.s5.sand5rang.hyunsik.vo.Indent;
import com.s5.sand5rang.hyunsik.vo.Payment;
import com.s5.sand5rang.hyunsik.vo.StockF;

@Controller
public class HyunsikController {

	@Autowired
	private HyunsikService hyunsikService;
	
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
	public String ingredientAllStockList(
			Model model,
			@RequestParam(value="p",defaultValue="1") int currentPage
			){
		// 재고 합계
		// storeId=15라 가정
		String storeId= "15";
		
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
	public String frPayList(
			@RequestParam(value="p", defaultValue="1") int currentPage, 
			Model model) {
	
		String storeId = "47";
		
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
	
	
	

}
