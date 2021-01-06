package com.example.grp.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.BuseoVO;
import com.example.grp.model.EmpVO;
import com.example.grp.model.GradeVO;


@Repository
public class RegisterDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<BuseoVO> getBuseo() {
		return sqlSession.selectList("register.getBuseo");
	}
	
	public List<GradeVO> getGrade() {
		return sqlSession.selectList("register.getGrade");
	}
	
	public void setEmpRegister(EmpVO evo) {
		sqlSession.insert("register.setEmpRegister", evo);
	}
	
	public int getChkEmpId(String emp_id) {
		return sqlSession.selectOne("register.getChkEmpId", emp_id);
	}
	
}
