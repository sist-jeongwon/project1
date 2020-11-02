package com.firstProject.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.vo.RestaurantVO;
import com.firstProject.vo.Restaurant_reviewVO;


public class RestaurantDAO {
 private static SqlSessionFactory ssf;
 static
 {
	 ssf=CreateSqlSessionFactory.getSsf();
 }
/* 
REST_NO               NUMBER        
REST_NAME    NOT NULL VARCHAR2(100) 
REST_POSTER           VARCHAR2(300) 
REST_SCORE            VARCHAR2(20)  
REST_ADDR1   NOT NULL VARCHAR2(150) 
REST_ADDR2            VARCHAR2(150) 
REST_HOLIDAY          VARCHAR2(100) 
REST_CONTENT          CLOB          
REST_TEL     NOT NULL VARCHAR2(30)  
REST_TIME    NOT NULL VARCHAR2(100) 
REST_PARKING          VARCHAR2(20)  
REST_SNS              VARCHAR2(300) 
REST_HIT              NUMBER        
REST_LIKE             NUMBER        
REST_PRICE            VARCHAR2(30)
*/
 public static List<RestaurantVO> restaurantListData(Map map)
 {
	 SqlSession session=ssf.openSession();
	 List<RestaurantVO> list=session.selectList("restaurantListData",map);
	   session.close();// 반환
	   return list;
 }
 public static int restaurantTotalPage()
 {
	   SqlSession session=ssf.openSession();
	   int total=session.selectOne("restaurantTotalPage");
	   session.close();
	   return total;
 }
 
 public static RestaurantVO restaurantDetailData(int rest_no)
 {
//	   SqlSession session=ssf.openSession();
//	   session.update("hitIncrement", no);
//	   session.commit();
//	   RestaurantVO vo=session.selectOne("restaurantDetailData", no);
//	   session.close();
//	   return vo;
	 // 
	 SqlSession session=ssf.openSession();
	 RestaurantVO vo=session.selectOne("restaurantDetailData",rest_no);
	 session.close();
	 return vo;
 }
 public static void replyInsert(Restaurant_reviewVO vo)
 {
	   SqlSession session=ssf.openSession(true);// commit(X)
	   // commit() ==> DML
	   session.insert("rest_rivewInsert",vo);
	   session.close();
 }
 /*
  *   <select id="replyListData" resultType="ReplyVO" parameterType="int">
		    SELECT no,bno,id,name,msg,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') as dbday,
		    group_tab FROM movie_reply
		    WHERE bno=#{bno}
		  </select>
  */
 public static List<Restaurant_reviewVO> resaurant_reviewListData(int rest_review_bno)
 {
	   SqlSession session=ssf.openSession();
	   List<Restaurant_reviewVO> list=session.selectList("resaurant_reviewListData",rest_review_bno);
	   session.close();
	   return list;
 }
 
 
 
 
}
