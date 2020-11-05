<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<div class="col-sm-12">
     <div class="row">
  		<div class="col-sm-12"><h3><center> Reservation <br> <br> </center></h3></div>

    </div>
          <div class="tab-content" >
            <div class="tab-pane active" id="home">

                <div class="col-xs-3"> 

                <form class="form" action="##" method="post"> 
                 <div class="form-group">

                  <label for="first_name"><h4> 식당정보</h4></label>               
                     <tr>
		             <td width=20% height=500>
		               <div id="restaurant_info" style="overflow-y:auto;height:450px"></div>
		             </td>
		           </tr>
                      
                      </div>
                </form>
               </div> <!-- 식당정보 -->
                
            
                <div class="col-xs-3">   
			       <form class="form" action="##" method="post"> 
			                 <div class="form-group">
			
			                  <label for="first_name"><h4> 체인점정보</h4></label>               
			                <tr>
					             <td width=15 height=500>
					               <div id="theater_info" style="overflow-y:auto;height:450px"></div>
					             </td>
					           </tr>
                      
                      </div>
                </form>
                </div><!-- 체인점 -->
                
                <div class="col-xs-3">   
			       <form class="form" action="##" method="post"> 
			                 <div class="form-group">
			
			                  <label for="first_name"><h4> 예매일</h4></label>               
			                <tr>
					             <td>
					               <div id="date_info"></div>
					             </td>
					           </tr>
                      
                      </div>
                </form>
                </div><!-- 예매일 -->
                
                <div class="col-xs-3">   
			       <form class="form" action="##" method="post"> 
			                 <div class="form-group">
			
			                  <label for="first_name"><h4> 예매정보</h4></label>               
			               
                      <tr></br>
             <td class="text-center" colspan="2">
               <img src="def.png" width=250 height=300 id="restaurant_poster">
             </td>
           </tr></br>
           <tr>
             <td class="text-right" width=25%>
                         식당명:
             </td>
             <td width=75%>
               <span id="restaurant_title"></span>
             </td>
           </tr></br>
           <tr>
             <td class="text-right" width=25%>
                         지점명:
             </td>
             <td width=75%>
               <span id="restaurant_theater"></span>
             </td>
           </tr></br>
           <tr>
             <td class="text-right" width=25%>
                         예매일:
             </td>
             <td width=75%>
               <span id="restaurant_reserve"></span>
             </td>
           </tr></br>
           <tr>
             <td class="text-right" width=25%>
                         시간:
             </td>
             <td width=75%>
               <span id="restaurant_time"></span>
             </td>
           </tr></br>
           <tr>
             <td class="text-right" width=25%>
                         인원:
             </td>
             <td width=75%>
               <span id="restaurant_people"></span>
             </td>
           </tr></br>
           <tr>
             <td class="text-right" width=25%>
                         예치금:
             </td>
             <td width=75%>
               <span id="restaurant_price"></span>
             </td>
           </tr></br>
           <tr style="display:none" id="okbtn">
              <td colspan="2" class="text-center">
                <form method="post" action="../reserve/reserve_ok.do">
                  <input type=hidden name="cno" id="cno">
                  <input type=hidden name="tloc1" id="tloc1">
                  <input type=hidden name="day" id="day">
                  <input type=hidden name="time" id="time">
                  <input type=hidden name="people" id="people">
                  <input type=hidden name="price" id="price"></br>
                  <input type=submit value="예매하기"
                           class="btn btn-lg btn-primary">
                </form>
                
              </td>
           </tr>
                      </div>
                </form>
                </div><!-- 예매일 -->
            <div class="row">
            <div class="col-xs-2">   
			       <form class="form" action="##" method="post"> 
			                 <div class="form-group">
			
			                  <label for="first_name"><h4> 시간정보</h4></label>               
			                <tr>
				             <td>
				               <div id="time_info"></div>
				             </td>
				           </tr>
                      
                      </div>
                </form>
                </div>

            <div class="col-xs-2">   
			       <form class="form" action="##" method="post"> 
			                 <div class="form-group">
			
			                  <label for="first_name"><h4> 인원정보</h4></label>               
			                <tr>
				             <td>
				               <div id="time_info"></div>
				             </td>
				           </tr>
                      
                      </div>
                </form>
                </div>
            
            </div>
            
            </div>   

    
              




             </div><!--/tab-pane-->

                  
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

</body>
</html>