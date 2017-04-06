package com.niit.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.complaindao;

import com.niit.model.complain;
@Repository 
@Transactional
public class complaindaoimpl implements complaindao {
	@Autowired
	private SessionFactory sessionFactory;
	public void insert(complain c) {
		
		sessionFactory.getCurrentSession().save(c);
	}

	public List<complain> getall() {
		List<complain> obj= sessionFactory.getCurrentSession().createQuery("From complain").list();
		return obj;
	}

	public List<complain> getallcomplainbyuser(String mail) {
		List<complain> obj=sessionFactory.getCurrentSession().createQuery("from complain where email='"+mail+"'").list();
		return obj;
	}

	public void delete(complain c) {
		sessionFactory.getCurrentSession().delete(c);
		
	}

	public complain getbyid(int id) {

		return (complain)sessionFactory.getCurrentSession().get(complain.class,id);
	}

}
