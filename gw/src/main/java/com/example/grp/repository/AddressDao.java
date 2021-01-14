package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.AddressVO;

@Repository
public class AddressDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<AddressVO> getMailAddress(int start, int end, String searchOpt, String words){
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sqlSession.selectList("address.getMailAddress", map);
	}
	
	public int getMailAddressCount(String searchOpt, String words) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sqlSession.selectOne("address.getMailAddressCount", map);
	}
}
