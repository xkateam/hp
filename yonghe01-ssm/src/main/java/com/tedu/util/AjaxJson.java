package com.tedu.util;

import java.util.Map;

import com.alibaba.fastjson.JSONObject;
public class AjaxJson {

	private int code ;// 是否成功nmbmnbmbmn
	private String msg = "操作成功";// 提示信息
	private Object obj = null;// 其他信息
	private Map<String, Object> data;// 其他参数

	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public Map<String, Object> getData() {
		return data;
	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public String getJsonStr(){
		JSONObject obj = new JSONObject();
		obj.put("code", this.code);
		obj.put("msg", this.getMsg());
		obj.put("obj", this.obj);
		obj.put("data", this.data);
		return obj.toJSONString();
	}

	
	
}

