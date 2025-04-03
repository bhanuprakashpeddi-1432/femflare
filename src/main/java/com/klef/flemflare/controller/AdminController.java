package com.klef.flemflare.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.flemflare.model.Admin;
import com.klef.flemflare.model.FemFlareEvent;
import com.klef.flemflare.model.LiteraryEvent;
import com.klef.flemflare.model.SpotEvent;
import com.klef.flemflare.model.Student;
import com.klef.flemflare.model.TechEvent;
import com.klef.flemflare.service.AdminService;
import com.klef.flemflare.service.FemFlareEventService;
import com.klef.flemflare.service.LiteraryEventService;
import com.klef.flemflare.service.SpotEventService;
import com.klef.flemflare.service.TechEventService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController
{
		@Autowired
		private AdminService adminService;
		
		@Autowired
	    private TechEventService techEventService;
		
		@Autowired
	    private SpotEventService spotEventService;
		
		@Autowired
	    private LiteraryEventService literaryEventService;
		
		@Autowired
	    private FemFlareEventService femFlareEventService;
		
		@GetMapping("/")
		public ModelAndView home()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("home");
			return mv;
		}
		
		@GetMapping("adminhome")
		public ModelAndView adminhome()
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminhome");
			
			return mv;
		}
		
		@GetMapping("adminlogin")
		public ModelAndView adminlogin()
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		@PostMapping("checkadminlogin")
		public ModelAndView checkadminlogin(HttpServletRequest request)
		{
			ModelAndView mv = new ModelAndView();
			String auname=request.getParameter("auname");
			String apwd=request.getParameter("apwd");
			
			Admin admin = adminService.checkadminlogin(auname, apwd);
			if(admin!=null)
			{

				HttpSession session = request.getSession();
	            session.setAttribute("admin", admin); 
				mv.setViewName("redirect:adminhome");
			}
			else
			{
				mv.setViewName("adminloginfail");
				mv.addObject("message","Login Failed");
			}
			return mv;
		}
		@GetMapping("adminsessionexpiry")
		public ModelAndView adminsessionexpiry()
		{		
			ModelAndView mv = new ModelAndView();
			mv.setViewName("adminsessionexpiry");
			return mv;
		}
		
		
		@GetMapping("adminlogout")
		public ModelAndView adminlogout(HttpServletRequest request)
		{
	        HttpSession session = request.getSession();
			session.removeAttribute("admin");
			
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		
		
		//student operations 
		
		@GetMapping("viewallstus")
	    public ModelAndView viewallstus()
	    {
	      ModelAndView mv = new ModelAndView();
	      List<Student> stulist = adminService.ViewAllStudents();
	      mv.setViewName("viewallstus");
	      mv.addObject("stulist",stulist);
	      
	      long count =adminService.stucount();
		  mv.addObject("saccount", count);
			
	      return mv;
	    }
		
		@GetMapping("stureg")
		public ModelAndView stureg() {
		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("stureg");
		    return mv;
		}

		@PostMapping("insertstu")
	    public ModelAndView insertstu(@RequestParam("sidno") String studentIdNo,
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
	        ModelAndView mv = new ModelAndView("stureg");

	        try {
	            // Call service to register student
	            String resultMessage = adminService.StudentRegistration(stu);
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

		
		
		@GetMapping("deletes")
		public String deleteopertaions(@RequestParam("id") int sid)
		{
			adminService.deletestu(sid);
			return "redirect:/deletestu";
		}
		
		@GetMapping("deletestu")
	    public ModelAndView deletestu()
	    {
	      ModelAndView mv = new ModelAndView();
	      List<Student> stulist = adminService.ViewAllStudents();
	      mv.setViewName("deletestu");
	      mv.addObject("stulist",stulist);
	      return mv;
	    }
		
		
		
		//tech events
		
		 @GetMapping("addtechevent")
		    public ModelAndView addEventForm() {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("addtechevent");
		        return mv;
		    }

		    @PostMapping("insertevent")
		    public ModelAndView insertEvent(HttpServletRequest request) {
		        String name = request.getParameter("name");
		        String description = request.getParameter("description");
		        String venue = request.getParameter("venue");
		        String time = request.getParameter("time");
		        String registerLink = request.getParameter("registerLink");

		        TechEvent event = new TechEvent();
		        event.setName(name);
		        event.setDescription(description);
		        event.setVenue(venue);
		        event.setTime(time);
		        event.setRegisterLink(registerLink);

		        techEventService.addTechEvent(event);

		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("addtechevent");
	            mv.addObject("message", "Event added successfully!");
	            return mv;
		    }

		    @GetMapping("techeventlist")
		    public ModelAndView techeventList() {
		        List<TechEvent> events = techEventService.getAllTechEvents();
		        ModelAndView mv = new ModelAndView("techeventlist");
		        mv.addObject("events", events);
		        return mv;
		    }
		    
		    
		    //spot events
		    
		    @GetMapping("addspotevent")
		    public ModelAndView addSpotEventForm() {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("addspotevent");
		        return mv;
		    }

		    @PostMapping("insertspotevent")
		    public ModelAndView insertSpotEvent(HttpServletRequest request) {
		        String name = request.getParameter("name");
		        String description = request.getParameter("description");
		        String venue = request.getParameter("venue");
		        String time = request.getParameter("time");
		        String registerLink = request.getParameter("registerLink");

		        SpotEvent event = new SpotEvent();
		        event.setName(name);
		        event.setDescription(description);
		        event.setVenue(venue);
		        event.setTime(time);
		        event.setRegisterLink(registerLink);

		        spotEventService.addSpotEvent(event);

		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("addspotevent");
		        mv.addObject("message", "Spot Event added successfully!");
		        return mv;
		    }

		    @GetMapping("spoteventlist")
		    public ModelAndView spotEventList() {
		        List<SpotEvent> events = spotEventService.getAllSpotEvents();
		        ModelAndView mv = new ModelAndView("spoteventlist");
		        mv.addObject("events", events);
		        return mv;
		    }

		    //literary events
		    @GetMapping("addliteraryevent")
		    public ModelAndView addLiteraryEventForm() {
		        return new ModelAndView("addliteraryevent");
		    }

		    @PostMapping("insertliteraryevent")
		    public ModelAndView insertliteraryEvent(HttpServletRequest request) {
		        String name = request.getParameter("name");
		        String description = request.getParameter("description");
		        String venue = request.getParameter("venue");
		        String time = request.getParameter("time");
		        String registerLink = request.getParameter("registerLink");

		        LiteraryEvent event = new LiteraryEvent();
		        event.setName(name);
		        event.setDescription(description);
		        event.setVenue(venue);
		        event.setTime(time);
		        event.setRegisterLink(registerLink);

		        literaryEventService.addLiteraryEvent(event);

		        ModelAndView mv = new ModelAndView("addliteraryevent");
		        mv.addObject("message", "Event added successfully!");
		        return mv;
		    }

		    @GetMapping("literaryeventlist")
		    public ModelAndView literaryEventList() {
		        List<LiteraryEvent> events = literaryEventService.getAllLiteraryEvents();
		        ModelAndView mv = new ModelAndView("literaryeventlist");
		        mv.addObject("events", events);
		        return mv;
		    }
		    
		//ms&mrs femflare event 
		    @GetMapping("addfemflareevent")
		    public ModelAndView addFemFlareEventForm() {
		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("addfemflareevent");
		        return mv;
		    }

		    @PostMapping("insertfemflareevent")
		    public ModelAndView insertFemFlareEvent(HttpServletRequest request) {
		        String name = request.getParameter("name");
		        String description = request.getParameter("description");
		        String venue = request.getParameter("venue");
		        String time = request.getParameter("time");
		        String registerLink = request.getParameter("registerLink");

		        FemFlareEvent event = new FemFlareEvent();
		        event.setName(name);
		        event.setDescription(description);
		        event.setVenue(venue);
		        event.setTime(time);
		        event.setRegisterLink(registerLink);

		        femFlareEventService.addFemFlareEvent(event);

		        ModelAndView mv = new ModelAndView();
		        mv.setViewName("addfemflareevent");
		        mv.addObject("message", "Event added successfully!");
		        return mv;
		    }
		    
		    @GetMapping("femflareeventlist")
		    public ModelAndView femFlareEventList() {
		        List<FemFlareEvent> events = femFlareEventService.getAllFemFlareEvents();
		        ModelAndView mv = new ModelAndView("femflareeventlist");
		        mv.addObject("events", events);
		        return mv;
		    }


		    
		
		
//committee
@GetMapping("/committee")
public String Committee() {
    return "committee"; 
}
//studentchiefs
@GetMapping("/studentchiefs")
public String studentchiefs() {
  return "studentchiefs"; 
}
//chief patrons
@GetMapping("/chiefpatrons")
public String chiefpatrons() {
    return "chiefpatrons"; 
}
//patronsandadvisors

@GetMapping("/patronsandadvisors")
public String patronsandadvisors() {
  return "patronsandadvisors"; 
}

//chiefcoordinators
@GetMapping("/chiefcoordinators")
public String chiefcoordinators() {
  return "chiefcoordinators"; 
}

//chairpersonsandconvenors

@GetMapping("/chairpersonsandconvenors")
public String chairpersonsandconvenors() {
return "chairpersonsandconvenors"; 
}

//about 
@GetMapping("/about")
public String about() {
    return "about"; 
}

//our visionaries
 
@GetMapping("/ourvisionaries")
public String ourvisionaries() {
  return "ourvisionaries"; 
}
}


