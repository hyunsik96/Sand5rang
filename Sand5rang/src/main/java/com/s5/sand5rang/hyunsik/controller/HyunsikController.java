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
	public String gg() {return "hyunsik/메인";}
	
	@RequestMapping(value="hyunsikTest2.hs")
	public String gg2() {return "hyunsik/admin1";}
	
	@RequestMapping(value="hyunsikTest3.hs")
	public String gg3() {return "hyunsik/admin2";}

}
