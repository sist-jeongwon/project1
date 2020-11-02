package com.firstProject.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.firstProject.dao.MemberDAO;
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
		   vo.setAddress(addr1+addr2);
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
	
}
