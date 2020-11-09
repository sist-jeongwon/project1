package com.firstProject.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.firstProject.dao.ProductDAO;
import com.firstProject.vo.LikeVO;
import com.firstProject.vo.ProductVO;
import com.firstProject.vo.Product_keepVO;
import com.firstProject.vo.ReplyVO;
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
		   
		   HttpSession session=request.getSession();
			String id=(String)session.getAttribute("id");
			
			// 쿠키 읽기
			Cookie[] cookies=request.getCookies();
			List<ProductVO> cList=new ArrayList<ProductVO>();
			if(cookies!=null && id != null)
			{
				for(int i=cookies.length-1;i>=0;i--)
				{
					if(cookies[i].getName().startsWith(id))
					{
						String cno=cookies[i].getValue();
						ProductVO cvo=ProductDAO.productDetailData(Integer.parseInt(cno));
						cList.add(cvo);
					}
				}
			}
			request.setAttribute("cList", cList);
	
		   return "../main/main.jsp";
	   }
	 
	  @RequestMapping("Product/detail_before.do") // 쿠키 전송 받는다 => 요청 을 detail로 다시 보낸다
		/*
		 * cookie : 클라이언트 (브라우저) ==> 저장 내용을 서버에서 전송 (response) session(서버)에 저장
		 * (response를 이용하지 않는다)
		 */
		public String product_detail_before(HttpServletRequest request, HttpServletResponse response) {
			// ../movie/detail_before.do?no=${vo.no }
			String no = request.getParameter("no");
			// no=1&aaa=1
			HttpSession session=request.getSession();
			String id=(String)session.getAttribute("id");
			//   shim123
			Cookie cookie=new Cookie(id+no, no);
			//Cookie(키, 값)
			
			// 기간 설정
			cookie.setMaxAge(60*60*24);
			
			//전송
			response.addCookie(cookie);

			//cookie=new Cookie(id+no, no);
			return "redirect:../Product/detail.do?no=" + no;// 쿠키값을 저장한 채로 재요청 (detail로 이동)
		}
	 
	  
	  @RequestMapping("Product/detail.do")
		public String product_detail(HttpServletRequest request) {
			
		  	String no=request.getParameter("no");//사용자에게 번호를 받아옴
		
		  	// DAO를  이용해서 번호에 해당하는 데이터 한줄 읽어옴
		  	ProductVO vo=ProductDAO.productDetailData(Integer.parseInt(no));
		  	request.setAttribute("vo", vo);
			
		    
			   HttpSession session=request.getSession();
				String id=(String)session.getAttribute("id");
		 // 쿠키 읽기
		 			Cookie[] cookies=request.getCookies();
		 			List<ProductVO> cList=new ArrayList<ProductVO>();
		 			if(cookies!=null && id != null)
		 			{
		 				for(int i=cookies.length-1;i>=0;i--)
		 				{
		 					if(cookies[i].getName().startsWith(id))
		 					{
		 						String cno=cookies[i].getValue();
		 						ProductVO cvo=ProductDAO.productDetailData(Integer.parseInt(cno));
		 						cList.add(cvo);
		 					}
		 				}
		 			}
		 			request.setAttribute("cList", cList);
		 			
			request.setAttribute("main_jsp", "../Product/detail.jsp");
			
			List<ReplyVO> list=ProductDAO.replyListData(Integer.parseInt(no));
					request.setAttribute("pList", list);
			
			return "../main/main.jsp";
		}
	  
	  
	  ////////////////////////////////////////////////////////////
	 // 장바구니
	  @RequestMapping("Product/product_keep.do")
		public String Product_product_keep(HttpServletRequest request)
		{
			String no=request.getParameter("no");
			HttpSession session=request.getSession();
			String id=(String)session.getAttribute("id");
			Product_keepVO vo=new Product_keepVO();
			vo.setMem_id(id);
			vo.setProduct_no(Integer.parseInt(no));
			ProductDAO.Product_keepInsert(vo);
			return "redirect:../Product/detail.do?no="+no;
		}
		@RequestMapping("Product/product_keep_cancel.do")
		public String product_keep_cancel(HttpServletRequest request)
		{
			String no=request.getParameter("no");
			ProductDAO.product_keepDelete(Integer.parseInt(no));
			return "redirect:../order/order_main.do";
		}
		// 찜
		@RequestMapping("Product/like.do")
		public String Product_like(HttpServletRequest request)
		{
			String no=request.getParameter("no");
			HttpSession session=request.getSession();
			String id=(String)session.getAttribute("id");
			LikeVO vo=new LikeVO();
			vo.setMem_id(id);
			vo.setProduct_no(Integer.parseInt(no));
			ProductDAO.pdlikeInsert(vo);
			return "redirect:../Product/detail.do?no="+no;
		}
		@RequestMapping("Product/like_cancel.do")
		public String like_cancel(HttpServletRequest request)
		{
			String no=request.getParameter("no");
			ProductDAO.pdlikeDelete(Integer.parseInt(no));
			return "redirect:../reserve/mypage.do";
		}
		
		//////////////// 댓글관련 ////////////////////////
		 @RequestMapping("Product/reply_insert.do")
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
			   
			   //vo에 담아서 => dao
			   ReplyVO vo=new ReplyVO();
			   vo.setBno(Integer.parseInt(bno));
			   vo.setMem_id(mem_id);
			   vo.setMsg(msg);
			   vo.setName(name);
			   
			   ProductDAO.replyInsert(vo);
			   return "redirect:../Product/detail.do?no="+bno;
		   }
		   @RequestMapping("Product/reply_reply_insert.do")
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
			   // DB 연동 
			   ProductDAO.replyReplyInsert(Integer.parseInt(no), vo);
			   //System.out.println("---"+mem_id);
			   return "redirect:../Product/detail.do?no="+bno;
		   }
		   
		   @RequestMapping("Product/reply_update.do")
		   public String reply_update(HttpServletRequest request)
		   {
			  
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
			   
			   ProductDAO.replyUpdate(vo);
			   return "redirect:../Product/detail.do?no="+bno;
		   }
		   
		   @RequestMapping("Product/reply_delete.do")
		   public String reply_delete(HttpServletRequest request)
		   {
			   
			  //데이터 받기
			   String no=request.getParameter("no");
			   String bno=request.getParameter("bno");
			   ProductDAO.replyDelete(Integer.parseInt(no));
			   return "redirect:../Product/detail.do?no="+bno;
		   }
}






