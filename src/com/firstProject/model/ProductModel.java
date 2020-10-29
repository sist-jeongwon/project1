package com.firstProject.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.firstProject.dao.ProductDAO;
import com.firstProject.vo.ProductVO;
import com.sist.controller.RequestMapping;


public class ProductModel {

	  @RequestMapping("Product/Product_main.do")
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
		   List<ProductVO> list=ProductDAO.productListData(map);
		   int totalpage=ProductDAO.productTotalPage();
		   
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
		   request.setAttribute("main_jsp", "../Product/Product_main.jsp");
		   return "../main/main.jsp";
	   }
	  
	  @RequestMapping("Product/detail.do")
	   public String product_detail(HttpServletRequest request)
	   {
		   // 사용자가 보내준 데이터 읽기
		   String no=request.getParameter("no");
		   String page=request.getParameter("page");
		   String cno=request.getParameter("cno");
		   if(page==null)
			   page="1";
		   /*
		    *    detail.do
		    *    ==> page==null
		    *    if(page==null)
		    *    detail.do? page= 10   ==>  " 10"  ${ vo.no }
		    *    ==> page ""
		    *    if(page.equals(""))
		    */
		   // 상세보기 데이터 읽기 
		   // DataBase연결
		   
		   request.setAttribute("main_jsp", "../Product/detail.jsp");
		   return "../main/main.jsp";
	   }
}
