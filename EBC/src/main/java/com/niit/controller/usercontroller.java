package com.niit.controller;



import java.util.ArrayList;
import java.util.List;

import javax.enterprise.inject.Model;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.cartdao;
import com.niit.dao.complaindao;
import com.niit.dao.productdao;
import com.niit.dao.userdao;
import com.niit.model.cart;
import com.niit.model.complain;
import com.niit.model.product;
import com.niit.model.user;

@Controller
public class usercontroller {
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
	product p;
	user u;
	cart c;
	complain co;
	@RequestMapping(value = "/sign", method = RequestMethod.POST)
	public ModelAndView validCredential(@RequestParam("email") String email,@RequestParam("password") String password)
	{
         if(ud.isvalid(email, password)==true)
		{
			System.out.println(email);
			System.out.println(password);
//			System.out.println("...........................................");
			user u=ud.getbyemail(email);
			System.out.println(u.getRole());
//			System.out.println(u.getPassword());
		
			if(u.getRole().equals("admin"))
			{
				ModelAndView mv=new ModelAndView("admin");
				 u=ud.getbyemail(email);
				 mv.addObject("adminmsg", "welcome to admin");
				
				session.setAttribute("am", u.getUsername());
				return mv;
			}
			else{
				ModelAndView mv=new ModelAndView("home");
				u=ud.getbyemail(email);
				session.setAttribute("sm", u.getEmail());
			session.setAttribute("content", u.getUsername());
			
				return mv;
			}
		
		}
		else
		{
			ModelAndView mv=new ModelAndView("login");
			mv.addObject("errormessage", "invalid credentials");
			return mv;
		}
	}
	

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String addPro7(@ModelAttribute("p") user p,HttpServletRequest request) {
		ud.insert(p);
		session.setAttribute("sm",p.getEmail());
		session.setAttribute("mv","insert user details");
		session.setAttribute("content", p.getUsername());
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView log()
	{
		ModelAndView m= new ModelAndView("home");
		session.invalidate();
		return m;
	}

	@RequestMapping(value = "userdetails")
	public ModelAndView showPro() {
		ModelAndView mv = new ModelAndView("productdetailsuser");
		List<product> obj = prodao.getall();
		mv.addObject("a", obj);
		return mv;
	}

	@RequestMapping(value = "/userdetails/{category}")
	public ModelAndView showPro5(@PathVariable("category") String c) {
		ModelAndView mv = new ModelAndView("productdetailsuser");
		List<product> obj = prodao.categoryid(c);
		mv.addObject("a", obj);
		return mv;
	}

	@RequestMapping(value = "view/{var}")
	public ModelAndView single(@PathVariable("var") int var) {
		ModelAndView m = new ModelAndView("single");
		product p = prodao.getproductid(var);
		m.addObject("a", p);
		return m;
	}
	@RequestMapping(value = "/myCart/add/{productid}" ,method = RequestMethod.POST)
	public ModelAndView getCart(@PathVariable("productid") int productid,@RequestParam("quantity") int qty) {
		if(session.getAttribute("mv")==null && session.getAttribute("sm")==null ){
			ModelAndView mv=new ModelAndView("forward:/view/"+productid);
			product obj=prodao.getproductid(productid);
			mv.addObject("p",obj);
			mv.addObject("b4cart", "Please signup or login before adding item to the cart... ");
			return mv;
			}
	
		else{
			String mail=session.getAttribute("sm").toString();
			System.out.println(mail);
                                             			
			if(cd.sameproduct(mail,productid)==true){
				ModelAndView mv=new ModelAndView("forward:/view/"+productid);
				mv.addObject("msg", "products are already in the cart , please continue shopping or checkout!!!");
				return mv;
			}
			else
				p = prodao.getproductid(productid);
			    cart c=new cart();
				c.setProductname(p.getProductname()); 
				c.setProductprice(p.getProductprice());  
				c.setProductid(p.getProductid());
				c.setQuantity(qty);
				c.setTotalprice((p.getProductprice())*(qty));
				
				c.setEmail(mail);
				cd.insert(c);
				
				ModelAndView mv=new ModelAndView("forward:/cart");
				mv.addObject("mssg",  "product is added succesfully in the cart!!");
				return mv;
			}
			
		}
	@RequestMapping("/cart")
	public ModelAndView showCart(){
		ModelAndView mv=new ModelAndView("cart");
		String mail=session.getAttribute("sm").toString();
		List<cart>obj=cd.getallcartbyuser(mail);
		mv.addObject("p",obj);
		return mv;
	}
	@RequestMapping("/billingaddress/{var}")
	public ModelAndView billing(@PathVariable ("var")String var){
		ModelAndView mv=new ModelAndView("billingaddress");
		user c=ud.getbyemail(var);
		mv.addObject("p",c);
		return mv;
	}
	 @RequestMapping(value="deletes/{n}")
	 public String deletes(@PathVariable("n")int n) {
	cd.delete(cd.getcartbyid(n));
	     return "redirect:/cart";
	 }
	 @RequestMapping(value="complain")
	public ModelAndView comp(@ModelAttribute("co") complain co)
	{
		if(session.getAttribute("mv")==null && session.getAttribute("sm")==null )
		{
			ModelAndView mv=new ModelAndView("contactus");
			mv.addObject("bflg", "Please signup or login before complain....");
			return mv;
		}

		else{
			String mail=session.getAttribute("sm").toString();
			System.out.println(mail);
			
			cod.insert(co);
			ModelAndView mv=new ModelAndView("forward:/prod");
			mv.addObject("aflg",  "your complain success Fully lodge ....");
			return mv;
		}
	}
	 @RequestMapping(value="prod")
		public ModelAndView showProdd(){
			ModelAndView mv=new ModelAndView("contactus");
			String mail=session.getAttribute("sm").toString();
			List<complain>obj=cod.getallcomplainbyuser(mail);
			mv.addObject("a",obj);
			return mv;
		}
}
