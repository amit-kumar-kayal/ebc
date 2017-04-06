package com.niit.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.cartdao;
import com.niit.model.cart;

@Repository 
@Transactional
public class cartdaoimpl implements cartdao {
	@Autowired
	cartdao cd;
	@Autowired
	private SessionFactory sessionFactory;
	public void insert(cart c) {
		
		sessionFactory.getCurrentSession().save(c);
	}

	public List<cart> getall() {
		List<cart> obj= sessionFactory.getCurrentSession().createQuery("From cart").list();
		return obj;
	}

	public void delete(cart c) {
		sessionFactory.getCurrentSession().delete(c);
	}

	public cart getcartbyid(int id) {
		return (cart)sessionFactory.getCurrentSession().get(cart.class,id);
	}

	public boolean sameproduct(String email, int productid) {
		List<cart> obj=sessionFactory.getCurrentSession().createQuery("from cart where email='" + email + "'and productid='" + productid + "'").list();
		int x=0;
		for(cart c:obj)
		{
			if(c.getProductid()==productid){
				x++;
			}
		}
		if(x==0){
			return false;
			
		}
		else{
		return true;
		}
	}

	public List<cart> getallcartbyuser(String mail) {
		List<cart> obj=sessionFactory.getCurrentSession().createQuery("from cart where email='"+mail+"'").list();
		return obj;
	}

	public double grantotal(String email) {
		String hql="select sum(totalprice) where email ='"+email+"'";
		Query qer = sessionFactory.getCurrentSession().createQuery(hql);
		double sum =(Double) qer.uniqueResult();
		return 0;
		
	}

	public cart cartbyemail(String email) {
		
		return  (cart)sessionFactory.getCurrentSession().get(cart.class, email);
	}

	public void deleteallcartbymail(String mail) {
		List<cart>o=getallcartbyuser(mail);
		for(cart o2:o)
		{
			sessionFactory.getCurrentSession().delete(o2);
		}
		
	}

	
	}

