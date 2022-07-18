package com.s5.sand5rang.sein.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.sein.vo.Enroll;
import com.s5.sand5rang.sein.vo.Ingredient;
import com.s5.sand5rang.sein.vo.Order;
import com.s5.sand5rang.sein.vo.Payment;
import com.s5.sand5rang.sein.vo.Store;

@Repository
public class SeinDao {
	
	
	//로그인 - Store/본사(id/pw)조회
	public Store loginStore(SqlSessionTemplate sqlSession, Store store) {
		
		return sqlSession.selectOne("seinMapper.loginStore", store);
	}
	
	//비밀번호 변경 update문
	public int newPwdUpdate(SqlSessionTemplate sqlSession, Store store) {
		return sqlSession.update("seinMapper.newPwdUpdate", store);
	}

	//가맹점 당일 발주건 있는지 체크 select문
	public int selectOrder(SqlSessionTemplate sqlSession, String storeId) {
		
		return sqlSession.selectOne("seinMapper.selectOrder", storeId);
	}
	
	//발주 insert문
	public int insertOrder(SqlSessionTemplate sqlSession, Order order) {
		
		return sqlSession.insert("seinMapper.insertOrder", order);
	}
	
	//발주상세내역 조회 select문
	public ArrayList<Order> selectTodayOrder(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seinMapper.selectTodayOrder", storeId);
	}
	
	//가맹점 발주리스트 조회(STATUS=B 또는 N일 경우)
	public ArrayList<Order> selectAllOrderList(SqlSessionTemplate sqlSession, String storeId, PageInfo pi){
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("seinMapper.selectAllOrderList", storeId, rowBounds);
	}
	
	
	//가맹점 발주 리스트 count
		public int selectListCount(SqlSessionTemplate sqlSession, String storeId) {
			return sqlSession.selectOne("seinMapper.selectListCount", storeId);
		}
	
	//자동발주내역조회 select문
	public ArrayList<Order> selectAutoOrder(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seinMapper.selectAutoOrder");
	}
	
	//발주 리스트 조회 시 최근 발주 항목 원재료조회
	public ArrayList<Order> selectOrder2(SqlSessionTemplate sqlSession, String storeId) {
		return (ArrayList)sqlSession.selectList("seinMapper.selectOrder2", storeId);
	}
	
	//가맹점 발주(원재료) 수정
	public int updateOrder(SqlSessionTemplate sqlSession, Order o) {
		return sqlSession.update("seinMapper.updateOrder", o);
	}
	
	//가맹점 신청정보 조회
	public Enroll selectEnrollInfo(SqlSessionTemplate sqlSession, int enrNo) {
		return sqlSession.selectOne("seinMapper.selectEnrollInfo", enrNo);
	}
	//가맹점 현재 잔액조회
	public int todayMyPayment(SqlSessionTemplate sqlSession, String storeId) {
		return sqlSession.selectOne("seinMapper.todayMyPayment", storeId);
	}

	//가맹점 payment행 조회
	public int myPayment(SqlSessionTemplate sqlSession, String storeId) {
		return sqlSession.selectOne("seinMapper.myPayment", storeId);
	}
}