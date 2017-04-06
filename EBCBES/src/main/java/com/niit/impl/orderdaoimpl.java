package com.niit.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.orderdao;
import com.niit.model.orderdetails;
@Repository
@Transactional
public class orderdaoimpl implements orderdao {
	@Autowired
	private SessionFactory sessionFactory;
	public void insert(orderdetails o) {
		sessionFactory.getCurrentSession().save(o);
	}

	public orderdetails getbymails(String mail) {
	
		return (orderdetails)sessionFactory.getCurrentSession().get(orderdetails.class,mail);
	}

	public orderdetails getbymail(int oid) {
		return (orderdetails)sessionFactory.getCurrentSession().get(orderdetails.class,oid);
	}

	public List<orderdetails> getall() {
		
		return sessionFactory.getCurrentSession().createQuery("from orderdetails").list();
	}

}
