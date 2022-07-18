package com.s5.sand5rang.seonghoon.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.seonghoon.dao.SeonghoonDao;
import com.s5.sand5rang.seonghoon.vo.Ingredient;
import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Sales;
import com.s5.sand5rang.seonghoon.vo.Stock;

@Service
public class SeonghoonService {

	@Autowired
	private SeonghoonDao seonghoonDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// *****************오늘의 재고 페이지*********************
	// StoreId용 select문
	public int selectStoreId_list(String storeId){ return seonghoonDao.selectStoreId_list(sqlSession, storeId); }
	
	// 원재료명, 원재료 이미지
	public ArrayList<Ingredient> selectTodayStock1(){ return seonghoonDao.selectTodayStock1(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock2(){ return seonghoonDao.selectTodayStock2(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock3(){ return seonghoonDao.selectTodayStock3(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock4(){ return seonghoonDao.selectTodayStock4(sqlSession); }
	public ArrayList<Ingredient> selectTodayStock5(){ return seonghoonDao.selectTodayStock5(sqlSession); }
	
	// 현재재고
	public ArrayList<Stock> selectStock1(String storeId){ return seonghoonDao.selectStock1(sqlSession, storeId); }
	public ArrayList<Stock> selectStock2(String storeId){ return seonghoonDao.selectStock2(sqlSession, storeId); }
	public ArrayList<Stock> selectStock3(String storeId){ return seonghoonDao.selectStock3(sqlSession, storeId); }
	public ArrayList<Stock> selectStock4(String storeId){ return seonghoonDao.selectStock4(sqlSession, storeId); }
	public ArrayList<Stock> selectStock5(String storeId){ return seonghoonDao.selectStock5(sqlSession, storeId); }
	
	// 유통기한
	public ArrayList<Stock> selectExpDate1(String storeId){ return seonghoonDao.selectExpDate1(sqlSession, storeId); }
	public ArrayList<Stock> selectExpDate2(String storeId){ return seonghoonDao.selectExpDate2(sqlSession, storeId); }
	public ArrayList<Stock> selectExpDate3(String storeId){ return seonghoonDao.selectExpDate3(sqlSession, storeId); }
	public ArrayList<Stock> selectExpDate4(String storeId){ return seonghoonDao.selectExpDate4(sqlSession, storeId); }
	public ArrayList<Stock> selectExpDate5(String storeId){ return seonghoonDao.selectExpDate5(sqlSession, storeId); }
	
	// ***************** 제품 판매 현황 *************************
	public int menuSalesListCount(String storeId) {
		return seonghoonDao.menuSalesListCount(sqlSession, storeId);
	}
	
	public ArrayList<Sales> selectMenuSalesList1(PageInfo pi, String storeId){
		return seonghoonDao.selectMenuSalesList1(pi,storeId,sqlSession);
	}
	
	public ArrayList<Sales> MenuSalDate_List(Sales s){
		return seonghoonDao.MenuSalDate_List(s,sqlSession);
	}
	
	// ***************** 판매기입페이지 ************************* 
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
	
	
	// *************** 재료별 재고현황 **************************
	public int ingListcount(HashMap<String, String> hashmap) {return seonghoonDao.ingListcount(sqlSession,hashmap);}
	
	public ArrayList<Stock> selectSortIngredient(PageInfo pi, HashMap<String,String> hashmap){
		return seonghoonDao.selectSortIngredient(sqlSession, pi, hashmap);
	}
	
	// *************** 폐기 관리 ******************************
	public int disposalListCount(HashMap<String,String> hashmap) {
		return seonghoonDao.disposalListCount(sqlSession, hashmap);
	}
	
	public ArrayList<Stock> selectDisposalList(PageInfo pi, HashMap<String, String> hashmap){
		return seonghoonDao.selectDisposalList(sqlSession, hashmap, pi);
	}
	
	public int updateDisposal(HashMap<String, String> hashmap) {
		return seonghoonDao.updateDisposal(sqlSession, hashmap);
	}
}

