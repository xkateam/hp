package com.tedu.dao;

import java.util.List;

import com.tedu.pojo.Account;

public interface AccountMapper {
	public List<Account> findAll();
	
	public Account selectInfoByUsername(String username);
	public void saveAccountInfo(Account account);
}
