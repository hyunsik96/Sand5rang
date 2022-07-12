package com.s5.sand5rang.seonghoon.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.seonghoon.dao.SeonghoonDao;
import com.s5.sand5rang.seonghoon.vo.Expiration;
import com.s5.sand5rang.seonghoon.vo.Flow;
import com.s5.sand5rang.seonghoon.vo.Ingredient;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Stock;

@Service
public class SeonghoonService {

	@Autowired
	private SeonghoonDao seonghoonDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// *****************오늘의 재고 페이지*********************
	// 원재료명, 원재료 이미지
	public ArrayList<Ingredient> selectTodayStock1(){ return seonghoonDao.selectTodayStock1(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock2(){ return seonghoonDao.selectTodayStock2(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock3(){ return seonghoonDao.selectTodayStock3(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock4(){ return seonghoonDao.selectTodayStock4(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock5(){ return seonghoonDao.selectTodayStock5(sqlSession); }
	
	// 현재재고
	public ArrayList<Stock> selectStock1(){ return seonghoonDao.selectStock1(sqlSession); }
	public ArrayList<Stock> selectStock2(){ return seonghoonDao.selectStock2(sqlSession); }
	public ArrayList<Stock> selectStock3(){ return seonghoonDao.selectStock3(sqlSession); }
	public ArrayList<Stock> selectStock4(){ return seonghoonDao.selectStock4(sqlSession); }
	public ArrayList<Stock> selectStock5(){ return seonghoonDao.selectStock5(sqlSession); }
	
	// 유통기한
	public ArrayList<Stock> selectExpDate1(){ return seonghoonDao.selectExpDate1(sqlSession); }
	public ArrayList<Stock> selectExpDate2(){ return seonghoonDao.selectExpDate2(sqlSession); }
	public ArrayList<Stock> selectExpDate3(){ return seonghoonDao.selectExpDate3(sqlSession); }
	public ArrayList<Stock> selectExpDate4(){ return seonghoonDao.selectExpDate4(sqlSession); }
	public ArrayList<Stock> selectExpDate5(){ return seonghoonDao.selectExpDate5(sqlSession); }
	
	// *****************판매기입페이지************************* 
	public int insertSales(Menu m) { return seonghoonDao.insertSales(sqlSession, m); }
	public ArrayList<Ingredient> selectIngMen(int menNo){
		return seonghoonDao.selectIngMen(sqlSession, menNo);
	}
	public int insertFlow(Ingredient i) {
		return seonghoonDao.insertFlow(sqlSession, i);
	}
	
	public int getExp(Ingredient i) {
		return seonghoonDao.getExp(sqlSession, i);
	}
	
	public int updateStock(Ingredient i) {
		return seonghoonDao.updateStock(sqlSession, i);
	}
	
	// ***************** 전체 재고현황 ************************
	// 재고 합계
	public ArrayList<Stock> selectSumStock(){return seonghoonDao.selectSumStock(sqlSession); }
	
	// 재고 현황
	public ArrayList<Flow> selectInFlow(){
		return seonghoonDao.selectInFlow(sqlSession);
	}
	public ArrayList<Flow> selectOutFlow(){
		return seonghoonDao.selectOutFlow(sqlSession);
	}
	
	// *************** 재료별 재고현황 **************************
	public ArrayList<Stock> selectSearchIng(HashMap<String,String> hashmap){
		return seonghoonDao.selectSearchIng(hashmap,sqlSession);
	}
	
}

