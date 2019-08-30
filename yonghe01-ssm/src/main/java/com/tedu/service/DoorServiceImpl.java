package com.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tedu.dao.DoorMapper;
import com.tedu.pojo.Door;

@Service
public class DoorServiceImpl implements DoorService {
	@Autowired
	DoorMapper doorMapper;
	
	public List<Door> findAll() {
		// TODO Auto-generated method stub
		return doorMapper.findAll();
	}

	public Door findById(Integer id) {
		// TODO Auto-generated method stub
		return doorMapper.findById(id);
	}

	public int editDoor(Door door) {
		// TODO Auto-generated method stub
		return doorMapper.editDoor(door);
	}

	public int addDoor(Door door) {
		// TODO Auto-generated method stub
		return doorMapper.addDoor(door);
	}

	public int delDoor(Integer id) {
		// TODO Auto-generated method stub
		return doorMapper.delDoor(id);
	}

}
