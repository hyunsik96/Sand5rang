package com.s5.sand5rang.sein.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.sein.vo.Ingredient;
import com.s5.sand5rang.sein.vo.Order;
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
	
	//가맹점 발주리스트 조회
	public ArrayList<Order> selectAllOrderList(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seinMapper.selectAllOrderList", storeId);
	}
	
	//자동발주내역조회 select문
	public ArrayList<Order> selectAutoOrder(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seinMapper.selectAutoOrder", storeId);
	}
	
	public ArrayList<Order> selectOrder2(SqlSessionTemplate sqlSession, String storeId) {
		return (ArrayList)sqlSession.selectList("seinMapper.selectOrder2", storeId);
	}
	
	public int updateOrder(SqlSessionTemplate sqlSession) {
		return sqlSession.update("seinMapper.updateOrder");
	}
}