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
	public int selectIntegralPayByPhone(String phone);
	public void updateIntegralPayByPhone(@Param("phone")String phone,@Param("point_count")Integer point_count);
	public void insertOrder(@Param("phone")String phone,@Param("orderId")String orderId);
	public String selectPhoneByOrderId(String orderId);
	
}
