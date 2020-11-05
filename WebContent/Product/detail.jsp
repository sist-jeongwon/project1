<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
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
                        <div class="text-center">
                            <img src="${vo.main_img }" width="400" height="500" alt="제품사진">
                        </div>
                        <div class="blog-content">
                            <a href="#" class="post-tag text-center">Healthy Food</a>
                            <h4 class="post-title"></h4>
                            <div class="post-meta mb-50 text-center">
                                <a href="#" class="post-date">${vo.name }</a><br>
                                <a href="#" class="post-author">${vo.price }원</a>
                            </div>
                           <div class="blog-thumbnail mb-50">
                            <img src="${vo.img }"  alt="상세설명 img">
                           </div>
                        </div>
                    </div>
                 
                 
                    <!-- Comment Area Start -->
                    
                    <div class="comment_area clearfix mb-100">
                        <h4 class="mb-50">상품평</h4>
  							<c:forEach var="rvo" items="${pList }">
						      <table class="table">
						        <tr>
						          <td class="text-left">
						           <c:if test="${rvo.group_tab>0 }"> 
						           		<c:forEach var="i" begin="1" end="${rvo.group_tab }">
						               &nbsp;&nbsp;&nbsp;&nbsp;
						             </c:forEach>
						             <img src="#">
						           </c:if>
						           <img src="../style/img/icon.PNG" style="width:30px; height:30px;">&nbsp;${rvo.name }(${rvo.dbday })
						          </td> 
						          <td class="text-right">
						            <c:if test="${sessionScope.id == rvo.mem_id }">
						             <span class="btn btn-xs btn-primary reply_update" value="${rvo.no }">수정</span>
						             <a href="../Product/reply_delete.do?no=${rvo.no }&bno=${rvo.bno}" class="btn btn-xs btn-success">삭제</a>
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
						        <form method=post action="../Product/reply_reply_insert.do">
						            <input type=hidden name="no" value="${rvo.no }">
						            <input type=hidden name="bno" value="${vo.product_no }">
							         <textarea rows="3" cols="100" name="msg" style="float: left; margin-right:10px;"></textarea>
							        <input type=submit value="댓글쓰기" style="height:70px;float: left;"
							          class="btn btn-sm">
						        </form>
						       </td>
						      </tr>
						      <tr class="rUp" id="rUp${rvo.no }" value="${rvo.no }" style="display:none">
						       <td colspan="2">
						        <form method=post action="../Product/reply_update.do">
						            <input type=hidden name="no" value="${rvo.no }">
						            <input type=hidden name="bno" value="${vo.product_no }">	<!-- bno는 게시물 번호 -->
							         <textarea rows="3" cols="100" name="msg" style="float: left; margin-right:10px;">${rvo.msg }</textarea>
							        <input type=submit value="댓글수정" style="height:70px;float: left"
							          class="btn btn-sm btn-primary">
						        </form>
						       </td>
						      </tr>
						      </table>
						    </c:forEach>
						  	    <hr>
						    <table class="table">
						      <tr>
						       <td>
						        <form method=post action="../Product/reply_insert.do">
						            <input type=hidden name="bno" value="${vo.product_no }">
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
                               <div class="post-meta mb-50">
                                 <a href="#" class="post-date"><h4>${vo.name }</h4></a><br>
                                 <a href="#" class="post-author">${vo.price }원</a>
                              </div>
                                <button type="submit" class="btn bueno-btn w-100">주문하기</button><br>
                                <button type="submit" class="btn bueno-btn w-100 mt-1">장바구니 담기</button><br>
                                <a href="../Product/like.do?no=${vo.product_no }" class="btn bueno-btn w-100 mt-1">찜하기</a><br>
                            </div>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area add-widget mb-30">
                            <img src="img/bg-img/add.png" alt="">
                        </div>

                        <!-- Single Widget Area -->
                        <h6 class=text-center>다른 고객이 함께 구매한 상품</h6>
                        <div class="single-widget-area post-widget mb-30">
                          <!-- Single Post Area -->
                            <c:forEach var="vo" items="${cList }" varStatus="s">
                              <c:if test="${s.index<6 }">
                              <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="${vo.main_img }" alt="상품이미지">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">${vo.name }</a>
                                    <div class="post-meta">
                                      <div class="post-date">${vo.price } 원</div>
                                    </div>
                               </div>
                             </div>
                            </c:if>
                           </c:forEach>

                         
                           

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
            </div>
        </div>
    </section>
    <!-- ##### Post Details Area End ##### -->
</body>
</html>