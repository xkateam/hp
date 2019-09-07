package com.tedu.dao;

import org.apache.ibatis.annotations.Param;

import com.tedu.pojo.Login;

public interface LoginMapper {
	 public Login checkLogin(@Param("username") String username,@Param("password") String password);
	 public Integer checkRole(String username);
	 public Login queryInfoByUserName(String username); 
}
