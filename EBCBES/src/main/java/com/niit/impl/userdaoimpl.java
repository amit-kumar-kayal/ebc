package com.niit.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.userdao;
import com.niit.model.user;
@Repository
@Transactional	
public class userdaoimpl implements userdao {
	@Autowired
	userdao ud;
	@Autowired
	private SessionFactory sessionFactory;
	public void insert(user p) {
		sessionFactory.getCurrentSession().save(p);
	}

	public user getbyemail(String email) {
		
		return  (user)sessionFactory.getCurrentSession().get(user.class, email);
	}

	public List getAllNames() {
		
		return sessionFactory.getCurrentSession().createQuery("select u.email from user u").list();
	}

	public boolean isvalid(String email, String password) {
		String hql=("from user where email ='"+email+"' and password='"+password+"'");
	
		if( sessionFactory.getCurrentSession().createQuery(hql).uniqueResult()== null)
		{
		return false;
		}
		else{
			return true;
		}
	}

	public void update(user p) {
		sessionFactory.getCurrentSession().update(p);
	}
	
}
