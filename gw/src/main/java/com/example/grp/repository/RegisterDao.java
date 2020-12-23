package com.example.grp.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.BuseoVO;
import com.example.grp.model.EmpVO;


@Repository
public class RegisterDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<BuseoVO> getBuseo() {
		return sqlSession.selectList("register.getBuseo");
	}
	
	public void setEmpRegister(EmpVO evo) {
		sqlSession.insert("register.setEmpRegister", evo);
	}
	
	public int getChkEmpId(String emp_id) {
		return sqlSession.selectOne("register.getChkEmpId", emp_id);
	}
	
}
