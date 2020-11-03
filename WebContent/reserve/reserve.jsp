<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 라이브러리 추가 -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
 $(function(){
	 $.ajax({
		 type:'post',
		 url:'../reserve/date.do',
		 success:function(result)
		 {
			 $('#reserve_date').html(result);
		 }
	 });
	 
	 $.ajax({
		 type:'post',
		 url:'../reserve/restaurant.do',
		 success:function(result)
		 {
			 $('#restaurant_info').html(result);
		 }
	 })
	 
 });
</script>
</head>
<body>
  <div style="height:30px"></div>
  <div class="row">
   <table class="table">
     <tr>
       <td width=20% height=500>
         <table class="table">
           <caption class="text-center"><h3>식당정보</h3></caption>
           <tr>
             <td>
               <div id="restaurant_info" style="overflow-y:auto;height:450px"></div>
             </td>
           </tr>
         </table>
       </td>
       <td width=15% height=500>
         <table class="table">
           <caption class="text-center"><h3>극장정보</h3></caption>
           <tr>
             <td>
               <div id="theater_info" style="overflow-y:auto;height:450px"></div>
             </td>
           </tr>
         </table>
       </td>
       <td width=35% height=500>
         <table class="table">
           <caption class="text-center"><h3>예매일정보</h3></caption>
           <tr>
             <td>
               <div id="date_info"></div>
             </td>
           </tr>
         </table>
       </td>
       <td width=30% height=700 rowspan="2">
         <table class="table">
           <caption class="text-center"><h3>예매정보</h3></caption>
           <tr>
             <td class="text-center" colspan="2">
               <img src="def.png" width=250 height=300 id="restaurant_poster">
             </td>
           </tr>
           <tr>
             <td class="text-right" width=25%>
                         영화명:
             </td>
             <td width=75%>
               <span id="restaurant_title"></span>
             </td>
           </tr>
           <tr>
             <td class="text-right" width=25%>
                         지점명:
             </td>
             <td width=75%>
               <span id="restaurant_theater"></span>
             </td>
           </tr>
           <tr>
             <td class="text-right" width=25%>
                         예매일:
             </td>
             <td width=75%>
               <span id="restaurant_reserve"></span>
             </td>
           </tr>
           <tr>
             <td class="text-right" width=25%>
                         시간:
             </td>
             <td width=75%>
               <span id="restaurant_time"></span>
             </td>
           </tr>
           <tr>
             <td class="text-right" width=25%>
                         인원:
             </td>
             <td width=75%>
               <span id="restaurant_people"></span>
             </td>
           </tr>
           <tr>
             <td class="text-right" width=25%>
                         예치금:
             </td>
             <td width=75%>
               <span id="restaurant_price"></span>
             </td>
           </tr>
           <tr style="display:none" id="okbtn">
              <td colspan="2" class="text-center">
                <form method="post" action="../reserve/reserve_ok.do">
                  <input type=hidden name="cno" id="cno">
                  <input type=hidden name="tloc1" id="tloc1">
                  <input type=hidden name="day" id="day">
                  <input type=hidden name="time" id="time">
                  <input type=hidden name="people" id="people">
                  <input type=hidden name="price" id="price">
                  <input type=submit value="예매하기"
                           class="btn btn-lg btn-primary">
                </form>
                
              </td>
           </tr>
         </table>
       </td>
     </tr>
     <tr>
       <td colspan="2" height=200>
         <table class="table">
           <caption class="text-center"><h3>시간정보</h3></caption>
           <tr>
             <td>
               <div id="time_info"></div>
             </td>
           </tr>
         </table>
       </td>
       <td width=15% height=200>
         <table class="table">
           <caption class="text-center"><h3>인원정보</h3></caption>
           <tr>
             <td>
               <div id="people_info"></div>
             </td>
           </tr>
         </table>
       </td>
     </tr>
   </table>
  </div>
</body>
</html>