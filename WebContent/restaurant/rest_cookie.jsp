<%@page import="com.firstProject.dao.RestaurantDAO"%>
<%@page import="com.firstProject.vo.RestaurantVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%
	String no=request.getParameter("no");
     RestaurantVO vo=RestaurantDAO.restaurantDetailData(Integer.parseInt(no));
//cookie => 키(중복없다, 문자시작), 값 (문자열만 저장이 가능), ex) vo같은거 저장 불가
	Cookie cookie=new Cookie("m"+no,vo.getRest_poster());
	cookie.setPath("/");
	//저장
	//얼마나 저장할지 기간
	cookie.setMaxAge(60*60); //하루 저장 (초단위)
	// 클라이언트 컴퓨터로 전송
	// http://211.238.142.181
	response.addCookie(cookie);
	response.sendRedirect("../restaurant/restaurant_detail.do?rest_no="+no);


	%>
