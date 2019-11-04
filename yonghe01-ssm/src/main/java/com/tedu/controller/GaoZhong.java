package com.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GaoZhong {
	@RequestMapping(value="/student/gaozhong1")
	public String index1(String username) {
		return "student/gaozhong1";
}
	@RequestMapping(value="/student/gaozhong2")
	public String index2(String username) {
		return "student/gaozhong2";
}
	@RequestMapping(value="/student/gaozhong3")
	public String index3(String username) {
		return "student/gaozhong3";
}
	@RequestMapping(value="/student/gaozhong4")
	public String index4(String username) {
		return "student/gaozhong4";
}
	@RequestMapping(value="/student/gaozhong5")
	public String index5(String username) {
		return "student/gaozhong5";
}
	@RequestMapping(value="/student/gaozhong6")
	public String index6(String username) {
		return "student/gaozhong6";
}
}
