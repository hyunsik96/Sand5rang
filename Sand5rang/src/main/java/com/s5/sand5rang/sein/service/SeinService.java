package com.s5.sand5rang.sein.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSessionManager;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.sein.dao.SeinDao;
import com.s5.sand5rang.sein.vo.Enroll;
import com.s5.sand5rang.sein.vo.Order;
import com.s5.sand5rang.sein.vo.Payment;
import com.s5.sand5rang.sein.vo.Store;

@Service
public class SeinService {

	@Autowired
	private SeinDao seinDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//가맹점 발주 리스트 count
	public int selectListCount(String storeId) {
		return seinDao.selectListCount(sqlSession, storeId);
	}
	
	//로그인 - Store/본사(id/pw)조회
	public Store loginStore(Store store) {
		
		return seinDao.loginStore(sqlSession, store);
	}
	
	//비밀번호 변경 update 
	public int newPwdUpdate(Store store) {
		return seinDao.newPwdUpdate(sqlSession, store);
	}
	
	//가맹점 당일 발주 건 있는지 체크 select Service (15시 이전)
	public int selectOrder(String storeId) {
		return seinDao.selectOrder(sqlSession, storeId);
	}
	
	//가맹점 당일 발주 건 있는지 체크 select Service(15시 이후)
	public int selectOrder3(String storeId) {
		return seinDao.selectOrder3(sqlSession, storeId);
	}
	
	
	//가맹점 발주 insert Service(15시 이전)
	public int insertOrderBefore(Order order) {
		return seinDao.insertOrderBefore(sqlSession, order);
	}
	
	
	//가맹점 발주 insert Service(15시 이후)
	public int insertOrderAfter(Order order) {
		return seinDao.insertOrderAfter(sqlSession, order);
	}
		
	//가맹점 발주내역 상세조회 select Service(15이전)
	public ArrayList<Order> selectTodayOrder(String storeId){
		return (ArrayList)seinDao.selectTodayOrder(sqlSession, storeId);
	}
	
	//가맹점 발주내역 상세조회 select Service(15시이후)
	public ArrayList<Order> selectTodayOrder2(String storeId){
		return (ArrayList)seinDao.selectTodayOrder2(sqlSession, storeId);
	}
	
	////가맹점 발주내역 
	public ArrayList<Order> selectAllOrderList(String storeId, PageInfo pi){
		return (ArrayList)seinDao.selectAllOrderList(sqlSession, storeId, pi);
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
	public int updateOrder(Order o) {
		return seinDao.updateOrder(sqlSession, o);
	}
	
	//가맹점 신청 정보 조회
	public Enroll selectEnrollInfo(int enrNo) {
		return seinDao.selectEnrollInfo(sqlSession, enrNo);
	}
	
	//가맹점 현재 잔액 조회 
	public int todayMyPayment(String storeId) {
		return seinDao.todayMyPayment(sqlSession, storeId);
	}
	
	//가맹점 payment행조회
	public int myPayment(String storeId) {
		return seinDao.myPayment(sqlSession, storeId);
	}

	//해당하는 원재료를 뺀 다른 원재료들의 합(총 가격)
	public int selectBeforeChangeIngre(Order order) {
		return seinDao.selectBeforeChangeIngre(sqlSession, order);
	}
	
	//발주수량 변경 전 전체 count가 0이 아닌지 체크 
	public int balanceCount(Order order) {
		return seinDao.balanceCount(sqlSession, order);
	}

	//발주list에서 승인된 행의 발주 상세내역 조회
	public ArrayList<Order> selectOrderResult(Order order) {
		return seinDao.selectOrderResult(sqlSession, order);
	}

	//당일 발주 삭제
	public int deleteOrder(Order order) {
		return seinDao.deleteOrder(sqlSession, order);
	}

	//입금 insert 
	public int depositInsert(Payment payment) {
		return seinDao.depositInsert(sqlSession, payment);
	}
}

