package com.s5.sand5rang.hyunsik.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.hyunsik.service.HyunsikService;
import com.s5.sand5rang.hyunsik.vo.Indent;

@Controller
public class HyunsikController {

	@Autowired
	private HyunsikService hyunsikService;
	
	
	@RequestMapping(value="hyunsikTest2.hs")
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
	
	@RequestMapping(value="hyunsikTest3.hs")
	public String gg3() {return "hyunsik/admin2";}

	@RequestMapping(value="hyunsikTest4.hs")
	public String gg4() {return "hyunsik/admin3";}
	
	
	
}
