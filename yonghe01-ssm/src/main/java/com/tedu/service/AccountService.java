package com.tedu.service;

import java.util.List;

import com.tedu.pojo.Account;


public interface AccountService {
	public List<Account> findAll();
	
	public Account selectInfoByUsername(String username);
	public void saveAccountInfo(Account account );
	public void selectPointByAccountId(Integer account_id);
	public void updatePointCountByUsernameAndPrice(Integer price,String username);
	public int selectIntegralPayByPhone(String phone);
	public void updateIntegralPayByPhone(String phone,Integer point_count);
	public void insertOrder(String phone,String orderId);
	public String selectPhoneByOrderId(String orderId);
}


