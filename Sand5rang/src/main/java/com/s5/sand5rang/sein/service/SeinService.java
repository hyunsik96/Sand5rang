package com.s5.sand5rang.sein.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.sein.dao.SeinDao;
import com.s5.sand5rang.sein.vo.Ingredient;
import com.s5.sand5rang.sein.vo.Order;

@Service
public class SeinService {

	@Autowired
	private SeinDao seinDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//원재료 전체조회 Service
	public ArrayList<Ingredient> selectIngredient(){
	
		return (ArrayList)seinDao.selectIngredient(sqlSession);
	}
	
	//가맹점 발주 insert Service
	public int insertOrder(Order order) {
		return seinDao.insertOrder(sqlSession, order);
	}
	
	//가맹점 발주내역 상세조회 select Service
	public ArrayList<Order> selectTodayOrder(){
		return (ArrayList)seinDao.selectTodayOrder(sqlSession);
	}
}

