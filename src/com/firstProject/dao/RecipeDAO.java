package com.firstProject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.dao.CreateSqlSessionFactory;
import com.firstProject.vo.LikeVO;
import com.firstProject.vo.RecipeVO;


public class RecipeDAO {
	private static SqlSessionFactory ssf;
	   static
	   {
		   ssf=CreateSqlSessionFactory.getSsf();
	   }
	   public static List<RecipeVO> recipeData(Map map)
	   {
		   SqlSession session=ssf.openSession();
		   List<RecipeVO> list=session.selectList("recipeData",map);
		   session.close();
		   return list;
	   }
	   public static int recipeTotalPage()
	   {
		   SqlSession session=ssf.openSession();
		   int total=session.selectOne("recipeTotalPage");
		   session.close();
		   return total;
	   }
	   public static RecipeVO recipeDetailData(int no)
	   {
		   SqlSession session=ssf.openSession();
		   session.update("hitIncrement", no);
		   session.commit();
		   RecipeVO vo=session.selectOne("recipeDetailData", no);
		   session.close();
		   return vo;
	   }
	   
	   ///////////////////////////////////////////////////
	 //찜
	   public static void likeInsert(LikeVO vo)
	   {
	  	   SqlSession session=ssf.openSession(true);
	  	   session.update("likeInsert", vo);
	  	   session.close();
	   }
	   
	   public static List<LikeVO> likeListData(String id)
	   {
	  	   SqlSession session=ssf.openSession();
	  	   List<LikeVO> list=session.selectList("likeListData",id);
	  	   session.close();
	  	   return list;
	   }

	   public static int likeCount(LikeVO vo)
	   {
	  	   SqlSession session=ssf.openSession();
	  	   int count=session.selectOne("likeCount",vo);
	  	   session.close();
	  	   return count;
	   }

	   public static void likeDelete(int no)
	   {
	  	   SqlSession session=ssf.openSession(true);
	  	   session.delete("likeDelete", no);
	  	   session.close();
	   }
}
