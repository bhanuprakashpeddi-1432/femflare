package com.klef.flemflare.model;

import jakarta.persistence.*;

@Entity
@Table(name="student_table")
public class Student
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
    @Column(name="sno")
    private int sno;
    
    @Column(name="stu_idno", nullable=false, unique=true, length=20)
    private String studentIdNo;
    
    @Column(name="stu_name", nullable=false, length=50)
    private String name;
    
    @Column(name="stu_college", nullable=false, length=100)
    private String college;
    
    @Column(name="stu_department", nullable=false, length=50)
    private String department;
    
    @Column(name="stu_email", nullable=false, unique=true, length=50)
    private String email;
    
    @Column(name="stu_contact", nullable=false, length=20)
    private String contact;
    
    @Column(name="stu_password", nullable=false, length=50)
    private String password;

    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public String getStudentIdNo() {
        return studentIdNo;
    }

    public void setStudentIdNo(String studentIdNo) {
        this.studentIdNo = studentIdNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
