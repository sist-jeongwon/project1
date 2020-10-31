package com.firstProject.model;

import javax.servlet.http.HttpServletRequest;

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
	
	
	
}
