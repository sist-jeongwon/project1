package com.firstProject.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.sist.controller.RequestMapping;
import com.firstProject.dao.*;
import com.firstProject.vo.*;

public class OrderModel {
	// 주문 메인페이지
	@RequestMapping("order/order_main.do")
	public String order_main(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		Map<Integer, Integer> map = new HashMap<Integer, Integer>();
		List<Product_keepVO> list = ProductDAO.product_keepListData(id);
		List<ProductVO> dlist = new ArrayList<ProductVO>();
		if (list != null) {
			for (Product_keepVO vo : list) {
				ProductVO pvo = ProductDAO.productDetailData(vo.getProduct_no());
				map.put(pvo.getProduct_no(), 1);
				dlist.add(pvo);
			}
		}
		request.setAttribute("dlist", dlist);
		request.setAttribute("map", map);
		request.setAttribute("main_jsp", "../order/order_main.jsp");
		return "../main/main.jsp";
	}

	//
	@RequestMapping("order/order_ok.do")
	public String order_ok(HttpServletRequest request) {
		request.setAttribute("main_jsp", "../order/order_complete.jsp");

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		String price = request.getParameter("sum_p_price");
		System.out.println(price);
		String totalPrice = request.getParameter("sum_p_price_pp");
		System.out.println(totalPrice);
		String mem_id = (String) session.getAttribute("id");
		System.out.println(mem_id);
		// order 데이터 입력
		orderVO vo = new orderVO();
		vo.setMem_id(mem_id);
		vo.setPrice(Integer.parseInt(price));
		vo.setShipCharge(2500);
		vo.setTotalPrice(Integer.parseInt(totalPrice));
		OrderDAO.orderInsert(vo);
		vo = OrderDAO.orderSelect_input();
		vo.getOrderNo();
		// orderProductList 데이터 입력
		List<Product_keepVO> list = ProductDAO.product_keepListData(mem_id);
		List<orderProductsVO> dlist = new ArrayList<orderProductsVO>();
		if (list != null) {
			int i = 0;
			String q = null;
			for (Product_keepVO vo1 : list) {
				q = request.getParameter("p_num" + i);
				ProductVO pvo = ProductDAO.productDetailData(vo1.getProduct_no());
				orderProductsVO vo2 = new orderProductsVO();
				vo2.setOrderNo(vo.getOrderNo());
				vo2.setQuantity(Integer.parseInt(q));
				vo2.setProductNo(vo1.getProduct_no());
				vo2.setDiscountRate(pvo.getDiscount_rate());
				OrderDAO.orderProductInsert(pvo, vo, vo2.getQuantity());
				ProductDAO.product_keepDelete(pvo.getProduct_no());
			}
		}

		return "../main/main.jsp";
	}

}
