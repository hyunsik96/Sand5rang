package com.s5.sand5rang.hyunsik.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.hyunsik.dao.HyunsikDao;

@Service
public class HyunsikService {

	@Autowired
	private HyunsikDao hyunsikDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public String test() {
		return hyunsikDao.test(sqlSession);
	}
	
	
}

