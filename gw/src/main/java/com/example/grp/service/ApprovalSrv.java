package com.example.grp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.ApprovalSetVO;
import com.example.grp.repository.ApprovalDao;

@Service
public class ApprovalSrv {

	@Autowired
	ApprovalDao aDao;
	
	public ApprovalSetVO getAppSet() {
		return aDao.getAppSet();
	}
	
	public void setAppSet(ApprovalSetVO avo) {
		aDao.setAppSet(avo);
	}
}
