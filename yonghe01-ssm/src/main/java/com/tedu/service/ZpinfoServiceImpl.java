package com.tedu.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.ZpinfoMapper;
import com.tedu.pojo.Zpinfo;

@Service
public class ZpinfoServiceImpl implements ZpinfoService {
	@Autowired
	ZpinfoMapper zpinfoMapper;
	public List <Zpinfo> findAll(){
		return zpinfoMapper.findAll();
	}

	public void insertzpinfo(Zpinfo zpinfo) {
		zpinfoMapper.insertzpinfo(zpinfo);
		
	}

}


