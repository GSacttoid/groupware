package com.example.grp.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.EmpVO;


@Repository
public class RegisterDao {

	@Autowired
	SqlSession sqlSession;

	
	public void setEmpRegister(EmpVO evo) {
		sqlSession.insert("register.setEmpRegister", evo);
	}
	
	public int getChkEmpId(String emp_id) {
		return sqlSession.selectOne("register.getChkEmpId", emp_id);
	}
	
}
