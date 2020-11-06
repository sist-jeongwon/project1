package com.firstProject.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.vo.LikeVO;
import com.firstProject.vo.ReplyVO;
import com.firstProject.vo.ReservationVO;
import com.firstProject.vo.RestaurantVO;
import com.firstProject.vo.Restaurant_reviewVO;
import com.firstProject.vo.TheaterVO;
 

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

 
 ///////////////////////////////////////////////////////////////
//mypage + resesrvation
public static List<RestaurantVO> restaurantReserveData()
{
	   SqlSession session=ssf.openSession();
	   List<RestaurantVO> list=session.selectList("restaurantReserveData");
	   session.close();// 반환
	   return list;
}

public static String restaurantTheaterNo(int no)
{
	   SqlSession session=ssf.openSession();
	   String tdata=session.selectOne("restaurantTheaterNo", no);
	   
	   session.close();
	   return tdata;
}

public static TheaterVO theaterListData(int tno)
{
	   SqlSession session=ssf.openSession();
	   TheaterVO tdata=session.selectOne("theaterListData", tno);
	   session.close();
	   return tdata;
}
/*
*   <select id="theaterReserveData" resultType="String" parameterType="int">
		    SELECT rday FROM theater_info
		    WHERE tno=#{tno}
		  </select>
*/
public static String theaterReserveData(int tno)
{
	   SqlSession session=ssf.openSession();
	   String rday=session.selectOne("theaterReserveData", tno);
	   session.close();
	   return rday;
}
/*
*   <select id="dayTimeData" resultType="String" parameterType="int">
		    SELECT rtime FROM date_info
		    WHERE rday=#{rday}
		  </select>
		  
		  <select id="timeData" resultType="String" parameterType="int">
		    SELECT time FROM time_info
		    WHERE tno=#{tno}
		  </select>
*/
// 1,4,5, 10
public static String dayTimeData(int rday)
{
	   SqlSession session=ssf.openSession();
	   String times=session.selectOne("dayTimeData", rday);
	   session.close();
	   return times;
}

public static String timeData(int tno)
{
	   SqlSession session=ssf.openSession();
	   String time=session.selectOne("timeData", tno);
	   session.close();
	   return time;
}

public static void reserveInsert(ReservationVO vo)
{
	   SqlSession session=ssf.openSession(true);
	   session.insert("reserveInsert",vo);
	   session.close();
}


public static List<ReservationVO> mypageReserveListData(String id)
{
	   SqlSession session=ssf.openSession();
	   List<ReservationVO> list=session.selectList("mypageReserveListData",id);
	   session.close();
	   return list;
}
public static List<ReservationVO> adminReserveListData()
{
	   SqlSession session=ssf.openSession();
	   List<ReservationVO> list=session.selectList("adminReserveListData");
	   session.close();
	   return list;
}
/*
*   <update id="reserveOk" parameterType="int">
		    UPDATE reserve SET
		    isreserve='y'
		    WHERE no=#{no}
		  </update>
*/
public static void reserveOk(int no)
{
	   SqlSession session=ssf.openSession(true);//autocommit
	   session.update("reserveOk",no);
	   session.close();
}
//찜
public static void rslikeInsert(LikeVO vo)
{
	   SqlSession session=ssf.openSession(true);
	   session.update("rslikeInsert", vo);
	   session.close();
}

public static List<LikeVO> rslikeListData(String id)
{
	   SqlSession session=ssf.openSession();
	   List<LikeVO> list=session.selectList("rslikeListData",id);
	   session.close();
	   return list;
}

public static int rslikeCount(LikeVO vo)
{
	   SqlSession session=ssf.openSession();
	   int count=session.selectOne("likeCount",vo);
	   session.close();
	   return count;
}

public static void rslikeDelete(int no)
{
	   SqlSession session=ssf.openSession(true);
	   session.delete("rslikeDelete", no);
	   session.close();
}
//댓글
	public static void replyInsert(ReplyVO vo) {
		SqlSession session = ssf.openSession(true);// commit(X)
		// commit() ==> DML
		session.insert("rereplyInsert", vo);
		session.close();
	}

	public static List<ReplyVO> replyListData(int bno) {
		SqlSession session = ssf.openSession();
		List<ReplyVO> list = session.selectList("rereplyListData", bno);
		session.close();
		return list;
	}

	public static void replyReplyInsert(int root, ReplyVO vo) {
		SqlSession session = ssf.openSession();
		ReplyVO pvo = session.selectOne("rereplyParentData", root);
		session.update("rereplyStepIncrement", pvo);
		vo.setGroup_id(pvo.getGroup_id());
		vo.setGroup_step(pvo.getGroup_step() + 1);
		vo.setGroup_tab(pvo.getGroup_tab() + 1);
		vo.setRoot(root);

		session.insert("rereplyReplyInsert", vo);
		session.update("rereplyDepthIncrement", root);
		session.commit();
		session.close();
	}

	public static void replyUpdate(ReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("rereplyUpdate", vo);
		session.close();

	}

	public static void replyDelete(int no) {
		SqlSession session = ssf.openSession();
		// depth,root
		ReplyVO vo = session.selectOne("rereplyInfoData", no);
		if (vo.getDepth() == 0) {
			session.delete("rereplyDelete", no);
		} else {
			session.update("rereplyMsgUpdate", no);
		}
		session.update("rereplyDepthDecrement", vo.getRoot());

		session.commit();
		session.close();
	}

	public static int replyCount(int bno) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("rereplyCount", bno);
		session.close();
		return count;
	}

}
