package com.s5.sand5rang.hyunsik.controller;

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
import com.s5.sand5rang.hyunsik.controller.scheduler.Scheduler;
import com.s5.sand5rang.hyunsik.service.HyunsikService;
import com.s5.sand5rang.hyunsik.vo.Indent;

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
	public String gg3() {return "hyunsik/admin2";}

	@RequestMapping(value="ad3.hs")
	public String gg4() {return "hyunsik/admin3";}
	
	// 관리자 주문리스트에서 승인
	@RequestMapping(value="ad1app.hs")
	public String adCusApp(String storeId, String status) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("storeId", storeId);
		map.put("status", status);
		
		int result = hyunsikService.adCusApp(map);
		
		if(result>0) {
			return "redirect:ad1.hs";
		}else {
			return "common/errorAd";
		}
		

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
	
    @Scheduled(cron="00 00 15 * * ?")
    public void facIndent() {
    	
    	// 미처리 발주 일괄 반려처리
    	hyunsikService.disAll();
    	
    	// 24가지 재료별 공장발주 FACTORY 테이블 INSERT
    	for(int i = 1; i<25; i++) {
    	hyunsikService.facInd(i);
    	}
    	
    }
	
	
}
