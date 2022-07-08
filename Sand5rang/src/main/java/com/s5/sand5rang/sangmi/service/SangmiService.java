package com.s5.sand5rang.sangmi.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.sangmi.dao.SangmiDao;
import com.s5.sand5rang.sangmi.vo.Enroll;
import com.s5.sand5rang.sangmi.vo.Inquery;
import com.s5.sand5rang.sangmi.vo.Store;

@Service
public class SangmiService {

	@Autowired
	private SangmiDao SangmiDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//게시글 총 갯수 조회
	public int selectListCount() {
		return SangmiDao.selectListCount(sqlSession);
	}
	
	//가맹점 전체리스트 조회
	public ArrayList<Store> storeList(PageInfo pi) {
		
		return SangmiDao.storeList(sqlSession,pi);
	}
	//폐업
	public int storeclose(int enrNo) {
		
		return SangmiDao.storeclose(sqlSession, enrNo);
	}
	
	
    //가맹 가입신청 리스트 조회
	public ArrayList<Enroll> storeEnrollList(PageInfo pi){
		
		return SangmiDao.storeEnrollList(sqlSession,pi);
	}
	
	//가맹가입신청 상세페이지
	public Enroll storeEnrollDetail(int enrollNo) {
		
		return SangmiDao.storeEnrollDetail(sqlSession, enrollNo);
	}
	
	//문의리스트 조회
	//가맹점 전체리스트 조회
	public ArrayList<Inquery> inqueryList(PageInfo pi) {
		
		return SangmiDao.inqueryList(sqlSession,pi);
	}
	
}

