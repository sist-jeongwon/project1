package com.firstProject.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.firstProject.dao.RecipeDAO;
import com.firstProject.vo.LikeVO;
import com.firstProject.vo.RecipeVO;

public class RecipeModel {
	@RequestMapping("recipe/total.do")
	public String recipe_total(HttpServletRequest request)
	{
		String page=request.getParameter("page");
		   if(page==null)
			   page="1";
		   int curpage=Integer.parseInt(page);
		   Map map=new HashMap();
		   int rowSize=12;
		   int start=(rowSize*curpage)-(rowSize-1);
		   int end=rowSize*curpage;
		   map.put("start", start);
		   map.put("end",end);
		   List<RecipeVO> list=RecipeDAO.recipeData(map);
		   int totalpage=RecipeDAO.recipeTotalPage();
		   
		   int BLOCK=5;
		   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		   if(endPage>totalpage)
			   endPage=totalpage;
		   
		   request.setAttribute("list", list);
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		   request.setAttribute("BLOCK", BLOCK);
		   request.setAttribute("startPage", startPage);
		   request.setAttribute("endPage", endPage);
		   request.setAttribute("main_jsp", "../recipe/total.jsp");
		   
		   /*
		  
		   if(title.length()>10)
		   {
			   title=title.substring(0,10);
			   title+="...";
		   }
		   
		   request.setAttribute("title", title);
		   */
		   
		   /*
			   HttpSession session=request.getSession();
			   String id=(String)session.getAttribute("id");
			   // ��Ű �б�
			   Cookie[] cookies=request.getCookies();
			   List<RecipeVO> cList=new ArrayList<RecipeVO>();
			   if(cookies!=null)
			   {
				   for(int i=0; i<cookies.length; i++)
				   {
					   if(cookies[i].getName().startsWith(id))
					   {
						   String no=cookies[i].getValue();
						   RecipeVO vo=RecipeDAO.recipeDetailData(Integer.parseInt(no));
						   cList.add(vo);
					   }
				   }
			   }
		   
		   request.setAttribute("cList", cList);
		   */
		   return "../main/main.jsp";
	}
	/*
		@RequestMapping("recipe/detail_before.do")	
		   public String recipe_detail_before(HttpServletRequest request, HttpServletResponse response)
		   {
			   String no=request.getParameter("no");
			   HttpSession session=request.getSession();
			   String id=(String)session.getAttribute("id");
			   Cookie cookie=new Cookie(id+no, no); 
			   // ��Ű �Ⱓ
			   cookie.setMaxAge(60*60*24);
			   // ����
			   response.addCookie(cookie);
			   return "redirect:../recipe/detail.do?no="+no;
		   }
	   */
	   // return�� .do ���� �� �����°�, .jsp �� ȭ�� ����ϴ°�
	   @RequestMapping("recipe/detail.do")
	   public String recipe_detail(HttpServletRequest request)
	   {
		   String recipe_no=request.getParameter("recipe_no");
			// DB ����
		   RecipeVO vo=RecipeDAO.recipeDetailData(Integer.parseInt(recipe_no));
		   request.setAttribute("vo", vo);
		   request.setAttribute("main_jsp", "../recipe/detail.jsp");
		  
		  /*
		   *  JjimVO jvo=new JjimVO();
		   
			   jvo.setId(id);
			   jvo.setMno(Integer.parseInt(no));
			   int count=MovieDAO.jjimCount(jvo);
			   
			   request.setAttribute("count", count);
		   */
		   return "../main/main.jsp";
	   }
	   
	   
	   ////////////////////////////////////////////////////////////
	// 찜
			@RequestMapping("recipe/like.do")
			public String Product_like(HttpServletRequest request)
			{
				String no=request.getParameter("no");
				HttpSession session=request.getSession();
				String id=(String)session.getAttribute("id");
				LikeVO vo=new LikeVO();
				vo.setMem_id(id);
				vo.setCno(Integer.parseInt(no));
				RecipeDAO.likeInsert(vo);
				return "redirect:../product/detail.do?no="+no;
			}
			@RequestMapping("recipe/like_cancel.do")
			public String like_cancel(HttpServletRequest request)
			{
				String no=request.getParameter("no");
				RecipeDAO.likeDelete(Integer.parseInt(no));
				return "redirect:../reserve/mypage.do";
			}	   
	   
	   
}
