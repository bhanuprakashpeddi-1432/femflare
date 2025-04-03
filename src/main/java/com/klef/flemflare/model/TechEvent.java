package com.klef.flemflare.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tech_events")
public class TechEvent {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    private String description;
    private String venue;
    private String time;
    private String registerLink;

    public TechEvent() {}

    public TechEvent(String name, String description, String venue, String time, String registerLink) {
        this.name = name;
        this.description = description;
        this.venue = venue;
        this.time = time;
        this.registerLink = registerLink;
    }

    // Getters and Setters
    public int getId()
    {
    	return id;
    }
    public void setId(int id)
    {
    	this.id = id;
    }

    public String getName() 
    {
    	return name;
    }
    public void setName(String name)
    {
    	this.name = name; 
    }

    public String getDescription() 
    {
    	return description; 
    }
    public void setDescription(String description) 
    {
    	this.description = description;
    }

    public String getVenue() 
    {
    	return venue;
    }
    public void setVenue(String venue)
    {
    	this.venue = venue;
    }

    public String getTime()
    {
    	return time;
    }
    public void setTime(String time)
    {
    	this.time = time;
    }

    public String getRegisterLink() 
    {
    	return registerLink; 
    }
    public void setRegisterLink(String registerLink)
    {
    	this.registerLink = registerLink;
    }
}
