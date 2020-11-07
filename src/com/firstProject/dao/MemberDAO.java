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
  
  public static int memberTelCheck(String tel)
  {
	  SqlSession session=ssf.openSession();
	  int count=session.selectOne("memberTelCheck", tel);
	  session.close();
	  return count;
  }

  public static String findMemberId(String tel)
  {
	  SqlSession session=ssf.openSession();
	  String id=session.selectOne("findMemberId", tel);
	  session.close();
	  return id;
  }
  
  public static String findMemberPwd(String id) {
	  
	  SqlSession session=ssf.openSession();
      String pwd=session.selectOne("findMemberPwd", id);
      session.close();
	  return pwd;
	  
  }
  
  public static MemberVO memberDetailData(String id)
  {
	   SqlSession session=ssf.openSession();
	   MemberVO vo=session.selectOne("memberDetailData", id);
	   session.close();
	   return vo;
  }
  
  public static void memberUpdate(MemberVO dvo) {
	  
	  SqlSession session=ssf.openSession(true);
	  session.update("memberUpdate", dvo);
	  session.close();

  }
}