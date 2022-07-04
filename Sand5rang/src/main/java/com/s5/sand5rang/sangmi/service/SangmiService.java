package com.s5.sand5rang.sangmi.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.sangmi.dao.SangmiDao;

@Service
public class SangmiService {

	@Autowired
	private SangmiDao SangmiDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public String storeList() {
		
		return SangmiDao.storeList(sqlSession);
	}
	
}

