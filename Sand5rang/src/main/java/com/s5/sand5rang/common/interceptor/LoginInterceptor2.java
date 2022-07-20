package com.s5.sand5rang.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.s5.sand5rang.sein.vo.Store;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/*
 * * Interceptor(인터셉터)
 * - 컨트롤러로 들어오는 요청과 응답을 가로채는 역할
 * - 필터와 유사하게 요청 처리 전 선처리 해주는 역할
 * 
 * * Interceptor 간섭시점
 * 1. 요청 전 : preHandle => Controller 에 도달하기 전 선처리할 내용물을 정의
 * 2. 요청 이후 : postHandle => Controller 에서 처리 후 응답페이지로 도달하기 전에 후처리할 내용물을 정의
 * 
 * * Interceptor 구현 방식 2가지
 * 1. HandlerInterceptor 인터페이스를 상속받아서 구현하는 방법 : 모든 메소드를 다 오버라이딩해야되기 때문에
 * 													    내가 필요하지 않은 메소드도 만들어야한다는 단점
 * 2. HandlerInterceptorAdapter 클래스를 상속받는 방법 : 내가 원하는 애들만 오버라이딩이 가능하다.
 */

public class LoginInterceptor2 extends HandlerInterceptorAdapter {
	
	// 1. preHandle (선처리)
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	
		// 매개변수
		// - request : 사용자의 요청, 즉, 사용자가 보낸 전달값
		// - response : 요청에 대한 응답, 즉, 사용자에게 첨부할 내용물
		// - handler : 이 요청은 누가 처리하기로 했는가?
//		System.out.println("작동함?");
//		System.out.println(handler.toString());
		
		// 로그인이 된 상태인지 검사하는 코드 추가 => session 에 loginUser 가 있는지 검사
		HttpSession session = request.getSession();
		Store s = new Store();
		
		if(session.getAttribute("loginstore") != null) {
		 s = (Store)(session.getAttribute("loginstore"));
		}else {
			s.setStoreId("111111");
		}
		
		if( s.getStoreId() == "admin") {
			return true;
		}else {
			session.setAttribute("alertMsg", "관리자만 이용 가능한 서비스입니다.");
			session.removeAttribute("loginstore");
			response.sendRedirect(request.getContextPath());
			return false;
		}
		
		// 리턴값
		// - true : 요청 도달 / false : 요청에 도달하지 않고 끊어버림
//		return true;
		
	}
	
	// 2. postHandle (후처리)
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView mv) throws Exception {
		
		// 매개변수
		// - request : 사용자의 요청, 즉, 사용자가 보낸 전달값
		// - response : 요청에 대한 응답, 즉, 사용자에게 첨부할 내용물
		// - handler : 이 요청은 누가 처리하기로 했는가?
		// - modelAndView : model (전달데이터) + view (출력페이지) 정보
		
//		System.out.println(mv.toString());
		
		// postHandle 은 반환형이 없음 => 이미 Controller 에서 요청 처리가 끝났기 때문에 못되돌림
		
	}
	
}
