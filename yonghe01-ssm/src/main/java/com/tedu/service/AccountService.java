package com.tedu.service;

import java.util.List;

import com.tedu.pojo.Account;


public interface AccountService {
	public List<Account> findAll();
	
	public Account selectInfoByUsername(String username);
	public void saveAccountInfo(Account account );
}


