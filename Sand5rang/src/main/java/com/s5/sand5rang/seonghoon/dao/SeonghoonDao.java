package com.s5.sand5rang.seonghoon.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.seonghoon.vo.Ingredient;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Stock;

@Repository
public class SeonghoonDao {
	
	// *******************************오늘의 재고***********************************
	// 원재료명, 원재료 이미지
	public ArrayList<Ingredient> selectTodayStock1(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectTodayStock1");
	}
	public ArrayList<Ingredient> selectTodayStock2(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectTodayStock2");
	}	
	public ArrayList<Ingredient> selectTodayStock3(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectTodayStock3");
	}	
	public ArrayList<Ingredient> selectTodayStock4(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectTodayStock4");
	}
	public ArrayList<Ingredient> selectTodayStock5(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectTodayStock5");
	}
	// 현재재고
	public ArrayList<Stock> selectStock1(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock1");
	}
	public ArrayList<Stock> selectStock2(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock2");
	}
	public ArrayList<Stock> selectStock3(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock3");
	}
	public ArrayList<Stock> selectStock4(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock4");
	}
	public ArrayList<Stock> selectStock5(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock5");
	}
 	
	// *******************************판매기입 페이지***********************************
	public ArrayList<Menu> selectMenu(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectMenu");
	}
	public int insertSales(SqlSessionTemplate sqlSession, HashMap<String,Integer> hashmap) {
		return sqlSession.insert("seonghoonMapper.insertSales", hashmap);
	}
	
	

}