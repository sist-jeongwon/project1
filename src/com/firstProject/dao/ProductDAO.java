package com.firstProject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.vo.ProductVO;
import com.firstProject.vo.Product_detailVO;


public class ProductDAO {
	 private static SqlSessionFactory ssf;
	   static
	   {
		   ssf=CreateSqlSessionFactory.getSsf();
	   }
	   /*
	    *    <select id="productListData" resultType="ProductVO" parameterType="hashmap">
			    SELECT product_no,main_img,name,num
			    FROM (SELECT product_no,main_img,name,rownum as num
			    FROM (SELECT product_no,main_img,name 
			    FROM product))
			    WHERE num BETWEEN #{start} AND #{end}
			  </select>
			  <select id="productTotalPage" resultType="int" parameterType="int">
			    SELECT CEIL(COUNT(*)/12.0) FROM product
			  </select>
	    */
	   public static List<ProductVO> productListData(Map map)
	   {
		   SqlSession session=ssf.openSession();
		   List<ProductVO> list=session.selectList("productListData",map);
		   session.close();// 반환
		   return list;
	   }
	   public static int productTotalPage()
	   {
		   SqlSession session=ssf.openSession();
		   int total=session.selectOne("productTotalPage");
		   session.close();
		   return total;
	   }
	   
	   public static ProductVO productDetailData(int no)
	   {
		   SqlSession session=ssf.openSession();
		   ProductVO vo=session.selectOne("productDetailData", no);
		   session.close();
		   return vo;
	   }
	   public static Product_detailVO DetailData(int no)
	   {
		   SqlSession session=ssf.openSession();
		   Product_detailVO dvo=session.selectOne("DetailData", no);
		   session.close();
		   return dvo;
	   }
}
