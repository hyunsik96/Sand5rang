package com.s5.sand5rang.hyunsik.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class HyunsikDao {

	public String test(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("hyunsikMapper.test");
	}


}