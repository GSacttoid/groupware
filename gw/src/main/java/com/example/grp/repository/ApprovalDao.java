package com.example.grp.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.ApprovalSetVO;

@Repository
public class ApprovalDao {

	@Autowired
	SqlSession sqlSession;
	
	public ApprovalSetVO getAppSet() {
		return sqlSession.selectOne("approval.getAppSet");
	}
	
	public void setAppSet(ApprovalSetVO avo) {
		sqlSession.update("approval.setAppSet", avo);
	}
}
