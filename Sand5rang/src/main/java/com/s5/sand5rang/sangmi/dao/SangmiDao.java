package com.s5.sand5rang.sangmi.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.sangmi.vo.Enroll;
import com.s5.sand5rang.sangmi.vo.Store;

@Repository
public class SangmiDao {
	
	//게시글 리스트 조회 
   public ArrayList<Store> storeList(SqlSessionTemplate sqlSession) {
	   
	   
	   
	   return (ArrayList)sqlSession.selectList("sangmiMapper.storeList");
   }
	//게시글 리스트 조회 
   public ArrayList<Enroll> storeList1(SqlSessionTemplate sqlSession) {
	   
	   
	   
	   return (ArrayList)sqlSession.selectList("sangmiMapper.storeList");
   }

}