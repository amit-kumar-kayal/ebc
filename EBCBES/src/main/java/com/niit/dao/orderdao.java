package com.niit.dao;

import java.util.List;

import com.niit.model.orderdetails;

public interface orderdao {
	public void insert(orderdetails o);
	public orderdetails getbymails(String mail);
	public orderdetails getbymail(int oid);
	public List<orderdetails> getall();
}
