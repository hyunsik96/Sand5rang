package com.s5.sand5rang.anna.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.anna.dao.AnnaDao;
import com.s5.sand5rang.hyunsik.dao.HyunsikDao;

@Service
public class AnnaService {

	@Autowired
	private AnnaDao annaDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}

