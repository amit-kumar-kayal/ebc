package com.niit.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.shipingdao;

import com.niit.model.shiping;

@Repository 
@Transactional
public class shipingdaoimpl implements shipingdao {
	@Autowired
	private SessionFactory sessionFactory;
	public void insert(shiping s) {
		sessionFactory.getCurrentSession().save(s);
	}
	public shiping getbyemail(String email) {
		
		return (shiping)sessionFactory.getCurrentSession().get(shiping.class, email);
	}
	public List<shiping> getbyemails(String email) {
		List<shiping> obj=sessionFactory.getCurrentSession().createQuery("from shiping where email='"+email+"'").list();
		return obj;
	}
	public void delete(shiping s) {
	
		sessionFactory.getCurrentSession().delete(s);
	}
	public shiping getshipingbyid(int id) {
		return (shiping)sessionFactory.getCurrentSession().get(shiping.class, id);
	}

}
