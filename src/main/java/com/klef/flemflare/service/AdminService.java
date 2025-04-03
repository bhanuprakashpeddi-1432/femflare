package com.klef.flemflare.service;


import java.util.List;

import com.klef.flemflare.model.Admin;
import com.klef.flemflare.model.Student;

public interface AdminService 
{
	
	public Admin checkadminlogin(String uname, String pwd);
	
	
	
	public String StudentRegistration(Student stu);
	public List<Student> ViewAllStudents();
	public String deletestu(int sid);
	public long stucount();

}
