<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Bueno - Food Blog HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">
<style type="text/css">
.single-post-area .blog-content .post-rest a {
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        position: relative;
        z-index: 1;
        display: inline-block;
        color: #7a7a7a;
        font-size: 12px;
        font-weight: 600;
        text-transform: uppercase; }
        .single-post-area .blog-content .post-rest a:first-child {
          margin-right: 20px; }
          .single-post-area .blog-content .post-rest a:first-child::after {
            position: absolute;
            z-index: 5;
            top: 0;
            right: -14px; }
            .list-btn{
            	float:right;
            	
            }
            #poster {
            overflow: hidden;
            height:500px;
            }
</style>
<!-- <script type="text/javascript" src="http://code/jquery.com/jquery.js"></script> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=99ae3e19196ec095b5718c4a72ec1ba8&libraries=services,clusterer,drawing"></script>
<script type="text/javascript">
<!--▲ 댓글 부분-->
let i=0;
let u=0;
$(function(){
	$('.reply_reply').click(function(){
	  $('.rIn').hide();
	  $('.rUp').hide();
	  $('.reply_reply').text("댓글");
	  let no=$(this).attr('value');
	  if(i==0)
	  {
			$('#rIn'+no).show();
			$(this).text("취소");
			i=1;
	  }
	  else
	  {
		    $('#rIn'+no).hide();
		    $(this).text("댓글");
			i=0;
	  }
	});
	$('.reply_update').click(function(){
		let no=$(this).attr("value");
		$('.rIn').hide();
		$('.rUp').hide("slow");
		if(u==0)
		{
			$('#rUp'+no).show();
			u=1;		
		}
		else
		{
			$('#rUp'+no).hide();
			u=0;
		}
	})
	let d=0;
	$('#delBtn').click(function(){
		if(d==0)
		{
			$('#delTr').show();
			d=1;
		}
		else
		{
			$('#delTr').hide();
			d=0;
		}
	});
});
<!--▲ 댓글 부분-->



$(function(){
	$('#mapBtn').click(function(){
		$.ajax({
			type:'post',
			url:'../restaurant/restaurant_map.do',
			success:function(result)
			{
				alert(result);
				$('#map').html(result);
			}
		})
	})
})
</script>

</head>


<body>


    <!-- ##### Post Details Area Start ##### -->
    <section class="post-news-area section-padding-100-0 mb-70">
        <div class="container">
        <!-- container 에서 div 클래스 닫지 않기..... 닫으면 사이드바 내려감.. -->
            <div class="row justify-content-center">
                <!-- Post Details Content Area -->
                <!-- 크기조절 ↓ㅁ-->
                <div class="col-12 col-lg-8 col-xl-9">
                <!-- 크기조절 ↑-->
                    <div class="post-details-content mb-100">
                        <div class="blog-thumbnail mb-50 text-center" id="poster">
                         <img src="${vo.rest_poster }" style="width:600px;"> 
                         
                        </div>
                     </div>   
            <!--   <div class="blog-content">-->
                            <span style="color:#B0C364; font-weight:bold; font-size:18px; font-face:바탕체;">${vo.rest_content}</span>
                            
                            <!--  <div class="post-meta mb-50">-->
                            <h4 class="post-title">${vo.rest_name}
                            
                            <span style="color:#FF8C00; font-weight:bold;">${vo.rest_score}</span></h4>
                           
                            <div class="post-meta mb-50">
                             <span><img src="png/rest_eye.png" width="20" height="20" alt>&nbsp;${vo.rest_hit}</span> 
                               <span><img src="png/rest_like.png" width="20" height="20" alt>&nbsp;${vo.rest_like}</span> 
                            </div>
             <div style="border-bottom: 20% solid #e4e4e4" width="15%"></div>
