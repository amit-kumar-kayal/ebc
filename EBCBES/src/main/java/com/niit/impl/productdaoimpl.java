package com.niit.impl;

import java.util.List;

import org.hibernate.SessionFactory;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.niit.dao.productdao;
import com.niit.model.product;
@Repository
@Transactional
public class productdaoimpl implements productdao {

	
	@Autowired
	private SessionFactory sessionFactory;
	public List<product> getall() {
		
		return sessionFactory.getCurrentSession().createQuery("from product").list();
	}
	public void insert(product p) {
		sessionFactory.getCurrentSession().save(p);
		
	}
	public void update(product p) {
		sessionFactory.getCurrentSession().update(p);
		
	}
	public void delete(product p) {
		sessionFactory.getCurrentSession().delete(p);
	}
	public product getproductid(int productid) {
		return (product)sessionFactory.getCurrentSession().get(product.class, productid);
	}
	public List<product> categoryid(String c) {
		Query q=sessionFactory.getCurrentSession().createQuery("from product where category=?");
		q.setParameter(0,c);
	return q.list();
	}
}
