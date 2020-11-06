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
import com.firstProject.vo.ReplyVO;
import com.firstProject.dao.ProductDAO;
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
		   
			HttpSession session=request.getSession();
			String id=(String)session.getAttribute("id");
		   // 쿠키 읽기
			Cookie[] cookies=request.getCookies();
			List<RecipeVO> cList=new ArrayList<RecipeVO>();
			if(cookies!=null)
			{
				for(int i=0;i<cookies.length;i++)
				{
					if(cookies[i].getName().startsWith(id))
					{
							String no=cookies[i].getValue();
							if(no == null || no.trim().equals(""))
							{
								no= "0";
							}
							RecipeVO vo=RecipeDAO.recipeDetailData(Integer.parseInt(no));
						   cList.add(vo);
					}
				}
			}
		   request.setAttribute("cList", cList);
		   
		   return "../main/main.jsp";
	}

		@RequestMapping("recipe/detail_before.do")	
		   public String recipe_detail_before(HttpServletRequest request, HttpServletResponse response)
		   {
			String no = request.getParameter("recipe_no");
				HttpSession session=request.getSession();
				String id=(String)session.getAttribute("id");
				Cookie cookie=new Cookie(id+no, no);

				   // 쿠키 기간
				   cookie.setMaxAge(60*60*24);
				   // 전송
				   response.addCookie(cookie);
				   return "redirect:../recipe/detail.do?no="+no;
		   }

	   @RequestMapping("recipe/detail.do")
	   public String recipe_detail(HttpServletRequest request)
	   {
		   String no=request.getParameter("no");

		   RecipeVO vo=RecipeDAO.recipeDetailData(Integer.parseInt(no));
		  	request.setAttribute("vo", vo);
		   		  
		   request.setAttribute("main_jsp", "../recipe/detail.jsp");
		   
		   List<ReplyVO> list=RecipeDAO.replyListData(Integer.parseInt(no));
		   
		   request.setAttribute("rList", list);
		   return "../main/main.jsp";
	   }
	   @RequestMapping("recipe/like.do")
		public String recipe_like(HttpServletRequest request)
		{
			String no=request.getParameter("no");
			//System.out.println("rno : " + no);
			HttpSession session=request.getSession();
			String id=(String)session.getAttribute("id");
			LikeVO vo=new LikeVO();
			vo.setMem_id(id);
			vo.setRecipe_no(Integer.parseInt(no));
			RecipeDAO.rclikeInsert(vo);
			return "redirect:../recipe/detail.do?no="+no;
		}
		@RequestMapping("recipe/like_cancel.do")
		public String like_cancel(HttpServletRequest request)
		{
			String no=request.getParameter("no");
			RecipeDAO.rclikeDelete(Integer.parseInt(no));
			return "redirect:../reserve/mypage.do";
		}
		// 댓글
		   @RequestMapping("recipe/reply_insert.do")
		   public String reply_insert(HttpServletRequest request)
		   {
			   try
			   {
				   request.setCharacterEncoding("UTF-8");
				   
			   }catch(Exception ex) {}
			   String bno=request.getParameter("bno");
			   String msg=request.getParameter("msg");
			   HttpSession session=request.getSession();
			   String mem_id=(String)session.getAttribute("id");
			   String name=(String)session.getAttribute("name");
			   
			   // VO에 담아서 => DAO
			   ReplyVO vo=new ReplyVO();
			   vo.setBno(Integer.parseInt(bno));
			   vo.setMem_id(mem_id);
			   vo.setMsg(msg);
			   vo.setName(name);
			   // DAO연결 
			   RecipeDAO.replyInsert(vo);
			   return "redirect:../recipe/detail.do?no="+bno;
		   }
		   @RequestMapping("recipe/reply_reply_insert.do")
		   public String reply_reply_insert(HttpServletRequest request)
		   {
			   try
			   {
				   request.setCharacterEncoding("UTF-8");
			   }catch(Exception ex) {}
			   String no=request.getParameter("no");
			   System.out.println("no="+no);
			   String bno=request.getParameter("bno");
			   System.out.println("bno="+bno);
			   String msg=request.getParameter("msg");
			   ReplyVO vo=new ReplyVO();
			   //vo.setRoot(Integer.parseInt(no));
			   vo.setBno(Integer.parseInt(bno));
			   vo.setMsg(msg);
			   HttpSession session=request.getSession();
			   String mem_id=(String)session.getAttribute("id");
			   String name=(String)session.getAttribute("name");
			   vo.setMem_id(mem_id);
			   vo.setName(name);
			   // DB연동 
			   RecipeDAO.replyReplyInsert(Integer.parseInt(no), vo);
			   //System.out.println("---"+mem_id);
			   return "redirect:../recipe/detail.do?no="+bno;
		   }
		   
		   @RequestMapping("recipe/reply_update.do")
		   public String reply_update(HttpServletRequest request)
		   {
			   // 데이터 받기
			   try
			   {
				   request.setCharacterEncoding("UTF-8");
			   }catch(Exception ex) {}
			   String no=request.getParameter("no");
			   String bno=request.getParameter("bno");
			   String msg=request.getParameter("msg");
			   // DB => UPDATE
			   ReplyVO vo=new ReplyVO();
			   vo.setNo(Integer.parseInt(no));
			   vo.setMsg(msg);
			   
			   RecipeDAO.replyUpdate(vo);
			   return "redirect:../recipe/detail.do?no="+bno;
		   }
		   
		   @RequestMapping("recipe/reply_delete.do")
		   public String reply_delete(HttpServletRequest request)
		   {
			   // 데이터 받기
			  
			   String no=request.getParameter("no");
			   String bno=request.getParameter("bno");
			   RecipeDAO.replyDelete(Integer.parseInt(no));
			   return "redirect:../recipe/detail.do?no="+bno;
		   }
}






