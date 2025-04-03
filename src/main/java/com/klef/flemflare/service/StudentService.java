package com.klef.flemflare.service;

import com.klef.flemflare.model.Student;

public interface StudentService
{
	public Student checkstulogin(String stuemail, String stupwd);
	public String updateStudentProfile(Student student);
	public Student displayStudentbyID(int sid);
	public String StuRegistration(Student stu);


}
