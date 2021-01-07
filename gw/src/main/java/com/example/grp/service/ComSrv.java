package com.example.grp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.ComVO;
import com.example.grp.repository.ComDao;

@Service
public class ComSrv {

	@Autowired
	ComDao cDao;
	
	public ComVO getComInfo() {
		return cDao.getComInfo();
	}

}
