package com.springdemo.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.springdemo.dao.StudentDao;
import com.springdemo.dao.StudentDaoImp;
import com.springdemo.entities.Student;

public class StudentServiceImp implements StudentService {

	@Autowired
	private StudentDao studentDao;

	@Override
	public String addStudent(Student student) {

		return studentDao.addStudentRecord(student);
	}
}
