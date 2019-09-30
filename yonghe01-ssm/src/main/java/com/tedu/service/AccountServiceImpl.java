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
	public int selectIntegralPayByPhone(String phone) {
		// TODO Auto-generated method stub
		return accountMapper.selectIntegralPayByPhone(phone);
	}
	public void updateIntegralPayByPhone(String phone, Integer point_count) {
		// TODO Auto-generated method stub
		Integer point = selectIntegralPayByPhone(phone)+point_count;
		accountMapper.updateIntegralPayByPhone(phone, point);
	}
	public void insertOrder(String phone, String orderId) {
		// TODO Auto-generated method stub
		accountMapper.insertOrder(phone, orderId);
	}
	public String selectPhoneByOrderId(String orderId) {
		// TODO Auto-generated method stub
		return accountMapper.selectPhoneByOrderId(orderId);
	}

}
