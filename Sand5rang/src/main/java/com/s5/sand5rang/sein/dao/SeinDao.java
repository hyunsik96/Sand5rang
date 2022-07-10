package com.s5.sand5rang.sein.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.s5.sand5rang.sein.vo.Ingredient;

@Repository
public class SeinDao {
	
	public ArrayList<Ingredient> selectIngredient(SqlSessionTemplate sqlSession){
		
		return (ArrayList)sqlSession.selectList("seinMapper.selectIngredient");
	}

}