package com.s5.sand5rang.anna.controller;

import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
import com.s5.sand5rang.anna.vo.Enroll;
import com.s5.sand5rang.anna.vo.Inquery;
import com.s5.sand5rang.anna.vo.Store;


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
			@RequestParam(value="cpage", defaultValue="1") int currentPage, Model model) {
		
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
//
//	// 답변달린 걸 보는건지,,? 이부분 모르겠음 ,,!!! 
//	@RequestMapping(value="inqDetail.an")
//	public String joinForm(String answer, int inqNo) {
//		
//		Inquery i = annaService.selectInquery(i);
//	
//		return "redirect:ansForm.an?ino="+i;
//	}
//	
	

	
	// 가맹문의 폼
	@RequestMapping(value="joinForm.an")
	public String joinForm(Enroll e, HttpSession session, Model model) {
		return "anna/joinForm";
	}
	
	@RequestMapping(value="joinForm2.an") // 가입 승인 처리(버튼) 
	public String joinForm2(Enroll e, HttpSession session, Model model) {
	int result = annaService.joinForm(e);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 문의가 등록되었습니다.");
			return "redirect:joinForm.an";
		}
		else {
			model.addAttribute("errorMsg", "문의등록에 실패하였습니다. 다시 시도해주세요.");
			return "common/errorFr";
		}	
	}
	
	
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="emailCheck.me", produces="text/html; charset=UTF-8")
	 * public int emailChecker (String checkEmail) {
	 * 
	 * 
	 * 
	 * int mailAutNo = EmailSend.naverMailSend(checkEmail);
	 * 
	 * }
	 */
	

	
	// 

}




	

