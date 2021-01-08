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

	public int getTotalEmpCount() {
		return sqlSession.selectOne("employee.getTotalEmpCount");
	}
	
	public int getNewEmpCount() {
		return sqlSession.selectOne("employee.getNewEmpCount");
	}
	
	public int getResignEmpCount() {
		return sqlSession.selectOne("employee.getResignEmpCount");
	}
	
	public void setNewEmpConfirm(int emp_num) {
		sqlSession.update("employee.setNewEmpConfirm", emp_num);
	}
	
	public void setEmpDelete(int emp_num) {
		sqlSession.delete("employee.setEmpDelete", emp_num);
	}
	
	public EmpVO getEmpOne(EmpVO evo) {
		return sqlSession.selectOne("employee.getEmpOne", evo);
	}
}
