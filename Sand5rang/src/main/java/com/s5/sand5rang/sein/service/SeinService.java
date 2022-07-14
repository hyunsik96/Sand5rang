package com.s5.sand5rang.sein.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.sein.dao.SeinDao;
import com.s5.sand5rang.sein.vo.Ingredient;
import com.s5.sand5rang.sein.vo.Order;
import com.s5.sand5rang.sein.vo.Store;

@Service
public class SeinService {

	@Autowired
	private SeinDao seinDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//로그인 - Store/본사(id/pw)조회
	public Store loginStore(Store store) {
		
		return seinDao.loginStore(sqlSession, store);
	}
	
	//원재료 전체조회 Service
	public ArrayList<Ingredient> selectIngredient(){
	
		return (ArrayList)seinDao.selectIngredient(sqlSession);
	}
	//가맹점 당일 발주 건 있는지 체크 select Service 
	public int selectOrder() {
		return seinDao.selectOrder(sqlSession);
	}
	
	//가맹점 발주 insert Service
	public int insertOrder(Order order) {
		return seinDao.insertOrder(sqlSession, order);
	}
	
	//가맹점 발주내역 상세조회 select Service
	public ArrayList<Order> selectTodayOrder(){
		return (ArrayList)seinDao.selectTodayOrder(sqlSession);
	}
	
	//가맹점 발주내역 리스트조회 select Service
	public ArrayList<Order> selectAllOrderList(){
		return (ArrayList)seinDao.selectAllOrderList(sqlSession);
	}
	
	//가맹점 자동발주 신청 내역 select
	public ArrayList<Order> selectAutoOrder(){
		return (ArrayList)seinDao.selectAutoOrder(sqlSession);
	}
	
	//가맹점 발주대기 상태의 원재료 list select
	public ArrayList<Order> selectOrder2() {
		return (ArrayList)seinDao.selectOrder2(sqlSession);
	}
	
	public int updateOrder() {
		return seinDao.updateOrder(sqlSession);
	}
}

