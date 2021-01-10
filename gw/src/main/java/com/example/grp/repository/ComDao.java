package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.BuseoVO;
import com.example.grp.model.ComVO;
import com.example.grp.model.GradeVO;
import com.example.grp.model.GwVO;

@Repository
public class ComDao {

	@Autowired
	SqlSession sqlSession;
	
	public ComVO getComInfo() {
		return sqlSession.selectOne("company.getComInfo");
	}
	
	public GwVO getGwInfo() {
		return sqlSession.selectOne("company.getGwInfo");
	}
	
	public void setCompanyInfoModify() {
		sqlSession.update("company.setCompanyInfoModify");
	}

	public List<BuseoVO> getBuseo() {
		return sqlSession.selectList("company.getBuseo");
	}
	
	public List<BuseoVO> getBuseoList() {
		return sqlSession.selectList("company.getBuseo");
	}
	
	public int getBuseoCnt() {
		return sqlSession.selectOne("company.getBuseoCnt");
	}
	
	public void setBuseoInsert(BuseoVO bvo) {
		sqlSession.insert("company.setBuseoInsert", bvo);
	}
	
	public int buseoIdChk(BuseoVO bvo) {
		return sqlSession.selectOne("company.buseoIdChk", bvo);
	}
	
	public int buseoNameChk(BuseoVO bvo) {
		return sqlSession.selectOne("company.buseoNameChk", bvo);
	}
	
	public void setBuseoDelete(BuseoVO bvo) {
		sqlSession.delete("company.setBuseoDelete", bvo);
	}
	
	public List<GradeVO> getGrade() {
		return sqlSession.selectList("company.getGrade");
	}
	
	public List<GradeVO> getGradeList() {
		return sqlSession.selectList("company.getGrade");
	}
	
	public int getGradeCnt() {
		return sqlSession.selectOne("company.getGradeCnt");
	}
	
	public void setGradeInsert(GradeVO gvo) {
		sqlSession.insert("company.setGradeInsert", gvo);
	}
	
	public int gradeIdChk(GradeVO gvo) {
		return sqlSession.selectOne("company.gradeIdChk", gvo);
	}
	
	public int gradeNameChk(GradeVO gvo) {
		return sqlSession.selectOne("company.gradeNameChk", gvo);
	}
	
	public void setGradeDelete(GradeVO gvo) {
		sqlSession.delete("company.setGradeDelete", gvo);
	}
}
