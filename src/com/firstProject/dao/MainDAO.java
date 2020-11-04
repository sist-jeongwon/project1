package com.firstProject.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.firstProject.vo.*;

public class MainDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf = CreateSqlSessionFactory.getSsf();
	}

	public static List<ProductVO> productMainList() {
		SqlSession session = ssf.openSession();
		List<ProductVO> list = session.selectList("productMainList");
		session.close();
		return list;
	}

	public static List<RecipeVO> mainRecipeList() {
		SqlSession session = ssf.openSession();
		List<RecipeVO> recipeList = session.selectList("mainRecipeList");
		session.close();
		return recipeList;
	}
}
