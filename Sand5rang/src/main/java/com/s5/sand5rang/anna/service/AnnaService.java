package com.s5.sand5rang.anna.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.s5.sand5rang.anna.dao.AnnaDao;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.hyunsik.dao.HyunsikDao;
import com.s5.sand5rang.sangmi.vo.Store;

@Service
public class AnnaService {

	@Autowired
	private AnnaDao annaDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 문의게시판 전체리스트 조회
	public int selectListCount() {
		return AnnaDao.selectListCount(sqlSession);
	}

	public static ArrayList<Store> inqueryList(PageInfo pi) {
		
		return AnnaDao.inqueryList(sqlSession,pi);
	}
}

