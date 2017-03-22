package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.productdao;
import com.niit.model.product;
@Controller
public class homecontroller {
	@Autowired
	productdao prodao;
	private HttpSession session;

			
	
	@RequestMapping(value="productdetails")
	public ModelAndView showPro(){
		ModelAndView mv=new ModelAndView("productdetails");
		List<product>obj=prodao.getall();
		mv.addObject("a",obj);
		return mv;
	}
	@RequestMapping(value="/productdetails/{category}")
	public ModelAndView showPro5(@PathVariable("category")String c){
		ModelAndView mv=new ModelAndView("productdetails");
		List<product>obj=prodao.categoryid(c);
		mv.addObject("a",obj);
		return mv;
	}
	
	@RequestMapping(value="success",method=RequestMethod.POST)
	public String addPro2(@ModelAttribute("p")product p,HttpServletRequest request){
		
		prodao.insert(p);
		MultipartFile file = p.getFile();
		//String originalfile=file.getOriginalFilename();
		String filepath=request.getSession().getServletContext().getRealPath("/resources/images/product/");
		String filename=filepath+"//"+p.getProductid()+".jpg";
		try
		{
			byte[]imagebyte=p.getFile().getBytes();
		
		BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filename));
			fos.write(imagebyte);
			fos.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "redirect:/productdetails";
	}

	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String addPro3(@ModelAttribute("p")product p,HttpServletRequest request){
		prodao.update(p);
		MultipartFile file = p.getFile();
		String originalfile=file.getOriginalFilename();
		String filepath=request.getSession().getServletContext().getRealPath("/resources/images/product/");
		String filename=filepath+"//"+p.getProductid()+".jpg";
		try
		{
			byte[]imagebyte=p.getFile().getBytes();
		
		BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(filename));
			fos.write(imagebyte);
			fos.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	return "redirect:/productdetails";
}
	 @RequestMapping(value="delete/{n}")
	 public String delete(@PathVariable("n")int n) {
	 prodao.delete(prodao.getproductid(n));
	     return "redirect:/productdetails";
	 }
	 
	 @RequestMapping(value="editing/{var}")
	 public ModelAndView edit(@PathVariable ("var")int var)
	 {
		 ModelAndView m=new ModelAndView("edit");
		 product p=prodao.getproductid(var);
		 m.addObject("p",p);
		 return m;
	 }
}
