package com.s5.sand5rang.anna.controller;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.s5.sand5rang.anna.service.AnnaService;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.common.template.Pagination;
import com.s5.sand5rang.anna.vo.Inquery;
import com.s5.sand5rang.anna.vo.Store;


@Controller
public class AnnaController {

	@Autowired
	private AnnaService annaService;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	// 로그인 
	@RequestMapping(value="login.an") //ReqestMapping 어노테이션을 붙여줌으로써 컨트롤러로 등록
	public ModelAndView loginStore(
			  Store s,
			  HttpSession session,
			  ModelAndView mv, 
			 /* String saveId,*/
			  HttpServletResponse response) {
		
		// saveId 'y'라면 아이디 쿠키 생성하여 저장하겠다.
		/*if(saveId != null && saveId.equals("y")) {
			
			Cookie cookie = new Cookie("saveId", s.getStoreId());
			cookie.setMaxAge(1 * 24 * 60 * 60); // 초로 환산해서 만료시간 1일
			response.addCookie(cookie);
		} else {
			Cookie cookie = new Cookie("saveId", s.getStoreId());
			cookie.setMaxAge(0); // 삭제한 효과
			response.addCookie(cookie);
		}*/
		
		// 비밀번호 암호화 후  s의 storePwd 필드 : 폄문 비밀번호 값
		// loginUser의 storePwd 필드 : 암호화된 비밀번호 값
		
		// 1차 체크 : 아이디 일치 확인
		Store loginUser = annaService.loginStore(s);
		
		
		//2차 체크 : 비밀번호 일치 확인
		// Bcryp..머시기 클래스에서 제공하는 matches 메소드 사용
		// 매치스(평문, 암호문) 대조하여 일치 여부 확인 (일치=true/ 불일치=false)
		
		if(loginUser != null && bCryptPasswordEncoder.matches(s.getStorePwd(), loginUser.getStorePwd())) { // 로그인 성공
				if(loginUser.getStoreId().equals("admin")) {
					session.setAttribute("alertMsg", "관리자 권한으로 로그인 되었습니다.");
					mv.setViewName("redirect:/admain.hs"); // jsp말고 주소넣고 싶으면 어떻게 해야하는지?? 이게 맞나??
				}
				else {
					session.setAttribute("loginUser", loginUser);
					session.setAttribute("alertMsg", "가맹점주님 반갑습니다.");
					
					mv.setViewName("redirect:/");
				}
			}else { // 로그인 실패 => 에러페이지로 포워딩
					
					mv.addObject("errorMsg", "로그인 실패");
					mv.setViewName("common/errorPage"); // /WEB-INF/views/common/errorPage.jsp
				}
		
		return mv;
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
