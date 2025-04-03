package com.klef.flemflare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.flemflare.model.Student;
import com.klef.flemflare.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController 
{
    @Autowired
    private StudentService studentService;
   
    @GetMapping("sreg")
    public ModelAndView sreg()
    {
        return new ModelAndView("sreg");
    }
    
    @PostMapping("insertst")
    public ModelAndView insertst(@RequestParam("sidno") String studentIdNo,
            @RequestParam("sname") String name,
            @RequestParam("scollege") String college,
            @RequestParam("sdept") String dept,
            @RequestParam("semail") String email,
            @RequestParam("scontact") String contact,
            @RequestParam("spwd") String password) {

// Create student object
Student stu = new Student();
stu.setStudentIdNo(studentIdNo);
stu.setName(name);
stu.setCollege(college);
stu.setDepartment(dept);
stu.setEmail(email);
stu.setContact(contact);
stu.setPassword(password);

// Create ModelAndView object for returning view
ModelAndView mv = new ModelAndView("sreg");

try {
// Call service to register student
String resultMessage = studentService.StuRegistration(stu);
mv.addObject("message", resultMessage); // Success message
} catch (DataIntegrityViolationException e) {
// Handle duplicate entry error (if the email or ID already exists)
mv.addObject("message", "Error: Duplicate entry. Student ID or Email already exists.");
} catch (Exception e) {
// Handle any other unexpected errors
mv.addObject("message", "An unexpected error occurred. Please try again.");
}

return mv;
}
    
    @GetMapping("stulogin")
    public ModelAndView stulogin()
    {
        return new ModelAndView("stulogin");
    }
    
    @PostMapping("checkstulogin")
    @ResponseBody
    public ModelAndView checkstudentlogin(HttpServletRequest request)
    {
        ModelAndView mv = new ModelAndView();
        String semail = request.getParameter("semail");
        String spwd = request.getParameter("spwd");
        
        Student stu = studentService.checkstulogin(semail, spwd);
        if(stu != null)
        {
            HttpSession session = request.getSession();
            session.setAttribute("student", stu); 
            
            mv.setViewName("redirect:stuhome"); 
        } 
        else
        {
            mv.setViewName("stulogin");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }
    
    @GetMapping("stuhome")
    public ModelAndView stuhome()
    {
        return new ModelAndView("stuhome");
    }
    
    @GetMapping("stulogout")
    public ModelAndView stulogout(HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        session.removeAttribute("student");
        
        return new ModelAndView("stulogin");
    }
    
    @GetMapping("stusessionexpiry")
    public ModelAndView stusessionexpiry()
    {        
        return new ModelAndView("stusessionexpiry");
    }
    
    @GetMapping("stuprofile")
    public ModelAndView stuprofile()
    {
        return new ModelAndView("stuprofile");
    }
    
    @GetMapping("updatestu")
    public ModelAndView updatestu()
    {
        return new ModelAndView("updatestu");
    }
    
    @PostMapping("updatestuprofile")
    public ModelAndView updatestuprofile(HttpServletRequest request)
    {
        ModelAndView mv = new ModelAndView();
        
        try
        {
            int id = Integer.parseInt(request.getParameter("sid"));
            String studentIdNo = request.getParameter("sidno"); 
            String name = request.getParameter("sname");
            String college = request.getParameter("scollege");
            String dept = request.getParameter("sdept");
            String email = request.getParameter("semail");
            String password = request.getParameter("spwd");
            String contact = request.getParameter("scontact");
        
            Student stu = new Student();
            stu.setSno(id);
            stu.setStudentIdNo(studentIdNo);
            stu.setName(name);
            stu.setCollege(college);
            stu.setDepartment(dept);
            stu.setEmail(email);
            stu.setPassword(password);
            stu.setContact(contact);
            
            String msg = studentService.updateStudentProfile(stu);
            
            Student s = studentService.displayStudentbyID(id);
            
            HttpSession session = request.getSession();
            session.setAttribute("student", s); 
          
            mv.setViewName("updatessuccess");
            mv.addObject("message", msg);
          
        }
        catch(Exception e)
        {
            mv.setViewName("updateserror");
            mv.addObject("message", e);
        }
        return mv;
    }
}
