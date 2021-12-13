package com.niit.springforntend;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.daoimpl.UserDAOImpl;
import com.niit.model.User;

@Controller
@RequestMapping(value="/user")
public class UserController
{
	@RequestMapping(value="/add")
   public String m1(ModelMap map)
   {
		
		map.addAttribute("user",new User());
	    return "adduser";
   }
	
	@RequestMapping(value="/adduser")
	public String m2(@ModelAttribute("user") User u)
	{
		UserDAOImpl udi=new UserDAOImpl();
		udi.addUser(u);
		return "index";
	}
}
