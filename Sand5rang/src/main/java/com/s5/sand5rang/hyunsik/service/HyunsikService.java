package com.s5.sand5rang.hyunsik.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.hyunsik.dao.HyunsikDao;
import com.s5.sand5rang.hyunsik.vo.Indent;

@Service
public class HyunsikService {

	@Autowired
	private HyunsikDao hyunsikDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int ad1ListCount() {
		return hyunsikDao.ad1ListCount(sqlSession);
	}
	
	public ArrayList<String> selectAd1List(PageInfo pi){
		return hyunsikDao.selectAd1List(sqlSession, pi);
	}
	
	public ArrayList<Indent> selectIndLIst(String id){
		return hyunsikDao.selectIndLIst(sqlSession, id);
	}
	
	public int adCusApp(String id) {
		return hyunsikDao.adCusApp(sqlSession, id);
	}
	
	public int adCusDis(String id) {
		return hyunsikDao.adCusDis(sqlSession, id);
	}
	
}

