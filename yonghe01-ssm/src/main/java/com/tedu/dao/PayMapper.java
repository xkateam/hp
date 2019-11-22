package com.tedu.dao;

import org.apache.ibatis.annotations.Param;

public interface PayMapper {

	public int selectPoint_countByusername(String username);
	
	public void updatePoint_countByusername(@Param("username") String username,@Param("point_count") int point_count);
	
}
