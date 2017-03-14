package com.niit.dao;

import java.util.List;

import com.niit.model.product;

public interface productdao {
	public List <product>getall();
	public void insert(product p);
	public void update(product p);
	public void delete(product p);
	public product getproductid(int productid);
    public List<product>categoryid(String c);
}
