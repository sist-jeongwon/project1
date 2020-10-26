package com.firstProject.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

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
}
