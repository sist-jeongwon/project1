package com.firstProject.temp;
import java.util.*;
import java.sql.*;
public class RestaurantDAO {
   private Connection conn;
   private PreparedStatement ps;
   public RestaurantDAO()
   {
	   try
	   {
		   Class.forName("oracle.jdbc.driver.OracleDriver");
	   }catch(Exception ex){}
   }
   public void getConnection()
   {
	   try
	   {
		   String url="jdbc:oracle:thin:@211.238.142.199:1521:XE";
		   conn=DriverManager.getConnection(url,"hr","happy");
	   }catch(Exception ex) {}
   }
   public void disConnection()
   {
	   try
	   {
		   if(ps!=null) ps.close();
		   if(conn!=null) conn.close();
	   }catch(Exception ex) {}
   }
   public List<Integer> movieData()
   {
	   List<Integer> list=new ArrayList<Integer>();
	   try
	   {
		   getConnection();
		   String sql="SELECT rset_no FROM restaurant_info";
		   ps=conn.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   int rest_no=rs.getInt(1);
			   list.add(rest_no);
		   }
		   rs.close();
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
	   return list;
   }
   public void theaterInsert(int rest_no,String theater_no)
   {
	   try
	   {
		   getConnection();
		   String sql="UPDATE restaurant_info SET "
				     +"theater_no=? "
				     +"WHERE rest_no=?";
		   ps=conn.prepareStatement(sql);
		   ps.setString(1,theater_no);
		   ps.setInt(2, rest_no);
		   ps.executeUpdate();
	   }catch(Exception ex) 
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
   }
   public String theaterInfoData(int rest_no)
   {
	   String result="";
	   try
	   {
		   getConnection();
		   String sql="SELECT tloc1,tloc2 FROM theater_info "
				     +"WHERE tno=?";
		   ps=conn.prepareStatement(sql);
		   ps.setInt(1, rest_no);
		   ResultSet rs=ps.executeQuery();
		   rs.next();
		   String tloc1=rs.getString(1);
		   String tloc2=rs.getString(2);
		   result=tloc1+"("+tloc2+")";
		   rs.close();
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
	   return result;
   }
   public void theater_rday(int tno,String rday)
   {
	   try
	   {
		   getConnection();
		   String sql="UPDATE theater_info SET "
				     +"rday=? "
				     +"WHERE tno=?";
		   ps=conn.prepareStatement(sql);
		   ps.setString(1, rday);
		   ps.setInt(2, tno);
		   ps.executeUpdate();
	   }catch(Exception ex)
	   {
		   System.out.println(ex.getMessage());
	   }
	   finally
	   {
		   disConnection();
	   }
   }
   public void date_time(int month,String time)
   {
	   try
	   {
		   getConnection();
		   String sql="INSERT INTO date_info VALUES(?,?)";
		   ps=conn.prepareStatement(sql);
		   ps.setInt(1, month);
		   ps.setString(2, time);
		   ps.executeUpdate();
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   disConnection();
	   }
   }
}






