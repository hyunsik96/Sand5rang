package com.s5.sand5rang.sangmi.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.sangmi.service.SangmiService;
import com.s5.sand5rang.sangmi.vo.Enroll;
import com.s5.sand5rang.sangmi.vo.Inquery;
import com.s5.sand5rang.sangmi.vo.Store;

@Controller
public class SangmiController {

	@Autowired
	private SangmiService SangmiService;
	
	//가맹점 전체리스트 조회
	@RequestMapping(value="storeList.sm")
	public String storeList(
			@RequestParam(value="cpage", defaultValue="1") int currentPage,
			Model model) {

		//1.게시글 총 갯수 조회
		int listCount = SangmiService.selectListCount();
		
		int pageLimit=10;
		int boardLimit=5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//2.전체리스트 조회
		ArrayList<Store> list = SangmiService.storeList(pi);
		
		//System.out.println(list+"조회중");
		model.addAttribute("pi",pi);
		model.addAttribute("list",list);

		return "sangmi/storeList";
	}
	// 폐업 버튼을 누르면 store에 status의 값이 n으로 변경해주는것

	@RequestMapping("storeclose.sm")
	public String storeclose(int enrNo,Model model, HttpSession session) {
		
		
		int result = SangmiService.storeclose(enrNo);
		
	
		 if(result > 0) {
				
				session.setAttribute("alertMsg", "성공적으로 폐업처리가 되었습니다."); //알람 안뜸=> 확인하기 
				
				return "redirect:storeList.sm";
				
			}
			else {
				
				model.addAttribute("alertMsg", "폐업 처리 실패");
				
				return "common/errorAd";
			}
		 
		}
		
	
	
	//가맹가입신청 list 조회
	
	@RequestMapping(value="storeEnrollList.sm")
	public String storeEnrollList(
			@RequestParam(value="cpage", defaultValue="1") int currentPage,
			Model model) {

		//1.게시글 총 갯수 조회
		int listCount = SangmiService.selectListCount();
		
		int pageLimit=10;
		int boardLimit=5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//2.전체리스트 조회
		ArrayList<Enroll> list = SangmiService.storeEnrollList(pi);
		
		//System.out.println(list+"조회중");
		model.addAttribute("pi",pi);
		model.addAttribute("list",list);

		return "sangmi/storeEnrollList";
	}
	
	
	
	/*
	@RequestMapping(value="storeEnrollDetail.sm")
	public String storeEnrollDetail(Model model) {
		
		return "sangmi/storeEnrollDetail";
	}
	*/
	//가맹가입신청 상세페이지
	@RequestMapping(value="storeEnrollDetail.sm")
	public ModelAndView storeEnrollDetail(int enr, ModelAndView mv) {
		
		//번호뽑아야 한다. 
		//상세 조회 
		Enroll e = SangmiService.storeEnrollDetail(enr);
		
		mv.addObject("e", e).setViewName("sangmi/storeEnrollDetail");
		
		//=> 가입신청 enr 못찾는 오류 가 난다.. (잠시 )
		return mv;
	}

	
	// 1:1 문의 전체조회
	@RequestMapping(value="inqueryList.sm")
	public String inqueryList(
			@RequestParam(value="cpage", defaultValue="1") int currentPage
			,Model model) {
		
		//1.게시글 총 갯수 조회
		int listCount = SangmiService.selectListCount();
		
		int pageLimit=10;
		int boardLimit=5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//2.전체리스트 조회
		ArrayList<Inquery> list = SangmiService.inqueryList(pi);
		
		model.addAttribute("pi",pi);
		model.addAttribute("list",list);
		
		
		return "sangmi/inqueryList";
	}
	
	
	//1:1문의 작성폼
	@RequestMapping(value="inqueryEnroll.sm")
	public String inqueryEnroll(Model model) {
		
		return "sangmi/inqueryEnroll";
	}
	//1:1문의 글 작성
	@RequestMapping(value="insert.sm")
	public String inquertInsert(Inquery i, HttpSession session, Model model) {
		
		int result = SangmiService.inquertInsert(i);
		
		if(result >0 ) {
			
			session.setAttribute("alertMsg", "성공적으로 등록됨");
			
			return "redirect:inqueryList.sm";
		}
		else {
		
			model.addAttribute("errorMsg", "게시글 등록 실패");
			
			return "common/errorFr";
		}
		
	}
	
	//1:1문의 수정
	@RequestMapping(value="inquerUpdate.sm")
	public String inqueryUpdate(Model model) {
		
		return "sangmi/inqueryUpdate";
	}
	//1:1문의 상세조회
		@RequestMapping(value="inqueryDetail.sm")
		public String inqueryDetail(Model model) {
			
			return "sangmi/inqueryDetail";
		}
	//FAQ 
	@RequestMapping(value="faq.sm")
	public String faq(Model model) {
		return "sangmi/faq";
	}
	
}
