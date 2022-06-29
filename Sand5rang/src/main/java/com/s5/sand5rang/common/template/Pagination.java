package com.s5.sand5rang.common.template;

import com.s5.sand5rang.common.model.vo.PageInfo;

public class Pagination {
	
	public static PageInfo getPageInfo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		
		// 위의 변수들을 이용해서 계산해서 구해야 하는 변수들
		int maxPage = (int)Math.ceil((double)listCount / boardLimit); // 마지막이 몇 페이지인지
		int startPage = (int)Math.floor((double)(currentPage - 1)/pageLimit)*pageLimit + 1; // 페이지 하단에 보여질 페이징바의 시작수
		int endPage = startPage + pageLimit - 1; // 페이지 하단에 보여질 페이징바의 끝 수
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(listCount, currentPage, pageLimit, boardLimit, maxPage, startPage, endPage);
		
		return pi;
		
	}

}
