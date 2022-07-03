package com.s5.sand5rang.hyunsik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.hyunsik.service.HyunsikService;

@Controller
public class HyunsikController {

	@Autowired
	private HyunsikService hyunsikService;
	
	@RequestMapping(value="hyunsikTest.hs")
	public String gg(Model model) {
		
//		String a = hyunsikService.test();
//		System.out.println(a);
//		model.addAttribute("a", a);
		
		return "hyunsik/메인";
	}
	
	@RequestMapping(value="hyunsikTest2.hs")
	public String ggdd(Model model) {
		
//		String a = hyunsikService.test();
//		System.out.println(a);
//		model.addAttribute("a", a);
		
		return "hyunsik/관리자작성용";
	}

}
