package com.klef.flemflare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.flemflare.model.Admin;
import com.klef.flemflare.model.Student;
import com.klef.flemflare.repository.AdminRepository;
import com.klef.flemflare.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private AdminRepository adminRepository;

	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	

	@Override
	public String StudentRegistration(Student stu) 
	{
		studentRepository.save(stu);
		return "Student Registered Successfully";
		
	}

	@Override
	public List<Student> ViewAllStudents() 
	{
		return studentRepository.findAll();
	}

	
	@Override
	public String deletestu(int sid) 
	{
		studentRepository.deleteById(sid);
		return "Student Deleted Successfully";
		
	}

	@Override
	public long stucount()
	{
		return studentRepository.count();
	}
	
}