<!--              <div style="border-left: thick solid #ff0000" width="15%"></div> -->
               
               
             
               <div class="col-md-9">
               <table style="font-size:15px;">
               	<tr>
               		<td width=20% style="color: #41AC33;font-weight:BOLD;padding-left:0px;wideth:200px;">주소</td>
               		<td>${vo.rest_addr2 }</td>
               	<!-- 신주소 -->
               	</tr>
               	 	<tr>
               	 	<td width=20% style="color: #41AC33;font-weight:BOLD;padding-left:0px;wideth:200px;">&emsp;</td>
               		<td>&emsp;${vo.rest_addr1 }<br>
               	</tr>
               	<tr>
               	<td width="20%" style="color: #41AC33;font-weight:BOLD; text-align:left;padding-right:10px;padding-bottom:5px;">전화번호</td>
               	<td width="20%" style="margin:100%; padding-bottom:5px;rowspan:1px">${vo.rest_tel }</td>
                </tr>
               	<tr>
               		<td width="20%" style="color: #41AC33;font-weight:BOLD; text-align:left;padding-right:10px;padding-bottom:5px;">가격대</td>
               	    <td width="20%" style="margin:100%; padding-bottom:9px;rowspan:1px">${vo.rest_price }</td>
               	</tr>
               	<tr>
               		<td width="20%" style="color: #41AC33;font-weight:BOLD; text-align:left;padding-right:10px;padding-bottom:5px;">주차장</td>
               		<td  width="20%" style="margin:100%;padding-bottom:9px; rowspan:2px">${vo.rest_parking }</td>
               	</tr>
               	<tr>
               		<td width="20%" style="color: #41AC33;font-weight:BOLD; text-align:left;padding-right:10px;padding-bottom:5px;">영업시간</td>
               		<td  width="20%" style="margin:100%; rowspan:2px">${vo.rest_time }</td>
               	</tr>
               	<tr>
               		<td width="20%" style="color: #41AC33;font-weight:BOLD; text-align:left;padding-right:10px;padding-bottom:5px;">휴무일</td>
               		<td width="20%" style="margin:100%; rowspan:2px">${vo.rest_holiday }</td>
               	</tr>
               	<tr>
               		
               		<td width="20%" style="color: #41AC33;font-weight:BOLD; text-align:left;padding-right:10px;padding-bottom:5px;"><c:if test="${vo.rest_sns != 'X' }">
               		웹 사이트</td>
               		<td  width="20%" style="margin:100%;" rowspan="2px">
               		<a href="${vo.rest_sns }" class="post-author"><span style="color:black;">홈페이지 바로가기</a>
                            </c:if>
               		</td>
               	</tr>
               </table>
             </div>
               <%-- 
<!--                         <ul class="info-data"> -->
                        	
                        	 <img src="png/rest_location.png" width="60" height="60" > <span style="color:black;" text-align="center;">&nbsp;&nbsp;&nbsp; ${vo.rest_addr1 }<p>
                        													 &nbsp;&nbsp;&nbsp;	${vo.rest_addr2 }</p>				</span>
                            <img src="png/rest_tel.png" width="30" height="30" > <div style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_tel }</div>
                            <img src="png/rest_price.png" width="30" height="30" > <div style="color:black;">&nbsp;&nbsp;&nbsp; ${vo.rest_price }</div>
                            <img src="png/rest_park.png" width="30" height="30" > <div style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_parking }</div>
                            <img src="png/rest_time.png" width="45" height="45" > <div style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_time }</div>
                            <img src="png/rest_holiday.png" width="45" height="45" > <div style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_holiday }</div>
                            <c:if test="${vo.rest_sns != 'X' }">
                           <img src="png/rest_sns.png" width="60" height="60" ><a href="${vo.rest_sns }" class="post-author"><span style="color:black;">웹사이트&nbsp;&nbsp;&nbsp;</div></a>
                            </c:if>
                            
                                  
                           
