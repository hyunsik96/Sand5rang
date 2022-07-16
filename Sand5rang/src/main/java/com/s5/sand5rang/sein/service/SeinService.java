package com.s5.sand5rang.sein.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.sein.dao.SeinDao;
import com.s5.sand5rang.sein.vo.Enroll;
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
	
	//비밀번호 변경 update 
	public int newPwdUpdate(Store store) {
		return seinDao.newPwdUpdate(sqlSession, store);
	}
	
	//가맹점 당일 발주 건 있는지 체크 select Service 
	public int selectOrder(String storeId) {
		return seinDao.selectOrder(sqlSession, storeId);
	}
	
	//가맹점 발주 insert Service
	public int insertOrder(Order order) {
		return seinDao.insertOrder(sqlSession, order);
	}
	
	//가맹점 발주내역 상세조회 select Service
	public ArrayList<Order> selectTodayOrder(String storeId){
		return (ArrayList)seinDao.selectTodayOrder(sqlSession, storeId);
	}
	
	//가맹점 발주내역 리스트조회 select Service
	public ArrayList<Order> selectAllOrderList(String storeId){
		return (ArrayList)seinDao.selectAllOrderList(sqlSession, storeId);
	}
	
	//가맹점 자동발주 신청 내역 select
	public ArrayList<Order> selectAutoOrder(){
		return (ArrayList)seinDao.selectAutoOrder(sqlSession);
	}
	
	//가맹점 발주대기 상태의 원재료 list select
	public ArrayList<Order> selectOrder2(String storeId) {
		return (ArrayList)seinDao.selectOrder2(sqlSession, storeId);
	}
	
	//가맹점 원재료 발주 수정
	public int updateOrder() {
		return seinDao.updateOrder(sqlSession);
	}
	
	//가맹점 신청 정보 조회
	public Enroll selectEnrollInfo(int enrNo) {
		return seinDao.selectEnrollInfo(sqlSession, enrNo);
	}
	
}

