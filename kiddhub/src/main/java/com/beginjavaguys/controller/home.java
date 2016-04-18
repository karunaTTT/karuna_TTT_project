package com.beginjavaguys.controller;
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;
@Controller 
public class home {
	String message = "Welcome to your 1st Maven Spring project !";  
	  
   
    /*public String showMessage() {  
        System.out.println("from controller");  
        return ("login");  
    }  */
    
	 @RequestMapping("/login")  
    public ModelAndView showMessage() {  
        System.out.println("from controller");  
        return new ModelAndView ("login");    
    } 
    
	 @RequestMapping("/home")  
	    public ModelAndView showMessage1() {  
	        System.out.println("from controller");  
	        return new ModelAndView ("home");    
	    } 
	    
	 @RequestMapping("/bag")  
	    public ModelAndView showMessage2() {  
	        System.out.println("from controller");  
	        return new ModelAndView ("bag");    
	    } 
	    
	
}
