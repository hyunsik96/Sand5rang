package com.s5.sand5rang.seonghoon.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.hyunsik.dao.HyunsikDao;
import com.s5.sand5rang.seonghoon.dao.SeonghoonDao;

@Service
public class SeonghoonService {

	@Autowired
	private SeonghoonDao seonghoonDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}

