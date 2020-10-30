package com.firstProject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.dao.CreateSqlSessionFactory;
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
}
