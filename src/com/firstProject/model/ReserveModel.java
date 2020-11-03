package com.firstProject.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.firstProject.dao.ProductDAO;
import com.firstProject.dao.RecipeDAO;
import com.firstProject.dao.RestaurantDAO;
import com.firstProject.vo.LikeVO;
import com.firstProject.vo.ProductVO;
import com.firstProject.vo.Product_keepVO;
import com.firstProject.vo.RecipeVO;
import com.firstProject.vo.RestaurantVO;
import com.firstProject.vo.ReservationVO;
import com.firstProject.vo.TheaterVO;

import java.text.SimpleDateFormat;
import java.util.*;
public class ReserveModel {
  @RequestMapping("reserve/reserve.do")
  public String reserve_main(HttpServletRequest request)
  {
	  request.setAttribute("main_jsp", "../reserve/reserve.jsp");
	  return "../main/main.jsp";
  }
  @RequestMapping("reserve/date.do")
  public String reserve_date(HttpServletRequest request)
  {
	  String strYear=request.getParameter("year");
	  String strMonth=request.getParameter("month");
	  String tno=request.getParameter("tno");
	  if(tno==null)
		  tno="1";
	  
	  Date date=null;
		try {
			date = new Date();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  // 2020-10
	  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-M-d");
	  // MM dd (X)  M d 01 ~ 09 10 11 12   09
	  // 1 2 3 .... 10 11 12
	  String today=sdf.format(date);
	  StringTokenizer st=new StringTokenizer(today,"-");
	  
	  if(strYear==null)
	  {
		  strYear=st.nextToken();// yyyy
	  }
	  
	  if(strMonth==null)
	  {
		  strMonth=st.nextToken();
	  }
	  
	  int day=Integer.parseInt(st.nextToken());// 화면 
	  int year=Integer.parseInt(strYear);
	  int month=Integer.parseInt(strMonth);
	  
	  Calendar cal=Calendar.getInstance();// Calendar클래스 생성 
	  cal.set(Calendar.YEAR,year);
	  cal.set(Calendar.MONTH,month-1);// month=>0~11
	  cal.set(Calendar.DATE,1);
	  
	  // 요일을 구한다
	  int week=cal.get(Calendar.DAY_OF_WEEK);// 1~7 ==> week-1
	  int lastday=cal.getActualMaximum(Calendar.DATE);
	  String[] strWeek={"일","월","화","수","목","금","토"};
	  System.out.println("요일:"+strWeek[week-1]);
	  System.out.println("마지막날:"+lastday);
	  
	  // DB => 예약날짜 읽기
	  System.out.println("tno="+tno);
	  String rday=RestaurantDAO.theaterReserveData(Integer.parseInt(tno));
	  System.out.println("rday="+rday);
	  int[] days=new int[32];
	  StringTokenizer st2=new StringTokenizer(rday,",");
	  //int i=0;
	  while(st2.hasMoreTokens())
	  {
		  String d=st2.nextToken();
		  days[Integer.parseInt(d)]=Integer.parseInt(d);
	  }
	  
	  for(int k:days)
	  {
		  System.out.println("k="+k);
	  }
	  
	  request.setAttribute("rdays", days);
	  // jsp로 전송 
	  request.setAttribute("year", year);
	  request.setAttribute("month", month);
	  request.setAttribute("day", day);
	  request.setAttribute("week", week-1);
	  request.setAttribute("strWeek", strWeek);
	  request.setAttribute("lastday", lastday);
	  // 1일자의 요일 
	  return "../reserve/date.jsp";
  }
  @RequestMapping("reserve/restauran.do")
  public String reserve_restauran(HttpServletRequest request)
  {
	    List<RestaurantVO> list=RestaurantDAO.restaurantReserveData();
	    request.setAttribute("list", list);
	    return "../reserve/restauran.jsp";
  }
  // 체인점
  @RequestMapping("reserve/theater.do")
  public String reserve_theater(HttpServletRequest request)
  {
	  String no=request.getParameter("no");
	  // DB연동 
	  String tdata=RestaurantDAO.restaurantTheaterNo(Integer.parseInt(no));
	  StringTokenizer st=new StringTokenizer(tdata,",");
	  List<TheaterVO> list=new ArrayList<TheaterVO>();
	  // 1,3,5,7,8
	  while(st.hasMoreTokens())
	  {
		  TheaterVO vo=RestaurantDAO.theaterListData(Integer.parseInt(st.nextToken()));
		  list.add(vo);
	  }
	  request.setAttribute("list", list);
	  return "../reserve/theater.jsp";
  }
  // 시간
  @RequestMapping("reserve/time.do")
  public String reserve_time(HttpServletRequest request)
  {
	  String day=request.getParameter("day");
	  // 데이터베이스 = DB연동
	  String rdays=RestaurantDAO.dayTimeData(Integer.parseInt(day));
	  // 1(08:00),2(09:00),5(...),6,7,8
	  StringTokenizer st=new StringTokenizer(rdays,",");
	  List<String> list=new ArrayList<String>();
	  while(st.hasMoreTokens())
	  {
		  String s=st.nextToken();
		  String time=RestaurantDAO.timeData(Integer.parseInt(s));
		  list.add(time);
	  }
	  request.setAttribute("list", list);
	  return "../reserve/time.jsp";
  }
  // 인원
  @RequestMapping("reserve/people.do")
  public String reserve_people(HttpServletRequest request)
  {
	  return "../reserve/people.jsp";
  }
  // 예매 
  @RequestMapping("reserve/reserve_ok.do")
  public String reserve_reserve_ok(HttpServletRequest request)
  {
	 
	  try
	  {
		  request.setCharacterEncoding("UTF-8");
	  }catch(Exception ex) {}
	  
	  String cno=request.getParameter("cno");
	  String tname=request.getParameter("tloc1"); //theaterVO
	  String people=request.getParameter("people");
	  String day=request.getParameter("day");
	  String price=request.getParameter("price");
	  String time=request.getParameter("time");
	  
	  HttpSession session=request.getSession();
	  String mem_id=(String)session.getAttribute("mem_id");
	   
	  ReservationVO vo=new ReservationVO();
	  vo.setMem_id(mem_id);
	  vo.setCno(Integer.parseInt(cno));
	  vo.setPeople(people);
	  vo.setPrice(price);
	  vo.setTheater(tname);
	  vo.setTime(day+"("+time+")");
	  // insert
	  RestaurantDAO.reserveInsert(vo);
	  return "../reserve/reserve_ok.jsp";
  }
  // 마이페이지
  @RequestMapping("reserve/mypage.do")
  public String reserve_mypage(HttpServletRequest request)
  {
	  HttpSession session=request.getSession();
	  String id=(String)session.getAttribute("id");
	  List<ReservationVO> list=RestaurantDAO.mypageReserveListData(id);
	  request.setAttribute("list", list);
	  request.setAttribute("main_jsp", "../reserve/mypage.jsp");
	  
	  List<Product_keepVO> pkList=ProductDAO.product_keepListData(id);//장바구니
	  List<LikeVO> lpList=ProductDAO.likeListData(id); //판매찜
	  List<LikeVO> lrsList=RestaurantDAO.likeListData(id);//식당찜
	  List<LikeVO> lcrList=RecipeDAO.likeListData(id);//레시피찜
	  
	  List<ProductVO> p1List=new ArrayList<ProductVO>();//장바구니
	  List<ProductVO> p2List=new ArrayList<ProductVO>();//판매찜
	  List<RestaurantVO> lrList=new ArrayList<RestaurantVO>();//식당찜
	  List<RecipeVO> lcList=new ArrayList<RecipeVO>();//레시피찜
	  
	  for(Product_keepVO vo:pkList)//장바구니--cno달리쓰고있는데가있어서그런듯
	  {
		  ProductVO pkvo=ProductDAO.productDetailData(vo.getPno());
		  String name=pkvo.getName();
		  pkvo.setKno(vo.getProduct_no());
		  p1List.add(pkvo);
	  }
		
	  for(LikeVO vo:lpList)//판매찜 
	  {
		  ProductVO plvo=ProductDAO.productDetailData(vo.getCno());
		  String name=plvo.getName();
		  plvo.setLpno(vo.getProduct_no());
		  p2List.add(plvo);
	  }
	 for(LikeVO vo:lrsList)//식당찜 
	 {
		  RestaurantVO rest_vo=RestaurantDAO.restaurantDetailData(vo.getCno());
		  String rest_content=rest_vo.getRest_content();
		  rest_vo.setLrsno(vo.getRest_no());
		  if(rest_content.length()>150)
		  {
			  rest_content=rest_content.substring(0,150)+"...";
			  rest_vo.setRest_content(rest_content);;
		  }
		  lrList.add(rest_vo);
	  }
	
	  for(LikeVO vo:lcrList)//레시피찜
	  {
		  RecipeVO rec_vo=RecipeDAO.recipeDetailData(vo.getCno());
		  String content=rec_vo.getContent();
		  rec_vo.setLrcno(vo.getRecipe_no());
		  if(content.length()>150)
		  {
			  content=content.substring(0,150)+"...";
			  rec_vo.setContent(content);
		  }
		  lcList.add(rec_vo);
	  }
	  request.setAttribute("p1List", p1List);
	  request.setAttribute("p2List", p2List);
	  request.setAttribute("lrList", lrList);
	  request.setAttribute("lcList", lcList);
	  return "../main/main.jsp";
  }
  // 어드민 페이지
  @RequestMapping("reserve/adminpage.do")
  public String reserve_adminpage(HttpServletRequest request)
  {
	  List<ReservationVO> list=RestaurantDAO.adminReserveListData();
	  request.setAttribute("list", list);
	  request.setAttribute("main_jsp", "../reserve/adminpage.jsp");
	  return "../main/main.jsp";
  }
  
  @RequestMapping("reserve/admin_ok.do")
  public String reserve_admin_ok(HttpServletRequest request)
  {
	  // 예약번호 
	  String no=request.getParameter("no");
	  // UPDATE
	  RestaurantDAO.reserveOk(Integer.parseInt(no));
	  return "redirect:../reserve/adminpage.do";// 원상복귀
  }
  
  @RequestMapping("reserve/reserve_all_ok.do")
  public String reserve_all_ok(HttpServletRequest request)
  {
	  // 데이터 받기 
	  String[] nos=request.getParameterValues("cb");
	  for(String n:nos)
	  {
		  RestaurantDAO.reserveOk(Integer.parseInt(n));
	  }
	  return "redirect:../reserve/adminpage.do";
  }
}











