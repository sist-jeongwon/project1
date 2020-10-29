package com.firstProject.model;


import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

public class RestaurantModel {
  @RequestMapping("Restaurant/practice_1.do")
  public String main_page(HttpServletRequest request)
  {
	  request.setAttribute("practice_1.jsp", "../main/home.jsp");
	  return "../main/main.jsp";
  }
}
