package com.tedu.service;

import java.util.List;

import com.tedu.pojo.Door;
import com.tedu.pojo.Login;
import com.tedu.pojo.Regist;

public interface LoginService {
//验证用户登录
	 public Login checkLogin(String username, String password); 
	 public Integer checkRole(String username);
	 public Login queryInfoByUsername(String username);
	 public void addLogin(String username,String password,String phone,String role);
	 public void addAccount(String username,String password,String phone,String role);
	 
}
