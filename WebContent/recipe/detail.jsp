<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bueno - Food Blog HTML Template</title>
   <link rel="icon" href="img/core-img/favicon.ico">
   <link rel="stylesheet" href="style.css">
   <!-- <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script> -->
<script type="text/javascript">
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
</script>
<style type="text/css">
.btn{
	background-color:#92C364;
	border:none;
}
.btn-xs{
	min-width:0px;
	padding:0 15px;
}
</style>
</head>
<body>
    <!-- ##### Post Details Area Start ##### -->
    <section class="post-news-area section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Post Details Content Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <div class="post-details-content mb-100">
                        <div class="blog-thumbnail mb-50">
                            <img src="${vo.poster }" alt="이미지" style="width:600px;">
                        </div>
                        <div class="blog-content">
                            <h4 class="post-title">${vo.title }</h4>
                            <div class="post-meta mb-50">
                                	<fmt:formatDate pattern="yyyy-MM-dd" value="${vo.recipe_date }"/> / 
                          	<span style="color:#B0C364; font-weight:bold;">${vo.mem_id }</span>
                            </div>
                             <c:forTokens var="item" items="${vo.content}" delims="|" varStatus="status">
								    <p><span style="color:#B0C364; font-weight:bold; font-size:20px;">${status.count}.</span> ${item} </p>
							</c:forTokens>
                        </div>
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
						             <span class="btn bueno-btn btn-xs reply_update" value="${rvo.no }">수정</span>
						             <a href="../recipe/reply_delete.do?no=${rvo.no }&bno=${rvo.bno}" class="btn bueno-btn btn-xs">삭제</a>
						            </c:if>
						             <span class="btn bueno-btn reply_reply btn-xs" value="${rvo.no }">댓글</span>
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
							         <textarea rows="3" cols="95" name="msg" style="float: left; margin-right:10px;"></textarea>
							        <input type=submit value="댓글쓰기" style="height:70px;float: left;"
							          class="btn bueno-btn reply_reply btn-xs">
						        </form>
						       </td>
						      </tr>
						      <tr class="rUp" id="rUp${rvo.no }" value="${rvo.no }" style="display:none">
						       <td colspan="2">
						        <form method=post action="../recipe/reply_update.do">
						            <input type=hidden name="no" value="${rvo.no }">
						            <input type=hidden name="bno" value="${vo.recipe_no }">	<!-- bno는 게시물 번호 -->
							         <textarea rows="3" cols="95" name="msg" style="float: left; margin-right:10px;">${rvo.msg }</textarea>
							        <input type=submit value="댓글수정" style="height:70px;float: left"
							          class="btn bueno-btn reply_reply btn-xs">
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
						            <input type=hidden name="bno" value="${vo.recipe_no }">
							        <textarea rows="3" cols="95" name="msg" style="float: left; margin-right:10px;"></textarea>
							        <input type=submit value="댓글쓰기" style="height:70px;float: left;"
							          class="btn bueno-btn reply_reply btn-xs">
						        </form>
						       </td>
						      </tr>
						    </table>
						    
						    </div>
                </div>
						    
						    
                                             <!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">
		                <div class="ingredients">
		                        <h5>재료</h5>
		 						<c:forEach items="${fn:split(vo.ingredient, ',') }" var="item" varStatus="stat">
		                             <div class="custom-control custom-checkbox">
				                            <input type="checkbox" class="custom-control-input" id="customCheck${stat.count}">
				                            <label class="custom-control-label" for="customCheck${stat.count}">${item}</label>
		                 	       </div>
								</c:forEach>
		                    </div>
 <!-- Single Widget Area -->
                        <div class="single-widget-area author-widget mb-30">
                            <div class="background-pattern bg-img" style="background-image: url(img/core-img/pattern2.png);">
                               <input type=hidden name="rno" value="${vo.recipe_no }">
                                <a href="../recipe/like.do?no=${vo.recipe_no }" class="btn bueno-btn w-100 mt-1">레시피 찜하기</a>
						            
                            </div>
                        </div>
                               
                    </div>
            </div>
                    </div>
        </div>
    </section>
</body>
</html>