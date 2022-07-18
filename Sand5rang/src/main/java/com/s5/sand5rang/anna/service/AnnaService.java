package com.s5.sand5rang.anna.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.anna.dao.AnnaDao;
import com.s5.sand5rang.anna.vo.Enroll;
import com.s5.sand5rang.anna.vo.Inquery;
	
@Service
public class AnnaService {

	@Autowired
	private AnnaDao annaDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	// 이메일 체크
	public int checkEmail(String email) {
		return annaDao.checkEmail(sqlSession, email);
	}
	 
	// 가맹문의 신청 (insert)
	public int insertStore(Enroll e) {
		return annaDao.insertStore(sqlSession, e);
	}

	// 문의게시판 총 갯수 조회
	public int selectListCount(int cate) {
		return annaDao.selectListCount(sqlSession, cate);
	}

	// 문의글 리스트 전체 조회
	public ArrayList<Inquery> inqueryList(PageInfo pi, int cate) {
		return annaDao.inqueryList(sqlSession, pi, cate);
	}

	// 문의글상세 조회 
	public Inquery selectInquery(int inqNo) {
		return annaDao.selectInquery(sqlSession,inqNo);
	}

	// 문의 답변 달기 폼 
	public Inquery answerForm(Inquery i) {
		return annaDao.answerForm(sqlSession, i);
	}

	// 답변 등록 
	public int enrollAnswer(Inquery i) {
		return annaDao.enrollAnswer(sqlSession,i);
	}

}

