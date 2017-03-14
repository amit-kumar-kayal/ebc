package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;
@Entity
public class product {
	@Id	
	@GeneratedValue(strategy=GenerationType.AUTO)
		private int productid;
		private String productname;
		private double productprice;
		private String category;
		private String productdesc;
		
		@javax.persistence.Transient
		 MultipartFile File;

		public int getProductid() {
			return productid;
		}

		public void setProductid(int productid) {
			this.productid = productid;
		}

		public String getProductname() {
			return productname;
		}

		public void setProductname(String productname) {
			this.productname = productname;
		}

		public double getProductprice() {
			return productprice;
		}

		public void setProductprice(double productprice) {
			this.productprice = productprice;
		}

		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

		public String getProductdesc() {
			return productdesc;
		}

		public void setProductdesc(String productdesc) {
			this.productdesc = productdesc;
		}

		public MultipartFile getFile() {
			return File;
		}

		public void setFile(MultipartFile file) {
			File = file;
		}
}