<!-- <!--                         </ul> --> -->
<!-- <!--                      </div> --> -->
<!--                      </ul> --> --%>
               
                
     
    
                  
                  <div style="border-bottom: 1px solid #e4e4e4" width="65%"></div>
                  
                  
                  
                  
                   <!-- Comment Area Start -->
                   <h4 class="post-title"></h4>
                    <div class="comment_area clearfix mb-100">
                        <h4 class="mb-50">한줄 평가</h4>
                        
                        <ol>
                            <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content d-flex">
                                    <!-- Comment Author -->
                                    <div class="comment-author">
                                        <img src="png/rest_smile.png" width="30" height="30" alt="author">
                                         
                                    </div>
                                    <!-- Comment Meta -->
                                    <div class="comment-meta">
                                        <div class="d-flex">
                                            <a href="#" class="post-author">아이디</a>
                                            <a href="#" class="post-date">날짜</a>
                                            <a href="#" class="reply">평가</a>
                                        </div>
                                        <p>Consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat nulla placerat, tinci dunt mi. Nullam vel orci dui. Su spendisse sit amet laoreet neque. Fusce sagittis sus cipit sem a consequat.</p>
                                    </div>
                                </div>

                                <ol class="children">
                                    <li class="single_comment_area">
                                        <!-- Comment Content -->
                                        <div class="comment-content d-flex">
                                            <!-- Comment Author -->
                                            <div class="comment-author">
                                                <img src="png/rest_smile.png" width="30" height="30" alt="author">
                                            </div>
                                            <!-- Comment Meta -->
                                            <div class="comment-meta">
                                                <div class="d-flex">
                                                    <a href="#" class="post-author">아이디</a>
                                                    <a href="#" class="post-date">날짜</a>
                                                    <a href="#" class="reply">평가</a>
                                                </div>
                                                <p>Consectetur adipiscing elit. Praesent vel tortor facilisis, Nullam vel orci dui. Su spendisse sit amet laoreet neque.</p>
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </li>

                        </ol>
                    </div>
 
 						<!-- Comment Area Start -->
                    <div class="comment_area clearfix mb-100">
                        <h4 class="mb-50">댓글</h4>
                        
                        <c:forEach var="rvo" items="${rList }">
						      <table class="table">
						        <tr>
						          <td class="text-left">
						           <c:if test="${rvo.group_tab>0 }"> 
						           		<c:forEach var="i" begin="1" end="${rvo.group_tab }">
						               &nbsp;&nbsp;&nbsp;&nbsp;
						             </c:forEach>
						             <img src="../style/img/re.png" style="width:15px; height:15px;">
						           </c:if>
						           <img src="../style/img/icon.PNG" style="width:30px; height:30px;">&nbsp;${rvo.name }(${rvo.dbday })
						          </td> 
						          <td class="text-right">
						            <c:if test="${sessionScope.id == rvo.mem_id }">
						             <span class="btn btn-xs btn-primary reply_update" value="${rvo.no }">수정</span>
						             <a href="../recipe/reply_delete.do?no=${rvo.no }&bno=${rvo.bno}" class="btn btn-xs btn-success">삭제</a>
						            </c:if>
						             <span class="btn btn-xs btn-danger reply_reply" value="${rvo.no }">댓글</span>
						          </td>
						        </tr>
						        <tr>
						          <td class="text-left" colspan="2">
						            <c:if test="${rvo.group_tab>0 }">
						             <c:forEach var="i" begin="1" end="${rvo.group_tab }">
						               &nbsp;&nbsp; &nbsp;&nbsp;
						             </c:forEach>
						           </c:if>
						            <pre style="white-space: pre-wrap;background-color: white;border:none">${rvo.msg }</pre>
						          </td>
						        </tr>
						       <tr class="rIn" id="rIn${rvo.no }" value="${rvo.no }" style="display:none">
						       <td colspan="2">
						        <form method=post action="../recipe/reply_reply_insert.do">
						            <input type=hidden name="no" value="${rvo.no }">
						            <input type=hidden name="bno" value="${vo.recipe_no }">
							         <textarea rows="3" cols="100" name="msg" style="float: left; margin-right:10px;"></textarea>
							        <input type=submit value="댓글쓰기" style="height:70px;float: left;"
							          class="btn btn-sm">
						        </form>
						       </td>
						      </tr>
						      <tr class="rUp" id="rUp${rvo.no }" value="${rvo.no }" style="display:none">
						       <td colspan="2">
						        <form method=post action="../recipe/reply_update.do">
						            <input type=hidden name="no" value="${rvo.no }">
						            <input type=hidden name="bno" value="${vo.recipe_no }">	<!-- bno는 게시물 번호 -->
							         <textarea rows="3" cols="100" name="msg" style="float: left; margin-right:10px;">${rvo.msg }</textarea>
							        <input type=submit value="댓글수정" style="height:70px;float: left"
							          class="btn btn-sm btn-primary">
						        </form>
						       </td>
						      </tr>
						      </table>
						    </c:forEach>
						    <%-- </c:forEach> --%>
						    <hr>
						    <table class="table">
						      <tr>
						       <td>
						        <form method=post action="../recipe/reply_insert.do">
						            <input type=hidden name="bno" value="${vo.rest_no }">
							        <textarea rows="3" cols="100" name="msg" style="float: left; margin-right:10px;"></textarea>
							        <input type=submit value="댓글쓰기" style="height:70px;float: left;"
							          class="btn btn-sm btn-primary">
						        </form>
						       </td>
						      </tr>
						    </table>
						    
						    </div>
 
 
 
 
                    </div>
                
                  
                  
                  
                  
                  
                  
                   <!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">

                        <!-- Single Widget Area -->
                        <div class="single-widget-area author-widget mb-30">
                            <div class="background-pattern bg-img" style="background-image: url(img/core-img/pattern2.png);">
                             <!--  <div class="post-meta mb-50"></div> --> 
                           <a href="../restaurant/restaurant_main.do"> <button type="submit" class="btn bueno-btn w-100 mt-1">맛집 둘러보기</button></a>
							<a href="../reserve/reserve.do">
                            <button type="submit" class="btn bueno-btn w-100 mt-1">예약하기</button></a>
                         <c:if test="${count==0 }">
           				     <a href="../restaurant/jjim.do?no=${vo.rest_no }" class="btn btn-sm btn-primary">찜하기</a>
           					</c:if>
							  <button type="submit" class="btn bueno-btn w-100 mt-1">찜하기</button>
                            </div>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area add-widget mb-30">
                            <img src="img/bg-img/add.png" alt="">
                        </div>
							
                        <!-- Single Widget Area -->
                        <h6> 내가 본 맛집 </h6>
                        <div class="single-widget-area post-widget mb-30">
                            <!-- Single Post Area -->
                            <c:forEach var="vo" items="${cList }" varStatus="s">
                            <c:if test="${s.index<6 }">
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <a href="../restaurant/restaurant_detail_before.do?rest_no=${vo.rest_no }" ><img src="${vo.rest_poster }" style="width:70px; height:70px;"></a>
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="${vo.rest_sns }" class="post-title">${vo.rest_name }</a>
                                    <div class="post-rest">
                                    	 <a href="../restaurant/restaurant_detail_before.do?rest_no=${vo.rest_no }" class="post-date">${vo.rest_content }</a>
                                        <a href="../restaurant/restaurant_detail_before.do?rest_no=${vo.rest_no }" class="post-date">가격대 : ${vo.rest_price }</a>
                                    </div>
                                </div>
                            </div>
                           
                            </c:if>
                            </c:forEach>
                    </div>
							
							
							
                        <!-- Single Widget Area -->
                        <div class="single-widget-area newsletter-widget mb-30">
                            <h6>Subscribe to newsletter</h6>
                            <form action="#" method="post">
                                <input type="search" name="widget-search" id="widgetSearch" placeholder="E-mail">
                                <button type="submit" class="btn bueno-btn w-100">Subscribe</button>
                            </form>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>
                    </div>
             
         


 

              
  <div id="map"></div>
                
    </section>
  
</body>
</html>