package com.firstProject.temp;

import java.util.*;

public class MainClass {
	//예매데이터돌릴곳
	public static void main(String[] args) {
		/*
		 * String res=getRand(); System.out.println(res); StringTokenizer st=new
		 * StringTokenizer(res,","); RestaurantDAO dao=new RestaurantDAO();
		 * while(st.hasMoreTokens()) { String s=st.nextToken(); String
		 * r=dao.theaterInfoData(Integer.parseInt(s)); System.out.println(r); }
		 */
		/*
		 * RestaurantDAO dao=new RestaurantDAO(); List<Integer> list=dao.restaurantData(); for(int
		 * no:list) { String res=getRand(); dao.theaterInsert(no, res); }
		 * System.out.println("Insert 완료!!");
		 */
		/*
		 * RestaurantDAO dao=new RestaurantDAO(); for(int i=1;i<=18;i++) { String rday=getRand();
		 * dao.theater_rday(i, rday); } System.out.println("Update완료");
		 */
		//String s=getRand();
		//System.out.println(s);
		RestaurantDAO dao=new RestaurantDAO();
		for(int i=1;i<=31;i++)
		{
			String s=getRand();
			dao.date_time(i, s);
		}
		System.out.println("Insert 완료");
	}
	public static String getRand()
	{
		String result="";
		int count=3+(int)(Math.random()*6);// 5~14
		System.out.println(count);
		int[] com=new int[count];
		int su=0;
		boolean bCheck=false;
		for(int i=0;i<count;i++)
		{
			bCheck=true;
			while(bCheck)
			{
				su=(int)(Math.random()*15)+1;
				bCheck=false;
				for(int j=0;j<i;j++)
				{
					if(com[j]==su)
					{
						bCheck=true;
						break;
					}
				}
			}
			com[i]=su;
		}
		
		/*
		 * for(int i=0;i<com.length-1;i++) { for(int j=i+1;i<com.length;j++) {
		 * if(com[i]>com[j]) { int temp=com[i]; com[i]=com[j]; com[j]=temp; } } }
		 */
		Arrays.sort(com);// ASC
		
		for(int a:com)
		{
			result+=a+",";
		}
		result=result.substring(0,result.lastIndexOf(","));
		return result;
	}

}






