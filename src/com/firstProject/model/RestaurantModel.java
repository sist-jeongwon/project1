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
import com.firstProject.dao.RestaurantDAO;
import com.firstProject.vo.LikeVO;
import com.firstProject.vo.ReplyVO;
import com.firstProject.vo.RestaurantVO;
import com.firstProject.vo.Restaurant_reviewVO;
import com.sist.controller.RequestMapping;

public class RestaurantModel {

	@RequestMapping("restaurant/restaurant_main.do")
	public String restaurant_main(HttpServletRequest request) {
		// 데이터 읽어서 => jsp 전송(데이터베이스)
		// 페이지
		String page = request.getParameter("page");
		if (page == null)
			page = "1";
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 12;
		int start = (rowSize * curpage) - (rowSize - 1);
		int end = rowSize * curpage;
		map.put("start", start);
		map.put("end", end);
		List<RestaurantVO> list = RestaurantDAO.restaurantListData(map);
		int totalpage = RestaurantDAO.restaurantTotalPage();

		int BLOCK = 5;
		int startPage = ((curpage - 1) / BLOCK * BLOCK) + 1;
		int endPage = ((curpage - 1) / BLOCK * BLOCK) + BLOCK;
		if (endPage > totalpage)
			endPage = totalpage;
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("main_jsp", "../restaurant/restaurant_main.jsp");

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		// 쿠키 읽기
		Cookie[] cookies = request.getCookies();
		List<RestaurantVO> cList = new ArrayList<RestaurantVO>();
		if (cookies != null && id != null) {
			for (int i=cookies.length-1;i>=0;i--) {
				if (cookies[i].getName().startsWith(id)) {
					String no = cookies[i].getValue();
					if (no == null || no.trim().equals("")) {
						no = "0";
					}
					RestaurantVO vo = RestaurantDAO.restaurantDetailData(Integer.parseInt(no));
					cList.add(vo);
				}
			}
		}
		request.setAttribute("cList", cList);
		return "../main/main.jsp";
	}

	@RequestMapping("restaurant/restaurant_detail_before.do") // 쿠키 전송 받는다 => 요청 을 detail로 다시 보낸다

	public String restaurant_detail_before(HttpServletRequest request, HttpServletResponse response) {
		String no = request.getParameter("rest_no");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		Cookie cookie = new Cookie(id + no, no);

		cookie.setMaxAge(60 * 60 * 24);

		// 전송
		response.addCookie(cookie);

		// cookie=new Cookie("p"+no, no);
		return "redirect:../restaurant/restaurant_detail.do?rest_no=" + no;// 쿠키값을 저장한 채로 재요청 (detail로 이동)
	}

	@RequestMapping("restaurant/restaurant_detail.do")
	public String restaurnat_detail(HttpServletRequest request) {
		String no = request.getParameter("rest_no"); //사용자에게 번호를 받아옴
		// DAO 를 이용해서 번호에 해당하는 데이터 한줄을 읽어옴 
		if(no==null) no="1";
		RestaurantVO vo = RestaurantDAO.restaurantDetailData(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		
		
		

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		Cookie[] cookies = request.getCookies();
		List<RestaurantVO> cList = new ArrayList<RestaurantVO>();
		if (cookies != null && id != null) {
			for (int i=cookies.length-1;i>=0;i--) {
				if (cookies[i].getName().startsWith(id)) {
					String cno = cookies[i].getValue();
					if (cno == null || cno.trim().equals("")) {
						cno = "0";
					}
					RestaurantVO cvo = RestaurantDAO.restaurantDetailData(Integer.parseInt(cno));
					cList.add(cvo);
				}
			}
		}
		request.setAttribute("cList", cList);
		
		request.setAttribute("main_jsp", "../restaurant/restaurant_detail.jsp");
		List<ReplyVO> list=RestaurantDAO.replyListData(Integer.parseInt(no));
			request.setAttribute("reList", list);
		return "../main/main.jsp";
	}

	////////////////////////////////////////////////////////////
	// 찜
	@RequestMapping("restaurant/like.do")
	public String restaurant_like(HttpServletRequest request) {
		String no = request.getParameter("rest_no");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		LikeVO vo = new LikeVO();
		vo.setMem_id(id);
		vo.setRest_no(Integer.parseInt(no));
		RestaurantDAO.rslikeInsert(vo);
		return "redirect:../restaurant/restaurant_detail.do?rest_no="+no;
	}

	@RequestMapping("restaurant/like_cancel.do")
	public String like_cancel(HttpServletRequest request) {
		String no = request.getParameter("no");
		RestaurantDAO.rslikeDelete(Integer.parseInt(no));
		return "redirect:../reserve/mypage.do";
	}
	// ���
	   @RequestMapping("restaurant/reply_insert.do")
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
		   
		   // VO�� ��Ƽ� => DAO
		   ReplyVO vo=new ReplyVO();
		   vo.setBno(Integer.parseInt(bno));
		   vo.setMem_id(mem_id);
		   vo.setMsg(msg);
		   vo.setName(name);
		   // DAO���� 
		   RestaurantDAO.replyInsert(vo);
		   return "redirect:../restaurant/restaurant_detail.do?rest_no="+bno;
	   }
	   @RequestMapping("restaurant/reply_reply_insert.do")
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
		   RestaurantDAO.replyReplyInsert(Integer.parseInt(no), vo);
		   //System.out.println("---"+mem_id);
		   return "redirect:../restaurant/restaurant_detail.do?rest_no="+bno;
	   }
	   
	   @RequestMapping("restaurant/reply_update.do")
	   public String reply_update(HttpServletRequest request)
	   {
		   // ������ �ޱ�
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
		   
		   RestaurantDAO.replyUpdate(vo);
		   return "redirect:../restaurant/restaurant_detail.do?no="+bno;
	   }
	   
	   @RequestMapping("restaurant/reply_delete.do")
	   public String reply_delete(HttpServletRequest request)
	   {
		   // ������ �ޱ�
		  
		   String no=request.getParameter("no");
		   String bno=request.getParameter("bno");
		   RestaurantDAO.replyDelete(Integer.parseInt(no));
		   return "redirect:../restaurant/restaurant_detail.do?no="+bno;
	   }

}