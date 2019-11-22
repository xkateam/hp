package com.tedu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.PayMapper;

@Service
public class PayServiceImpl implements PayService {
	
	@Autowired
	PayMapper payMapper;

	public int selectPoint_countByusername(String username) {
		// TODO Auto-generated method stub
		return payMapper.selectPoint_countByusername(username);
	}

	public void updatePoint_countByusername(String username, int point_count) {
		// TODO Auto-generated method stub
		payMapper.updatePoint_countByusername(username, point_count);
	}

}
