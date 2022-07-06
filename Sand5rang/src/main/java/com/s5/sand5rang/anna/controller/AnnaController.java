package com.s5.sand5rang.anna.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.s5.sand5rang.anna.service.AnnaService;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.sangmi.vo.Store;


@Controller
public class AnnaController {

	@Autowired
	private AnnaService annaService;
	
	@RequestMapping(value="annatest.an")
	public String annatest1() {return "anna/inqueryAnswer";}
	
	@RequestMapping(value="annatest2.an")
	public String annatest2() {return "anna/inqueryDetail";}
	
	@RequestMapping(value="annatest3.an")
	public String annatest3() {return "anna/inqueryList";}
	
	@RequestMapping(value="annatest4.an")
	public String annatest4() {return "anna/signUpInq";}
	
	
	// 문의게시판 전체리스트 조회
		@RequestMapping(value="inqueryList.an")
		public String inqueryList(
				@RequestParam(value="lpage", defaultValue="1") int currentPage,
				Model model) { 
			
			//1.게시글 총 갯수 조회
					int listCount = AnnaService.selectListCount();
					
					int pageLimit=10;
					int boardLimit=5;
					
					PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
					
					//2.전체리스트 조회
					ArrayList<Store> list = AnnaService.inqueryList(pi);
					
					//System.out.println(list+"조회중");
					model.addAttribute("pi",pi);
					model.addAttribute("list",list);
					
					return "anna/inqueryList";
			
		}
}
