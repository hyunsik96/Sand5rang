package com.s5.sand5rang.seonghoon.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.seonghoon.vo.Flow;
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
	
	// 유통기한
	public ArrayList<Stock> selectExpDate1(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate1");
	}
	public ArrayList<Stock> selectExpDate2(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate2");
	}
	public ArrayList<Stock> selectExpDate3(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate3");
	}
	public ArrayList<Stock> selectExpDate4(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate4");
	}
	public ArrayList<Stock> selectExpDate5(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate5");
	}
	
 	
	// *******************************판매기입 페이지***********************************
	public int insertSales(SqlSessionTemplate sqlSession, Menu m) {
		return sqlSession.insert("seonghoonMapper.insertSales", m);
	}
	
	// ****************************** 전체 재고현황 ***********************************
	// 재고합계
	public ArrayList<Stock> selectSumStock(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectSumStock");
	}
	
	// 재고현황
	public ArrayList<Flow> selectInFlow(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectInFlow");
	}
	public ArrayList<Flow> selectOutFlow(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectOutFlow");
	}
	
	// ****************************** 재료별 재고현황 ********************************
	public ArrayList<Stock> selectSearchIng(HashMap<String,String> hashmap, SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectSearchIng",hashmap);
	}
}