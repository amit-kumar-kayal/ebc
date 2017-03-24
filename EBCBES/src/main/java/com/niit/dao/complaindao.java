package com.niit.dao;

import java.util.List;


import com.niit.model.complain;

public interface complaindao {
public void insert(complain c);
public List<complain>getall();
public List<complain> getallcomplainbyuser(String mail);
}
