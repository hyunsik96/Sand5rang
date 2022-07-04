package com.s5.sand5rang.sangmi.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.sangmi.service.SangmiService;
import com.s5.sand5rang.sangmi.vo.Store;

@Controller
public class SangmiController {

	@Autowired
	private SangmiService SangmiService;
	
	@RequestMapping(value="storeList.sm")
	public String storeList(Model model) {
		
		//전체리스트 조회
		
		ArrayList<Store> list = SangmiService.storeList();
		
		
		model.addAttribute("list",list);
		return "sangmi/storeList";
	}
}
