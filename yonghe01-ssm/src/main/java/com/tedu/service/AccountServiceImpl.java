package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.AccountMapper;
import com.tedu.dao.DoorMapper;
import com.tedu.pojo.Account;
@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	AccountMapper  accountMapper;

	public List<Account> findAll() {
		// TODO Auto-generated method stub
		return accountMapper.findAll();
	}
	public Account selectInfoByUsername(String username) {
		
		return accountMapper.selectInfoByUsername(username);
	}
	public void saveAccountInfo(Account account){
		 accountMapper.saveAccountInfo(account);
		
	}
	public void selectPointByAccountId(Integer account_id) {
		accountMapper.selectPointByAccountId(account_id);
		// TODO Auto-generated method stub
		
	}
	public void updatePointCountByUsernameAndPrice(Integer price, String username) {
		accountMapper.updatePointCountByUsernameAndPrice(price, username);
		
	}

}
