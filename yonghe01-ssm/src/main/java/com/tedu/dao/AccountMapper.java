package com.tedu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tedu.pojo.Account;

public interface AccountMapper {
	public List<Account> findAll();
	
	public Account selectInfoByUsername(String username);
	public void saveAccountInfo(Account account);
	public  void selectPointByAccountId(Integer account_id); 
	public void updatePointCountByUsernameAndPrice(@Param("price")Integer price,@Param("username")String username);
	
	
}
