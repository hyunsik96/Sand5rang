package com.s5.sand5rang.hyunsik.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.hyunsik.vo.Indent;

@Repository
public class HyunsikDao {

	public int ad1ListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("hyunsikMapper.ad1ListCount");
	}
	
	public ArrayList<String> selectAd1List(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("hyunsikMapper.selectAd1List", null, rowBounds);
	}
	
	public ArrayList<Indent> selectIndLIst(SqlSessionTemplate sqlSession, String id){
		return (ArrayList)sqlSession.selectList("hyunsikMapper.selectIndLIst", id);
	}
	
	public int adCusApp(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.update("hyunsikMapper.adCusApp", map);
	}
	
	public int adCusDis(SqlSessionTemplate sqlSession, String id) {
		return sqlSession.update("hyunsikMapper.adCusDis", id);
	}
	
	public int disAll(SqlSessionTemplate sqlSession) {
		return sqlSession.update("hyunsikMapper.disAll");
	}
	
	public int facInd(SqlSessionTemplate sqlSession, int i) {
		return sqlSession.insert("hyunsikMapper.facInd", i);
	}
	
	public ArrayList<Indent> storeInList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("hyunsikMapper.storeInList");
	}
	
	public int addStock(SqlSessionTemplate sqlSession, Indent i) {
		return sqlSession.insert("hyunsikMapper.addStock", i);
	}
	
	public int facListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("hyunsikMapper.facListCount");
	}
	
	public ArrayList<String> selectAd2List(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("hyunsikMapper.selectAd2List", null, rowBounds);
	}
	
	public ArrayList<Indent> facIndList(SqlSessionTemplate sqlSession, String date) {
		return (ArrayList)sqlSession.selectList("hyunsikMapper.facIndList", date);
	}


}