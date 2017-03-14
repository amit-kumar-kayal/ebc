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

import com.niit.dao.productdao;
import com.niit.dao.userdao;
import com.niit.model.cart;
import com.niit.model.product;
import com.niit.model.user;

@Controller
public class usercontroller {
	@Autowired
	productdao prodao;
	@Autowired
	userdao ud;  
	@Autowired
	private HttpSession session;
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
				session.setAttribute("content", u.getUsername());
				return mv;
			}
			else{
				ModelAndView mv=new ModelAndView("home");
				u=ud.getbyemail(email);
				
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
		
		return "redirect:/login";
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

	@RequestMapping(value = "cart/{var}")
	public ModelAndView singles(@PathVariable("var") int var) {
		ModelAndView m = new ModelAndView("cart");
		product p = prodao.getproductid(var);
		m.addObject("p", p);
		return m;
	}
}
