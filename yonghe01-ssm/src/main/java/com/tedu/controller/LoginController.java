package com.tedu.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tedu.pojo.Door;
import com.tedu.pojo.Login;
import com.tedu.service.DoorServiceImpl;
import com.tedu.service.LoginService;
import com.tedu.service.LoginServiceImpl;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	
	@RequestMapping("/login")
	 public String login(String username,String password,Model model) {
        Login login=loginService.checkLogin(username, password);
        if(username==null||"".equals(username)){  //没有输入姓名
            model.addAttribute("msg1","请输入姓名");
        }else if(login==null||"".trim().equals(login)){ //输入姓名但是姓名错误
            model.addAttribute("msg1","账户不存在，请先注册");
            return "login";
        }else if(login!=null &(password==null||"".equals(password))){ //姓名正确，但没有输入密码
            model.addAttribute("msg2","请输入密码");
        }else if(login!=null &!(login.getPassword().equals(password))) { //姓名正确，输入密码，但是密码错误
            model.addAttribute("msg2","密码 错误");

        }else if (login!=null &login.getPassword().equals(password)){ //姓名密码均正确
        	return "redirect:/door_list";
        }
        return "login";
        
    }

}
