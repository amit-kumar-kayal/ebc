package com.niit.dao;

import java.util.List;

import com.niit.model.cart;
import com.niit.model.shiping;


public interface shipingdao {
public void insert(shiping s);
public shiping getbyemail(String email);
public List<shiping>getbyemails(String email);
public void delete(shiping s);
public shiping getshipingbyid(int id);
}
