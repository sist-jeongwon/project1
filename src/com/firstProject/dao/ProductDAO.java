package com.firstProject.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.vo.LikeVO;
import com.firstProject.vo.ProductVO;
import com.firstProject.vo.Product_keepVO;
import com.firstProject.vo.ReplyVO;

public class ProductDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf = CreateSqlSessionFactory.getSsf();
	}

	/*
	 * <select id="productListData" resultType="ProductVO" parameterType="hashmap">
	 * SELECT product_no,main_img,name,num FROM (SELECT
	 * product_no,main_img,name,rownum as num FROM (SELECT product_no,main_img,name
	 * FROM product)) WHERE num BETWEEN #{start} AND #{end} </select> <select
	 * id="productTotalPage" resultType="int" parameterType="int"> SELECT
	 * CEIL(COUNT(*)/12.0) FROM product </select>
	 */
	public static List<ProductVO> productListData(Map map) {
		SqlSession session = ssf.openSession();
		List<ProductVO> list = session.selectList("productListData", map);
		session.close();// 반환
		return list;
	}

	public static int productTotalPage() {
		SqlSession session = ssf.openSession();
		int total = session.selectOne("productTotalPage");
		session.close();
		return total;
	}

	/*
	 * <select id="productDetailData" resultType="ProductVO" parameterType="int">
	 * SELECT product.product_no, cno, name, price, main_img, detail_no, img,
	 * content FROM product,product_detail WHERE
	 * product.product_no=product_detail.product_no AND product.product_no=#{no}
	 * </select>
	 */
	public static ProductVO productDetailData(int no) {
		SqlSession session = ssf.openSession();
		ProductVO vo = session.selectOne("productDetailData", no);
		session.close();
		return vo;
	}

	///////////////////////////////////////////////////////////////////////
	// 장바구니
	public static void Product_keepInsert(Product_keepVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("productInsert", vo);
		session.close();
	}

	public static List<Product_keepVO> product_keepListData(String id) {
		SqlSession session = ssf.openSession();
		List<Product_keepVO> list = session.selectList("product_keepListData", id);
		session.close();
		return list;
	}

	public static int product_keepCount(Product_keepVO vo) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("product_keepCount", vo);
		session.close();
		return count;
	}

	public static void product_keepDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.delete("product_keepDelete", no);
		session.close();
	}

	// 찜
	public static void likeInsert(LikeVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("likeInsert", vo);
		session.close();
	}

	public static List<LikeVO> likeListData(String id) {
		SqlSession session = ssf.openSession();
		List<LikeVO> list = session.selectList("likeListData", id);
		session.close();
		return list;
	}

	public static int likeCount(LikeVO vo) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("likeCount", vo);
		session.close();
		return count;
	}

	public static void likeDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.delete("likeDelete", no);
		session.close();
	}
	////////////////////// 댓글 관련 ///////////////////////
	public static void replyInsert(ReplyVO vo) {
		SqlSession session = ssf.openSession(true);// commit(X)
		// commit() ==> DML
		session.insert("preplyInsert", vo);
		session.close();
	}

	public static List<ReplyVO> replyListData(int bno) {
		SqlSession session = ssf.openSession();
		List<ReplyVO> list = session.selectList("preplyListData", bno);
		session.close();
		return list;
	}

	public static void replyReplyInsert(int root, ReplyVO vo) {
		SqlSession session = ssf.openSession();
		ReplyVO pvo = session.selectOne("preplyParentData", root);
		session.update("preplyStepIncrement", pvo);
		vo.setGroup_id(pvo.getGroup_id());
		vo.setGroup_step(pvo.getGroup_step() + 1);
		vo.setGroup_tab(pvo.getGroup_tab() + 1);
		vo.setRoot(root);

		session.insert("preplyReplyInsert", vo);
		session.update("preplyDepthIncrement", root);
		session.commit();
		session.close();
	}

	public static void replyUpdate(ReplyVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("preplyUpdate", vo);
		session.close();

	}

	public static void replyDelete(int no) {
		SqlSession session = ssf.openSession();
		// depth,root
		ReplyVO vo = session.selectOne("preplyInfoData", no);
		if (vo.getDepth() == 0) {
			session.delete("preplyDelete", no);
		} else {
			session.update("preplyMsgUpdate", no);
		}
		session.update("preplyDepthDecrement", vo.getRoot());

		session.commit();
		session.close();
	}

	public static int replyCount(int bno) {
		SqlSession session = ssf.openSession();
		int count = session.selectOne("preplyCount", bno);
		session.close();
		return count;
	}

}


