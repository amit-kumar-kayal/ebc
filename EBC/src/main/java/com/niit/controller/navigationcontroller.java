package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class navigationcontroller {
	@RequestMapping("/")
	public String shows()
	{
		return "home";
	}
	@RequestMapping("/home")
	public String show()
	{
		return "home";
	}
	@RequestMapping("/login")
	public String soon()
	{
		return "login";

	}
	@RequestMapping("/productfrom")
	public String soons()
	{
		return "productfrom";

	}
	@RequestMapping("/aboutus")
	public String asa()
	{
		return "aboutus";

	}
	@RequestMapping("/contactus")
	public String asam()
	{
		return "contactus";

	}
	@RequestMapping("/signup")
	public String asami()
	{
		return "signup";

	}
//	@RequestMapping("/single")
//	public String asama()
//	{
//		return "single";
//
//	}
//	@RequestMapping("/cart")
//	public String asamas()
//	{
//		return "cart";
//
//	}
}
