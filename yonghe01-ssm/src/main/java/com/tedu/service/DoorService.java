package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.DoorMapper;
import com.tedu.pojo.Door;


public interface DoorService{

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
