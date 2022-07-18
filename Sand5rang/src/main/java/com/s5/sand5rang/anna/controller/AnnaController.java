package com.s5.sand5rang.anna.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.s5.sand5rang.anna.service.AnnaService;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.anna.vo.EmailSend;
import com.s5.sand5rang.anna.vo.Enroll;
import com.s5.sand5rang.anna.vo.Inquery;


@Controller
public class AnnaController {

	@Autowired
	private AnnaService annaService;
	

	
	@RequestMapping(value="login.an")
	public String login() {
		return "anna/login";
	}
	
	
	// 문의 게시판 리스트 조회
	@RequestMapping(value="inqList.an")
	public String inqueryList(
			@RequestParam(value="cpage", defaultValue="1") int currentPage,
			@RequestParam(value="cate", defaultValue="0") int cate, Model model) {
		
		// cate == 0 ; 전체 . 1. 2. 3.
		
		//1.게시글 총 갯수 조회
		int listCount = annaService.selectListCount(cate);
		
		int pageLimit=10;
		int boardLimit=10;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		//2.전체리스트 조회
		ArrayList<Inquery> list = annaService.inqueryList(pi, cate);
		
		//System.out.println(list+"조회중");
		model.addAttribute("pi",pi);
		model.addAttribute("list",list);
		model.addAttribute("cate", cate);
		return "anna/inqueryList";

	} 

	// 문의 게시판 상세보기
	@RequestMapping(value="inqDetail.an")
	public ModelAndView selectInquery(int ino,ModelAndView mv) {
			
			Inquery i = annaService.selectInquery(ino);
			
			mv.addObject("i",i).setViewName("anna/inqueryDetail");
			
			return mv;
	}
		
	// 문의 답변 폼 (상세보기+답변폼)
	@RequestMapping(value="ansForm.an")
	public String answerForm(int ino, Model model) {
		
		Inquery i = annaService.selectInquery(ino);
		model.addAttribute("i", i);
		return "anna/answerForm";
	}
	
	// 문의 답변 등록 
	@RequestMapping(value="enrollAnswer.an")
	public String enrollAswer(Inquery i, HttpSession session, Model model) {
		
		int result = annaService.enrollAnswer(i);
	
		if(result>0) {
			session.setAttribute("alertMsg", "답변이 등록되었습니다.");
			return "redirect:inqList.an";
		}
		else {
			model.addAttribute("errorMsg", "답변 등록에 실패하였습니다.");
			return "common/errorFr";
		}	
	}

	
	// 가맹문의 폼 띄우기 
	@RequestMapping(value="joinForm.an")
	public String joinForm() {
		return "anna/joinForm";
	}

	 // 이메일 중복 확인 
	 @ResponseBody // 데이터를 반환해줄 것.. 이메일이 중복되면 매개변수로 NNNNN / 중복되지 않는다면 NNNNY로 
	 @RequestMapping(value="emailCheck.an", produces="text/html; charset=UTF-8")
	 public String checkEmail (String checkEmail) {

	 int a = annaService.checkEmail(checkEmail);
			
		if(a > 0) { 
			return "NNNNN";
		} else {
			return "NNNNY";
		}
	 }
	 
	 // 이메일이 중복되지 않을 시 인증번호 발송
	 @ResponseBody
	 @RequestMapping(value="emailSend.an", produces="text/html; charset=UTF-8")
	 public String sendEmail(String userEmail) {
			
		int autNo = EmailSend.naverMailSend(userEmail);
			
		return Integer.toString(autNo);
			
	}
	 
	// 가맹문의 등록  
	@RequestMapping(value="insertStore.an") // 가입 승인 처리(버튼) 
	public String insertStore(String storeName, String phone, String email, String region2, String subject, String content, HttpSession session) {
		
		Enroll e = new Enroll();
		
		e.setName(storeName); e.setPhone(phone); e.setEmail(email); 
		e.setAddress(region2); e.setTitle(subject); e.setContent(content);
		
		int result = annaService.insertStore(e);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 문의가 등록되었습니다.");
			return "redirect:/";
		}else {
			session.setAttribute("errorMsg", "문의등록에 실패하였습니다. 다시 시도해주세요.");
			return "redirect:/";
		}	
	}
}

	  




	

