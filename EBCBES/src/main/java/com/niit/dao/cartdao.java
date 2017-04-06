package com.niit.dao;

import java.util.List;

import com.niit.model.cart;

public interface cartdao {
	public void insert(cart c);
	public List<cart> getall();
	public void delete(cart c);
	public cart getcartbyid(int id);
	public boolean sameproduct(String email,int productid);
	public List<cart> getallcartbyuser(String mail);
	public double grantotal(String email);
	public cart cartbyemail(String email);
	public void deleteallcartbymail(String mail);
}
