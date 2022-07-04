package com.s5.sand5rang.sangmi.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.sangmi.dao.SangmiDao;
import com.s5.sand5rang.sangmi.vo.Enroll;
import com.s5.sand5rang.sangmi.vo.Store;

@Service
public class SangmiService {

	@Autowired
	private SangmiDao SangmiDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//게시글 리스트 조회 
	public ArrayList<Store> storeList() {
		
		return SangmiDao.storeList(sqlSession);
	}
    public ArrayList<Enroll> storeList1() {
		
		return SangmiDao.storeList1(sqlSession);
	}
	
}

