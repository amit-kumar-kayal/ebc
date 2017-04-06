package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class shiping {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int shipingid;
	private String email;
private String username;
private String address;
private String city;
private int pincode;
private long phno;

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getShipingid() {
	return shipingid;
}
public void setShipingid(int shipingid) {
	this.shipingid = shipingid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public int getPincode() {
	return pincode;
}
public void setPincode(int pincode) {
	this.pincode = pincode;
}
public long getPhno() {
	return phno;
}
public void setPhno(long phno) {
	this.phno = phno;
}

}
