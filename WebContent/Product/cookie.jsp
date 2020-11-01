<%@page import="com.firstProject.dao.ProductDAO"%>
<%@page import="com.firstProject.vo.ProductVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String no=request.getParameter("no");
ProductVO vo=ProductDAO.productDetailData(Integer.parseInt(no));
//cookie => 키(중복없다, 문자시작), 값 (문자열만 저장이 가능), ex) vo같은거 저장 불가
	Cookie cookie=new Cookie("m"+no,vo.getMain_img());
	cookie.setPath("/");
	//저장
	//얼마나 저장할지 기간
	cookie.setMaxAge(60*60); //하루 저장 (초단위)
	// 클라이언트 컴퓨터로 전송
	// http://211.238.142.181
	response.addCookie(cookie);
	response.sendRedirect("../Product/detail.do?no="+no);
	//한 파일 안에서 응답을 두번 받을 수 없다
	/*
		1. cookie.jsp => cookie를 받아서 저장
		2. 이동 => 상세보기 화면을 다시 받는다 detail.jsp
	
	=> 쿠키 생성단계
	1. 쿠키 생성단계
	cookie cookie
	2.쿠키 저장단계
	cookie.setage()
	3. 쿠키 전송 단계 ==> 클라이언트 전송시에 
	4. cookie.setPath("/") ==> 모든 경로의 쿠키를 읽을 수 있다
	
	=> 쿠키를 가지고 오는 방법
	  => 쿠키가 여러개 생성
	  Cookie[] cookies=request.getc
	  // 본인 컴퓨터에서 저장된 cookie를 가지고 온다
	  for(Cookie c:cookies)
	  {
		  => c.getNamee => 키 읽을경우
				  =>
		  =>
		  c.seta
		  =>삭제하고 클라이언트에 전송 => response.addCookie()
		  내컴퓨터에는 삭제한다
		  
	  }
	*/
%>