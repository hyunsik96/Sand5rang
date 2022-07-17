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
import com.s5.sand5rang.seonghoon.vo.Sales;
import com.s5.sand5rang.seonghoon.vo.Stock;

@Repository
public class SeonghoonDao {
	
	// *******************************오늘의 재고***********************************
	// StoreId용 select문
	public int selectStoreId_list(SqlSessionTemplate sqlSession, String storeId){
		return sqlSession.selectOne("seonghoonMapper.selectStoreId_list", storeId);
	}

	
	
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
	public ArrayList<Stock> selectStock1(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock1", storeId);
	}
	public ArrayList<Stock> selectStock2(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock2", storeId);
	}
	public ArrayList<Stock> selectStock3(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock3", storeId);
	}
	public ArrayList<Stock> selectStock4(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock4", storeId);
	}
	public ArrayList<Stock> selectStock5(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectStock5", storeId);
	}
	
	// 유통기한
	public ArrayList<Stock> selectExpDate1(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate1", storeId);
	}
	public ArrayList<Stock> selectExpDate2(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate2", storeId);
	}
	public ArrayList<Stock> selectExpDate3(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate3", storeId);
	}
	public ArrayList<Stock> selectExpDate4(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate4", storeId);
	}
	public ArrayList<Stock> selectExpDate5(SqlSessionTemplate sqlSession, String storeId){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectExpDate5", storeId);
	}
	
	// ******************************* 제품 판매 현황 **********************************
	public int menuSalesListCount(SqlSessionTemplate sqlSession, String storeId) {
		return sqlSession.selectOne("seonghoonMapper.menuSalesListCount", storeId);
	}
	
	public ArrayList<Sales> selectMenuSalesList1(PageInfo pi, String storeId, SqlSessionTemplate sqlSession){
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectMenuSalesList1",storeId, rowBounds);
	}
	
	public ArrayList<Sales> MenuSalDate_List(Sales s, SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("MenuSalDate_List",s);
	}
	
 	
	// *******************************판매기입 페이지***********************************
	public int insertSales(SqlSessionTemplate sqlSession, Menu m) {
		return sqlSession.insert("seonghoonMapper.insertSales", m);
	}
	
	public ArrayList<Ingredient> selectIngMen(SqlSessionTemplate sqlSession, int menNo){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectIngMen", menNo);
	}
	
	public int insertFlow(SqlSessionTemplate sqlSession, Ingredient i) {
		return sqlSession.insert("seonghoonMapper.insertFlow", i);
	}
	
	public int getExp(SqlSessionTemplate sqlSession, Ingredient i) {
		return sqlSession.selectOne("seonghoonMapper.getExp", i);
	}
	
	public int updateStock(SqlSessionTemplate sqlSession, Ingredient i) {
		return sqlSession.update("seonghoonMapper.updateStock", i);
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
	public int ingListcount(SqlSessionTemplate sqlSession, HashMap<String,String> hashmap) {return sqlSession.selectOne("seonghoonMapper.ingListcount", hashmap);}
	
	public ArrayList<Stock> selectSortIngredient(SqlSessionTemplate sqlSession, PageInfo pi, HashMap<String, String> hashmap){
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);	
		
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectSortIngredient", hashmap, rowBounds);
	}
	
	//******************************* 폐기 관리 ************************************
	public int disposalListCount(SqlSessionTemplate sqlSession, HashMap<String,String> hashmap) {
		return sqlSession.selectOne("seonghoonMapper.disposalListCount", hashmap);
	}
	
	public ArrayList<Stock> selectDisposalList(SqlSessionTemplate sqlSession, HashMap<String, String> hashmap, PageInfo pi){
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);	
		
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectDisposalList", hashmap,rowBounds );
	}
}