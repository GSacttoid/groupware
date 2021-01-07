package com.example.grp.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.ComVO;

@Repository
public class ComDao {

	@Autowired
	SqlSession sqlSession;
	
	public ComVO getComInfo() {
		return sqlSession.selectOne("company.getComInfo");
	}
}
