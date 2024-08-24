package com.springdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.springdemo.entities.Student;
import com.springdemo.service.StudentService;



@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@GetMapping("/add")
	public String gotoStudent() {
		return "addStudent";
	}
	
	@PostMapping("/addStudent")
	public String postMethodName(@ModelAttribute("student") Student student, Model model) {
		//TODO: process POST request
//		System.out.println(student);
//		studentService.addStudent(student);
//		System.out.println(msg);
		model.addAttribute("message",studentService.addStudent(student));
		return "success";
	}
	
	
}
