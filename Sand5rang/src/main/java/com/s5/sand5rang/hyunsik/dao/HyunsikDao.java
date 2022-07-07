package com.s5.sand5rang.hyunsik.dao;

import java.util.ArrayList;

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
	
	public ArrayList<Indent> selectAd1List(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("hyunsikMapper.selectAd1List", null, rowBounds);
	}


}