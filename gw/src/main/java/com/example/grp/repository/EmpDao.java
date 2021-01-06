package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.EmpVO;

@Repository
public class EmpDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<EmpVO> getNewEmp(int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("employee.getNewEmpList", map);
	}
	
	public List<EmpVO> getResignEmp(int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("employee.getResignEmpList", map);
	}

	public int getEmployeeCount() {
		return sqlSession.selectOne("employee.getEmployeeCount");
	}
	
	public int getResignEmpCount() {
		return sqlSession.selectOne("employee.getResignEmpCount");
	}
}
