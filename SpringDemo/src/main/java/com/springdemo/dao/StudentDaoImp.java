package com.springdemo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.springdemo.entities.Student;

public class StudentDaoImp implements StudentDao{

	@Override
	public String addStudentRecord(Student student) {
		try(Session session = getSessionFactory().openSession()) {
			Transaction transaction = session.getTransaction();
			transaction.begin();
			
			session.save(student);
			
			transaction.commit();
		} catch (Exception e) {
			// TODO: handle exception
			return e.getMessage();
		}
		
		return "Student Record Added Successfully";
	}
	
	private SessionFactory getSessionFactory() {
		return new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		
	}
}
