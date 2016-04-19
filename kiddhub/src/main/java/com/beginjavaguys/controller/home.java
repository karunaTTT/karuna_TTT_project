package com.beginjavaguys.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beginjavaguys.DAO.kid;
import com.beginjavaguys.model.kidmodel;
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
	 
	
	// private kid kiddao;
	 @RequestMapping("/product")
	 public ModelAndView showMessage3()throws IOException
	 {
		 kid kiddao = new kid();
		List <kidmodel> kl= kiddao.show();
		 ModelAndView mv = new ModelAndView("product");
		 mv.addObject("productlist", kl);
		 return mv;
	 }
	 @RequestMapping(value="/Bagdetail",method = RequestMethod.GET)
	    public String printWelcome() {
	        return "Bagdetail";
	    }
	 
	 
	 
	 
	 @RequestMapping(value = "/bag", method=RequestMethod.GET, produces={"application/xml", "application/json"})
	 
	 public @ResponseBody String showMessage4()
	 {
		 kid kiddao = new kid();
		 List<kidmodel> kl = kiddao.show();  
		// ModelAndView mv = new ModelAndView("Bagdetail");
		 // JSONObject formDetailsJson = new JSONObject();
		 Gson gson = new Gson();
		// gson = new Gson();
	        String plist = gson.toJson(kl);
		 //mv.addObject("productlist", plist);
	      //  mv.addAllObjects(modelMap)
		 return plist;
	 }
	 
		 

	 
	 
	 
	
}
