package com.s5.sand5rang.sein.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.sein.vo.Ingredient;
import com.s5.sand5rang.sein.vo.Order;

@Repository
public class SeinDao {
	
	//원재료 조회 select문
	public ArrayList<Ingredient> selectIngredient(SqlSessionTemplate sqlSession){
		
		return (ArrayList)sqlSession.selectList("seinMapper.selectIngredient");
	}

	//가맹점 당일 발주건 있는지 체크 select문
	public int selectOrder(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("seinMapper.selectOrder");
	}
	
	//발주 insert문
	public int insertOrder(SqlSessionTemplate sqlSession, Order order) {
		
		return sqlSession.insert("seinMapper.insertOrder", order);
	}
	
	//발주상세내역 조회 select문
	public ArrayList<Order> selectTodayOrder(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seinMapper.selectTodayOrder");
	}
	
	//가맹점 발주리스트 조회
	public ArrayList<Order> selectAllOrderList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seinMapper.selectAllOrderList");
	}
	
	//자동발주내역조회 select문
	public ArrayList<Order> selectAutoOrder(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seinMapper.selectAutoOrder");
	}
	
	public ArrayList<Order> selectOrder2(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("seinMapper.selectOrder2");
	}
	
	public int updateOrder(SqlSessionTemplate sqlSession) {
		return sqlSession.update("seinMapper.updateOrder");
	}
}