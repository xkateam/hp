package com.tedu.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tedu.dao.LoginMapper;
import com.tedu.pojo.Login;
@Service("userService")

public class LoginServiceImpl implements LoginService {
	 @Resource
	    private LoginMapper loginMapper;
	 @Override
	 public Login checkLogin(String username, String password) {
	        return loginMapper.checkLogin(username, password);
	    }
	


}
