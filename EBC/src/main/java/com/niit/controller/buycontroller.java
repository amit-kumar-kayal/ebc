package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.cartdao;
import com.niit.dao.complaindao;
import com.niit.dao.orderdao;
import com.niit.dao.productdao;
import com.niit.dao.shipingdao;
import com.niit.dao.userdao;
import com.niit.model.cart;
import com.niit.model.complain;
import com.niit.model.orderdetails;
import com.niit.model.product;
import com.niit.model.shiping;
import com.niit.model.user;

@Controller
public class buycontroller {
	@Autowired
	productdao prodao;
	@Autowired
	userdao ud;
	@Autowired
	complaindao cod;
	@Autowired
	private HttpSession session;
	@Autowired
	cartdao cd;
@Autowired
shipingdao sd;
@Autowired
orderdao od;
	product p;
	user u;
	cart c;
	complain co;
	shiping sh;
	int shipingid;
	shiping ship;
	int productids;
	product pp;
	int Quantity;
	orderdetails or;
	List<cart>object;
	String mail;
	@RequestMapping(value = "buy")
	public ModelAndView gotobilling()
	{
		 mail=session.getAttribute("sm").toString();
		System.out.println(mail);
		ModelAndView m = new ModelAndView("billing");
		user u = ud.getbyemail(mail);
		m.addObject("a", u);
		return m;
		
	}
	
	@RequestMapping(value="shiping",method=RequestMethod.POST)
	public ModelAndView addPr(@ModelAttribute("s")shiping s){
		 mail=session.getAttribute("sm").toString();
		System.out.println(mail);
		sh=new shiping();
		s.setEmail(mail);
		
		sd.insert(s);
		shipingid = s.getShipingid();
		ModelAndView m = new ModelAndView("forward:/orderconf");
		return m;
	}
	
	 @RequestMapping(value="deletess/{n}")
	 public String deletes(@PathVariable("n")int n) {
	cd.delete(cd.getcartbyid(n));
	     return "redirect:/orderconf";
	 }
	 @RequestMapping(value = "buy/{productid}")
		public ModelAndView gotobillings(@PathVariable("productid") int productid,@ModelAttribute("p") product p)
		{
			if(session.getAttribute("mv")==null && session.getAttribute("sm")==null ){
			ModelAndView mv=new ModelAndView("forward:/view/"+productid);
			product obj=prodao.getproductid(productid);
			mv.addObject("p",obj);
			mv.addObject("bflgs", "Please signup or login before buying the product... ");
			 productids=productid;
		       pp=obj;
			return mv;
			}
			else
			{
				 ModelAndView mv=new ModelAndView("redirect:/billing");
				 product obj=prodao.getproductid(productid);
					String mail=session.getAttribute("sm").toString();
			       int pid=obj.getProductid();
					String pname=obj.getProductname();
					String cat=obj.getCategory();
					double pprice=obj.getProductprice();
					double totprice=pprice;
					or=new orderdetails();
					or.setEmail(mail);
					or.setProductid(pid);
					or.setProductname(pname);
					or.setCategory(cat);
					or.setProductprice(pprice);
					// or.setQuantity(qty);
					or.setTotalprice(totprice);
					od.insert(or);
			      
			       productids=or.getOrderid();
			       pp=obj;
			      // Quantity=add.getQuantitybyProductId(productid);
//			       System.out.println("Imran is checking pp contains product obj or nor by product name "+pp.getProductname());
//			       System.out.println(productID);
			      // System.out.println("Quantity ="+Quantity);
			       
			    
			    
					return mv;

			}
		}
	 @RequestMapping(value="orderconf")
		public ModelAndView buyin()
		{
			 ModelAndView m=new ModelAndView("orderconf");
			  mail=session.getAttribute("sm").toString();
			 if(productids==0)
			 {
				object=cd.getallcartbyuser(mail);
					m.addObject("c",object);
//					double d=cd.grantotal(mail);
//					System.out.println("grandTot= "+d);
//					m.addObject("grandtot",d);
					//Quantity=add.getQuantitybyProductId(productid);
//					mv.addObject("q", Quantity);
//					System.out.println("Quantity= "+Quantity);
		}
		else
		{
			System.out.print("dfghjkl fghjkl ghjk");
			m.addObject("p", "msg is written to make p not empty");
			
			orderdetails oss =od.getbymail(productids);
			m.addObject("c",oss);
			or.getQuantity();
			productids=0;
		}
			 user u = ud.getbyemail(mail);
			m.addObject("a",u);
			shiping uu=sd.getshipingbyid(shipingid);
			m.addObject("b",uu);
			
			return m;
		
		}
	 @RequestMapping(value = "/billing")
		public ModelAndView gotobillingss()
		{
		 String mail=session.getAttribute("sm").toString();
			System.out.println(mail);
			ModelAndView m = new ModelAndView("billing");
			user u = ud.getbyemail(mail);
			m.addObject("a", u);
			return m;
		}
	 @RequestMapping("/thankyou")
		public ModelAndView asamas()
		{
		 ModelAndView mv=new ModelAndView("thankyou");
		 if(!(object==null))
			{
				System.out.print("for deleting cart....."+mail);
				cd.deleteallcartbymail(mail);
				
			}
			return mv;

		}
}
