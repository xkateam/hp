package com.tedu.dao;

import java.util.List;

import com.tedu.pojo.Door;

public interface DoorMapper {
	/**
	 * 查询所有door信息
	 * @return
	 */
	public List<Door> findAll();
	
	/**
	 * 按id查询door信息
	 * @return
	 */
	public Door findById(Integer id);
	
	/**
	 * 修改door信息
	 * @return
	 */
	public int editDoor(Door door);
	
	/**
	 * 添加door信息
	 * @return
	 */
	public int addDoor(Door door);
	
	/**
	 * 删除door信息
	 * @return
	 */
	public int delDoor(Integer id);
}
