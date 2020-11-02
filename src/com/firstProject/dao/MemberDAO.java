package com.firstProject.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.firstProject.vo.MemberVO;

public class MemberDAO {
  private static SqlSessionFactory ssf;
  static
  {
	 ssf=CreateSqlSessionFactory.getSsf();
  }
 
  public static int memberIdCheck(String id)
  {
	  SqlSession session=ssf.openSession();
	  int count=session.selectOne("memberIdcheck", id);
	  session.close();
	  return count;
  }
  
  // <insert id="memberInsert" parameterType="com.sist.vo.MemberVO"> ==> MemberModel
  public static void memberInsert(MemberVO vo)
  {
	  SqlSession session=ssf.openSession(true);
	  session.insert("memberInsert", vo);
	  session.close();
  }
  
  /*
   *    <select id="memberLogin" resultType="MemberVO" parameterType="String">
     		SELECT mem_id,name,mem_pwd,admin
     		FROM member
     		WHERE id=#{id}
 		</select>
   */
  
  public static MemberVO memberLogin(String id,String pwd)
  {
	  MemberVO vo=new MemberVO();
	  SqlSession session=ssf.openSession();
	  
	  int count=session.selectOne("memberIdcheck", id);
	  if(count==0)
	  {
		  vo.setMsg("NOID");
	  }
	  else
	  {
		  MemberVO dVO=session.selectOne("memberLogin", id);
		 
		  if(pwd.equals(dVO.getMem_pwd()))
		  {
			  vo.setMsg("OK");
			  vo.setMem_id(dVO.getMem_id());
			  vo.setName(dVO.getName());
			  vo.setAdmin(dVO.getAdmin());
		  }
		  else
		  {
			  vo.setMsg("NOPWD");
		  }
	  }
	  
	  return vo;
  }
  
}