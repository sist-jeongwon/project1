package com.firstProject.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.firstProject.dao.RestaurantDAO;
import com.firstProject.vo.RestaurantVO;
import com.sist.controller.RequestMapping;


public class RestaurantModel {

	  @RequestMapping("restaurant/restaurant_main.do")
	  public String product_main(HttpServletRequest request)
	   {
		// 데이터 읽어서 => jsp 전송(데이터베이스)
		   // 페이지 
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
		   List<RestaurantVO> list=RestaurantDAO.restaurantListData(map);
		   int totalpage=RestaurantDAO.restaurantTotalPage();
		   
		   int BLOCK=5;
		   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		   /*
		    *   1 , 2 , 3 , 4 , 5 ==> 1
		    *   ==> 12345
		    *   2/5
		    *   4/5 => 0
		    *   
		    *   6 7  8  9  10  ==> 6
		    */
		   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		   /*
		    *    1 2 3 4 5 ==> 5
		    *    6 7  8  9  10  ==> 10
		    */
		   // 12 => totalpage  11 ~ 15
		   if(endPage>totalpage)
			   endPage=totalpage;
		   
		   request.setAttribute("list", list);
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		   request.setAttribute("BLOCK", BLOCK);
		   request.setAttribute("startPage", startPage);
		   request.setAttribute("endPage", endPage);
		   request.setAttribute("main_jsp", "../restaurant/restaurant_main.jsp");
		   return "../main/main.jsp";
	   }
	  @RequestMapping("restaurant/restaurant_detail.do")
		public String movie_detail(HttpServletRequest request) {
			
			String rest_no=request.getParameter("rest_no");
			System.out.println(rest_no);
			// DB연동
//			Map map=new HashMap();
//			map.put("rest_no",rest_no);
			HttpSession session=request.getSession();
			 String id=(String)session.getAttribute("id");
			 RestaurantVO vo=RestaurantDAO.restaurantDetailData(Integer.parseInt(rest_no));
			
			
			request.setAttribute("vo", vo);
			request.setAttribute("main_jsp", "../restaurant/restaurant_detail.jsp");
			
			return "../main/main.jsp";
		}
	 
}
