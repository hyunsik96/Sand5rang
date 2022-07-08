package com.s5.sand5rang.seonghoon.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.seonghoon.dao.SeonghoonDao;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Sales;

@Service
public class SeonghoonService {

	@Autowired
	private SeonghoonDao seonghoonDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Menu> selectMenu(){
		return seonghoonDao.selectMenu(sqlSession);
	}
	
	public int insertSales(ArrayList<Sales>list_count) {
		int result = seonghoonDao.insertSales(sqlSession,list_count);
		return result;
	}
	
	
	
}

