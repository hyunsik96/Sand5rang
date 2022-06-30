package com.s5.sand5rang.hyunsik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.s5.sand5rang.hyunsik.service.HyunsikService;

@Controller
public class HyunsikController {

	@Autowired
	private HyunsikService hyunsikService;
	
	@RequestMapping(value="hyunsikTest.hs")
	public String gg() {
		return "hyunsik/관리자작성용";
	}
	
	@RequestMapping(value="hyunsikTest2.hs")
	public String gg2() {
		return "anna/관리자작성용";
	}
	
	@RequestMapping(value="hyunsikTest3.hs")
	public String gg3() {
		return "sangmi/관리자작성용";
	}
	
	@RequestMapping(value="hyunsikTest4.hs")
	public String gg4() {
		return "seonghoon/관리자작성용";
	}
	
	@RequestMapping(value="hyunsikTest5.hs")
	public String gg5() {
		return "sein/관리자작성용";
	}
}
