package com.springdemo.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String area;
	private int pincode;

	@OneToOne(cascade = CascadeType.ALL, mappedBy = "address")
	private Student student;

	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Address(int id, String area, int pincode, Student student) {
		super();
		this.id = id;
		this.area = area;
		this.pincode = pincode;
		this.student = student;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", area=" + area + ", pincode=" + pincode ;
	}

}
