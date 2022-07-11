package com.s5.sand5rang.anna.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.s5.sand5rang.anna.service.AnnaService;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.anna.vo.Inquery;
import com.s5.sand5rang.anna.vo.Store;


@Controller
public class AnnaController {

	@Autowired
	private AnnaService annaService;
	
	// 로그인 
	@RequestMapping(value="login.an") //ReqestMapping 어노테이션을 붙여줌으로써 컨트롤러로 등록
	public String loginStore(Store s) {
		//System.out.println("storeId : " + s.getStoreId());
		//System.out.println("storePwd : " + s.getStorePwd());	
		
		//Service 쪽으로 호출하여 s 넘기기
		Store loginUser = annaService.loginStore(s);
		
		return "anna/login";
	}
	
	@RequestMapping(value="inqAnswer.an")
	public String annatest1() {return "anna/inqueryAnswer";}
	
	@RequestMapping(value="inqDetail.an")
	public String annatest2() {return "anna/inqueryDetail";}
	
	@RequestMapping(value="inqList.an")
	public String annatest3() {return "anna/inqueryList";}
	
	
	
	@RequestMapping(value="joinForm.an")
	public String annatest6() {return "anna/joinForm";}
	
	@RequestMapping(value="changePwd.an")
	public String annatest7() {return "anna/changePwd";}
	
	
	
	
	
	
	
	
	
	
	
	// 문의게시판 전체리스트 조회
		@RequestMapping(value="inqueryList.an")
		public String inqueryList(
				@RequestParam(value="lpage", defaultValue="1") int currentPage,
				Model model) { 
			
			//1.게시글 총 갯수 조회
					int listCount = annaService.selectListCount();
					
					int pageLimit=10;
					int boardLimit=5;
					
					PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
					
					//2.전체리스트 조회
					ArrayList<Inquery> list = annaService.inqueryList(pi);
					
					//System.out.println(list+"조회중");
					model.addAttribute("pi",pi);
					model.addAttribute("list",list);
					
					return "anna/inqueryList";
			
		}
}
