package com.s5.sand5rang.seonghoon.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.seonghoon.vo.Menu;
import com.s5.sand5rang.seonghoon.vo.Sales;

@Repository
public class SeonghoonDao {
	
	public ArrayList<Menu> selectMenu(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("seonghoonMapper.selectMenu");
	}
	
	public int insertSales(SqlSessionTemplate sqlSession, ArrayList<Sales>list_count) {
		
		return sqlSession.insert("seonghoonMapper.insertSales");
		
	}
	

}