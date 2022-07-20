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

	//가맹점 당일 발주건 있는지 체크 select문(15시이전)
	public int selectOrder(SqlSessionTemplate sqlSession, String storeId) {
		
		return sqlSession.selectOne("seinMapper.selectOrder", storeId);
	}
	
	//가맹점 당일 발주건 있는지 체크 select문(15시이후)
	public int selectOrder3(SqlSessionTemplate sqlSession, String storeId) {
			
		return sqlSession.selectOne("seinMapper.selectOrder3", storeId);
	}
	
	//발주 insert문(15시이전)
	public int insertOrderBefore(SqlSessionTemplate sqlSession, Order order) {
		
		return sqlSession.insert("seinMapper.insertOrderBefore", order);
	}
	
	//발주 insert문(15시이후)
	public int insertOrderAfter(SqlSessionTemplate sqlSession, Order order) {
			
		return sqlSession.insert("seinMapper.insertOrderAfter", order);
	}
	
	//발주상세내역 조회 select문(15시이전)
	public ArrayList<Order> selectTodayOrder(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seinMapper.selectTodayOrder", storeId);
	}
	
	//발주상세내역 조회 select문(15시이후)
	public ArrayList<Order> selectTodayOrder2(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seinMapper.selectTodayOrder2", storeId);
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
	//해당하는 원재료를 뺀 다른 원재료들의 합(총 가격)
	public int selectBeforeChangeIngre(SqlSessionTemplate sqlSession, Order order) {
		return sqlSession.selectOne("seinMapper.selectBeforeChangeIngre", order);
	}

	//발주 수량 수정 전 전체 발주량이 0보다 큰지 확인
	public int balanceCount(SqlSessionTemplate sqlSession, Order order) {
		return sqlSession.selectOne("seinMapper.balanceCount",order);
	}
	
	//발주list에서 승인된 행의 발주 상세내역 조회
	public ArrayList<Order> selectOrderResult(SqlSessionTemplate sqlSession, Order order) {
		return (ArrayList)sqlSession.selectList("seinMapper.selectOrderResult",order);
	}

	//당일발주건 삭제
	public int deleteOrder(SqlSessionTemplate sqlSession, Order order) {
		return sqlSession.delete("seinMapper.deleteOrder", order);
	}

	//입금 insert
	public int depositInsert(SqlSessionTemplate sqlSession, Payment payment) {
		return sqlSession.insert("seinMapper.depositInsert", payment);
	}

	//매장검색
	public ArrayList<Store> searchBranch(SqlSessionTemplate sqlSession, Store store) {
		return (ArrayList)sqlSession.selectList("seinMapper.searchBranch",store);
	}

	
}