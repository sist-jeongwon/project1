package com.firstProject.model;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.firstProject.dao.BoardDAO;
import com.firstProject.dao.MemberDAO;
import com.firstProject.vo.BoardVO;
import com.firstProject.vo.MemberVO;

public class MemberModel {

	@RequestMapping("member/join.do")
	public String member_join(HttpServletRequest request) {
		
		request.setAttribute("main_jsp", "../member/join.jsp");
		return "../main/main.jsp";
		
	} 
	
	@RequestMapping("member/idcheck.do")
	public String member_idcheck(HttpServletRequest request)
	{
		
		return "../member/idcheck.jsp";
	}
	
	@RequestMapping("member/idcheck_ok.do")
	public String member_idcheck_ok(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		int count=MemberDAO.memberIdCheck(id);
//		System.out.println("id="+id);
		request.setAttribute("count", count);
		return "../member/idcheck_ok.jsp";
	}
	
	@RequestMapping("member/join_ok.do")
	public String member_join_ok(HttpServletRequest request) {
		
		request.setAttribute("main_jsp", "../member/join_main.jsp");

		   try
		   {
			   //한글 변환 
		   request.setCharacterEncoding("UTF-8");
		   
		   }catch(Exception ex){}
		   String id=request.getParameter("id");
		   String pwd=request.getParameter("pwd");
		   String name=request.getParameter("name");
		   String email=request.getParameter("email");
		   String birthday=request.getParameter("birthday");
		   String post=request.getParameter("post");
		   String addr1=request.getParameter("addr1");
		   String addr2=request.getParameter("addr2");
		   String tel1=request.getParameter("tel1");
		   String tel2=request.getParameter("tel2");
		   String tel3=request.getParameter("tel3");
		   
		   // MemberVO에 값을 설정 ==> DAO로 전송
		   MemberVO vo=new MemberVO();
		   vo.setMem_id(id);
		   vo.setMem_pwd(pwd);
		   vo.setName(name);
		   vo.setEmail(email);
	       vo.setBirth(birthday);
		   vo.setAddress(post+addr1+addr2);
		   vo.setTel(tel1+tel2+tel3);
		   //Insert문장 실행
		   MemberDAO.memberInsert(vo);
	
		   return "../main/main.jsp";
	}
	
	@RequestMapping("member/login_main.do")
	public String member_login_main(HttpServletRequest request) {
		
		request.setAttribute("main_jsp", "../member/login_main.jsp");
		return "../main/main.jsp";
		
	} 
	
	@RequestMapping("member/login.do")
	   public String member_login(HttpServletRequest request)
	   {
		 System.out.println("1");
		   try
		   {
			   //한글 변환 
			request.setCharacterEncoding("UTF-8");
		   }catch(Exception e) {}
		   // 데이터 받기 
		   String id=request.getParameter("id");
		   System.out.println("id="+id);
		   
		   String pwd=request.getParameter("pwd");
		   System.out.println("pwd="+pwd);
		   MemberVO vo=MemberDAO.memberLogin(id, pwd);
		   if(vo.getMsg().equals("OK"))
		   {
			   
			   HttpSession session=request.getSession();
			   session.setAttribute("id", vo.getMem_id());
			   session.setAttribute("name", vo.getName());
			   session.setAttribute("admin", vo.getAdmin());
			   
		   }
		   
		   request.setAttribute("msg", vo.getMsg());
		   return "../member/login.jsp";
	   }
	@RequestMapping("member/logout.do")
	   public String member_logout(HttpServletRequest request)
	   {
		   HttpSession session=request.getSession();
		   session.invalidate();
		   return "../member/logout.jsp";
	   }
	
	@RequestMapping("member/find_id.do")
	 	public String member_find_id(HttpServletRequest request) {
		
		request.setAttribute("main_jsp", "../member/find_id.jsp");
		return "../main/main.jsp";
		
	}
	
	@RequestMapping("member/find_id_ok.do")
		public String member_find_id_ok(HttpServletRequest request) {
		
		String tel=request.getParameter("tel");
		int count=MemberDAO.memberTelCheck(tel);
		String res="";
		if(count==0)
		{
			res="0";
		}
		else {
			res=MemberDAO.findMemberId(tel);
		}
		request.setAttribute("res", res);
		//request.setAttribute("count", count);
		return "../member/find_id_ok.jsp";
		
	}
	
	@RequestMapping("member/find_pwd.do")
 	public String member_find_pwd(HttpServletRequest request) {
	
		request.setAttribute("main_jsp", "../member/find_pwd.jsp");
		return "../main/main.jsp";
	
	}
	   
	@RequestMapping("member/find_pwd_ok.do")
	public String member_find_pwd_ok(HttpServletRequest request) {
		
		String id=request.getParameter("id");
		int count=MemberDAO.memberIdCheck(id);
		String idc="";
		if(count==0) {
			
			idc="0";
		}
		else {
			
			idc=MemberDAO.findMemberPwd(id);
		}
		
		request.setAttribute("idc", idc);
		return "../member/find_pwd_ok.jsp";
	}

	
//	@RequestMapping("member/update.do")
//	public String member_update(HttpServletRequest request) {
//		
//		HttpSession session=request.getSession();
//		String id=(String)session.getAttribute("id");
//		MemberVO vo=MemberDAO.memberDetailData(id);
//		
////		String tel1=vo.getTel();
////		tel1.substring(0, 2);
////		System.out.println(tel1);
////		String tel2=vo.getTel();
////		tel2.substring(3, 6);
////		String tel3=vo.getTel();
////		tel3.substring(7, 10);
//		
//		request.setAttribute("vo", vo);
//		request.setAttribute("main_jsp", "../member/update.jsp");
//		return "../main/main.jsp";
//	}
	
	
	@RequestMapping("member/update_ok.do")
	public String member_update_ok(HttpServletRequest request) {
		
		try {
			
			request.setCharacterEncoding("UTF-8");
		
		} catch (Exception e) {
		
			e.printStackTrace();
		
		}
		   String id=request.getParameter("id");
		   String pwd=request.getParameter("pwd");
		   String name=request.getParameter("name");
		   String email=request.getParameter("email");
		   String addr=request.getParameter("addr");
		   String tel=request.getParameter("tel");
		   
		   MemberVO dvo=new MemberVO();
		   dvo.setMem_id(id);
		   dvo.setMem_pwd(pwd);
		   dvo.setName(name);
		   dvo.setEmail(email);
		   dvo.setAddress(addr);
		   dvo.setTel(tel);
		   
		   MemberDAO.memberUpdate(dvo);
		   
		   request.setAttribute("main_jsp", "../reserve/mypage.jsp");
		   return "../main/main.jsp";
		
	}
}
