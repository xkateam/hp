package com.tedu.service;

public interface PayService {

	public int selectPoint_countByusername(String username);
	
	public void updatePoint_countByusername(String username,int point_count);
	
}
