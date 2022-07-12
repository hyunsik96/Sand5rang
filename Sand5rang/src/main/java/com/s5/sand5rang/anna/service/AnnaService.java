package com.s5.sand5rang.anna.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.anna.dao.AnnaDao;
import com.s5.sand5rang.anna.vo.Enroll;
import com.s5.sand5rang.anna.vo.Inquery;
import com.s5.sand5rang.anna.vo.Store;

@Service
public class AnnaService {

	@Autowired
	private AnnaDao annaDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	//로그인 서비스(select)
	 public Store loginStore(Store s) {
		 //SqlSessionTemplate 객체 생성 해서 xml방식으로 bean등록해둠(위 오토와이어드)
		return annaDao.loginStore(sqlSession, s);
	}
	 
	 //	가맹문의 신청 서비스(insert)
	 public int joinForm(Enroll e) {
		return annaDao.joinForm(sqlSession, e);	 
	 }
	 

	// 문의게시판 총 갯수 조회
	public int selectListCount() {
		return annaDao.selectListCount(sqlSession);
	}

	// 문의글 리스트 전체 조회
	public ArrayList<Inquery> inqueryList(PageInfo pi) {
		return annaDao.inqueryList(sqlSession, pi);
	}

	// 문의글상세 조회 
	public Inquery selectInquery(int inqNo) {
		return annaDao.selectInquery(sqlSession,inqNo);
	}

	// 문의 답변 달기 폼
	public Inquery answerForm(int ino) {
		return annaDao.answerForm(sqlSession);
	}
	

}

