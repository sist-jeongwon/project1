package com.firstProject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.dao.CreateSqlSessionFactory;
import com.firstProject.vo.LikeVO;
import com.firstProject.vo.RecipeVO;
import com.firstProject.vo.ReplyVO;

public class RecipeDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf = CreateSqlSessionFactory.getSsf();
	}

	public static List<RecipeVO> recipeData(Map map) {
		SqlSession session = ssf.openSession();
		List<RecipeVO> list = session.selectList("recipeData", map);
		session.close();
		return list;
	}
	

	public static int recipeTotalPage() {
		SqlSession session = ssf.openSession();
		int total = session.selectOne("recipeTotalPage");
		session.close();
		return total;
	}

	public static RecipeVO recipeDetailData(int recipe_no) {
		SqlSession session = ssf.openSession();
		session.update("hitIncrement", recipe_no);
		session.commit();
		RecipeVO vo = session.selectOne("recipeDetailData", recipe_no);
		session.close();
		return vo;
	}

	// Âò
	public static void rclikeInsert(LikeVO vo)
	{
		SqlSession session=ssf.openSession(true);	
		 session.update("rclikeInsert", vo);
		 session.close();
	}
	
	public static List<LikeVO> rclikeListData(String id) {
		SqlSession session = ssf.openSession();
		List<LikeVO> list = session.selectList("rclikeListData", id);
		session.close();
		return list;
	}

	public static int rclikeCount(LikeVO vo) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("rclikeCount", vo);
		session.close();
		return count;
	}

	public static void rclikeDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.delete("rclikeDelete", no);
		session.close();
	}

	// ´ñ±Û
	public static void replyInsert(ReplyVO vo) {
		SqlSession session = ssf.openSession(true);// commit(X)
		// commit() ==> DML
		session.insert("replyInsert", vo);
		session.close();
	}

	public static List<ReplyVO> replyListData(int bno) {
		SqlSession session = ssf.openSession();
		List<ReplyVO> list = session.selectList("replyListData", bno);
		session.close();
		return list;
	}

	public static void replyReplyInsert(int root, ReplyVO vo) {
		SqlSession session = ssf.openSession();
		ReplyVO pvo = session.selectOne("replyParentData", root);
		session.update("replyStepIncrement", pvo);
		vo.setGroup_id(pvo.getGroup_id());
		vo.setGroup_step(pvo.getGroup_step() + 1);
		vo.setGroup_tab(pvo.getGroup_tab() + 1);
		vo.setRoot(root);

		session.insert("replyReplyInsert", vo);
		session.update("replyDepthIncrement", root);
		session.commit();
		session.close();
	}

	public static void replyUpdate(ReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("replyUpdate", vo);
		session.close();

	}

	public static void replyDelete(int no) {
		SqlSession session = ssf.openSession();
		// depth,root
		ReplyVO vo = session.selectOne("replyInfoData", no);
		if (vo.getDepth() == 0) {
			session.delete("replyDelete", no);
		} else {
			session.update("replyMsgUpdate", no);
		}
		session.update("replyDepthDecrement", vo.getRoot());

		session.commit();
		session.close();
	}

	public static int replyCount(int bno) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("replyCount", bno);
		session.close();
		return count;
	}

}
