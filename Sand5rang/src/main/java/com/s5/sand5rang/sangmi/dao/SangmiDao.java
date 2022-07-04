package com.s5.sand5rang.sangmi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SangmiDao {
	
   public String storeList(SqlSessionTemplate sqlSession) {
	   
	   return sqlSession.selectOne("sangmiMapper.storeList");
   }

}