package com.s5.sand5rang.sangmi.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.common.model.vo.PageInfo;
import com.s5.sand5rang.sangmi.vo.Enroll;
import com.s5.sand5rang.sangmi.vo.Inquery;
import com.s5.sand5rang.sangmi.vo.Store;

@Repository
public class SangmiDao {
	
	//게시글 총 갯수 조회
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("sangmiMapper.selectListCount");
	}
	
	
	//가맹점 전체리스트 조회
   public ArrayList<Store> storeList(SqlSessionTemplate sqlSession,PageInfo pi) {
	   
	   int limit = pi.getBoardLimit();
	   int offset = (pi.getCurrentPage() -1)*limit;
	   
	   RowBounds rowBounds = new RowBounds(offset, limit);
	 
	   return (ArrayList)sqlSession.selectList("sangmiMapper.storeList",null,rowBounds);
   }
   //폐업
    public int storeclose(SqlSessionTemplate sqlSession, int enrNo) {
    	
    	return sqlSession.update("sangmiMapper.storeclose", enrNo);
    }
   
   
   
 //가맹 가입신청 리스트 조회
   public ArrayList<Enroll> storeEnrollList(SqlSessionTemplate sqlSession,PageInfo pi) {
	   
	   int limit = pi.getBoardLimit();
	   int offset = (pi.getCurrentPage() -1)*limit;
	   
	   RowBounds rowBounds = new RowBounds(offset, limit);
	   
	   return (ArrayList)sqlSession.selectList("sangmiMapper.storeEnrollList",null,rowBounds);   
	   
   }
 //가맹가입신청 상세페이지
   public Enroll storeEnrollDetail(SqlSessionTemplate sqlSession, int enrNo){
	   
	   return sqlSession.selectOne("sangmiMapper.storeEnrollDetail");
   }
   
   //문의 전체 리스트 조회
public ArrayList<Inquery> inqueryList(SqlSessionTemplate sqlSession,PageInfo pi) {
	   
	   int limit = pi.getBoardLimit();
	   int offset = (pi.getCurrentPage() -1)*limit;
	   
	   RowBounds rowBounds = new RowBounds(offset, limit);
	 
	   return (ArrayList)sqlSession.selectList("sangmiMapper.inqueryList",null,rowBounds);
   }
   //글 작성하기
public int inquertInsert(SqlSessionTemplate sqlSession, Inquery i) {
	
	return sqlSession.insert("sangmiMapper.inquertInsert",i);
}






}