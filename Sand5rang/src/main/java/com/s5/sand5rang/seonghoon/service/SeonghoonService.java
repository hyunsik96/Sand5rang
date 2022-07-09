package com.s5.sand5rang.seonghoon.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.seonghoon.dao.SeonghoonDao;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Stock;

@Service
public class SeonghoonService {

	@Autowired
	private SeonghoonDao seonghoonDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 오늘의 재고 페이지
	public ArrayList<Stock> selectIng1(){
		return seonghoonDao.selectIng(sqlSession);
	}
	public ArrayList<Stock> selectIng2(){
		return seonghoonDao.selectIng(sqlSession);
	}
	public ArrayList<Stock> selectIng3(){
		return seonghoonDao.selectIng(sqlSession);
	}
	public ArrayList<Stock> selectIng4(){
		return seonghoonDao.selectIng(sqlSession);
	}
	public ArrayList<Stock> selectIng5(){
		return seonghoonDao.selectIng(sqlSession);
	}
	
	// 판매기입페이지 
	public ArrayList<Menu> selectMenu(){
		return seonghoonDao.selectMenu(sqlSession);
	}
	
	public int insertSales(HashMap<String,Integer> hashmap) {
		int result = seonghoonDao.insertSales(sqlSession,hashmap);
		return result;
	}
	
	
	
}

