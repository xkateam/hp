package com.tedu.pojo;

import java.io.Serializable;

public class Login implements Serializable{
	private String username;
	private String password;
	
	@Override
	public String toString() {
		return "Login [username=" + username + ", password=" + password + "]";
	}
	public Login() {
		super();
	}
	public Login(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	

}
