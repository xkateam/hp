package com.tedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tedu.pojo.Door;
import com.tedu.service.DoorServiceImpl;
//hkhkjhjhjk
@Controller
public class DoorController {
	@Autowired
	DoorServiceImpl doorServiceImpl;
	
	@RequestMapping("/doorList")
	public String doorList(Model model) {
		List<Door> list = doorServiceImpl.findAll();
		model.addAttribute("doorList", list);
		return "door_list";
	}
	
	/**
	 * 新增数据
	 * @param door
	 * @return
	 */
	@RequestMapping(value="/doorAdd",method=RequestMethod.POST)
	public String doorAdd(Door door) {
		doorServiceImpl.addDoor(door);
		return "forward:/doorList";
	}
	
	/**
	 * 根据id查询
	 */
	@RequestMapping("/doorInfo")
	public String toEditDoor(Integer id,HttpSession session) {
		Door door = doorServiceImpl.findById(id);
		session.setAttribute("door", door);
		return "door_update";
	}
	
	/**
	 * 修改数据
	 */
	@RequestMapping(value="/doorUpdate",method=RequestMethod.POST)
	public String editDoor(Door door) {
		doorServiceImpl.editDoor(door);
		return "forward:/doorList";
	}
	
	/**
	 * 删除数据
	 * @param id
	 * @return
	 */
	@RequestMapping("/doorDelete")
	public String doorDelete(int id) {
		doorServiceImpl.delDoor(id);
		return "forward:/doorList";
	}
	
}
