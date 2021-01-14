package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.AddressVO;
import com.example.grp.repository.AddressDao;

@Service
public class AddressSrv {

	@Autowired
	AddressDao aDao;
	
	public List<AddressVO> getMailAddress(int start, int end, String searchOpt, String words){
		return aDao.getMailAddress(start, end, searchOpt, words);
	}
	
	public int getMailAddressCount(String searchOpt, String words) {
		return aDao.getMailAddressCount(searchOpt, words);
	}
}
