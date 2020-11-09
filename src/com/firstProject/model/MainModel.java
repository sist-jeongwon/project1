package com.firstProject.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.firstProject.dao.*;
import com.firstProject.vo.*;
import com.sist.controller.RequestMapping;

public class MainModel {
  @RequestMapping("main/main.do")
  public String main_page(HttpServletRequest request)
  {
	  List<RecipeVO> list=MainDAO.mainRecipeList();
	  request.setAttribute("list", list);
	  request.setAttribute("main_jsp", "../main/home.jsp");
	  return "../main/main.jsp";
  }
  
}
