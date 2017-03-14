package com.niit.dao;

import java.util.List;

import com.niit.model.user;

public interface userdao {
	public void insert(user p);
	public user getbyemail(String email);
	public List getAllNames();
	public boolean isvalid(String email,String password);
	
}
