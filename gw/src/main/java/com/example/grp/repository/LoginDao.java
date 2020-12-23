package com.example.grp.repository;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.EmpVO;

@Repository
public class LoginDao {

	@Autowired
	SqlSession sqlSession;
	
	public int loginCheck(EmpVO evo) {
		return sqlSession.selectOne("login.loginCheck", evo);
	}
	
	public EmpVO getEmpInfoOne(EmpVO evo) {
		return sqlSession.selectOne("login.getEmpInfoOne", evo);
	}
	
	public void logout(HttpSession httpSession) {}
}
