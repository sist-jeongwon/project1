package com.firstProject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.vo.*;

public class OrderDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf = CreateSqlSessionFactory.getSsf();
	}

	public static void orderInsert(orderVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("orderInsert", vo);
		session.close();
	}

	public static void orderProductInsert(ProductVO pvo, orderVO ovo, int i) {
		SqlSession session = ssf.openSession(true);
		orderProductsVO vo = new orderProductsVO();
		vo.setOrderNo(ovo.getOrderNo());
		vo.setDiscountRate(pvo.getDiscount_rate());
		vo.setProductNo(pvo.getProduct_no());
		vo.setQuantity(i);
		session.insert("orderProductInsert", pvo);
		session.close();
	}

	public static orderVO orderSelect_input() {
		SqlSession session = ssf.openSession(true);
		orderVO vo = session.selectOne("orderSelect_input");
		session.close();
		return vo;
	}

}
