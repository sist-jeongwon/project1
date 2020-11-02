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
.post-details-content .blog-content .post-meta a:first-child::after {
            position: absolute;
            z-index: 5;
            top: 0;
            right: -14px;
            content: ""; }
            .list-btn{
            	float:right;
            }
</style>

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
                        <div class="blog-thumbnail mb-50">
                         <img src="${vo.rest_poster }" width="400" height="500"> 
                         
                        </div>
                     </div>   
               <div class="blog-content">
                            <a href="#" class="post-tag">${vo.rest_content}</a>
                            <h4 class="post-title">${vo.rest_name}&nbsp;&nbsp;&nbsp;${vo.rest_score}</h4>
                            <div class="post-meta mb-50">
                                <a href="#" class="post-author" ><img src="png/rest_eye.png" width="20" height="20" alt>${vo.rest_hit}</a> 
                                <a href="#" class="post-author"><img src="png/rest_like.png" width="20" height="20" alt>${vo.rest_like}</a> 
                            </div>
             
               
             
               <div class="recipe-info" style="background-color: white;">
                        <h5>Info</h5>
                        <ul class="info-data">
                        	
                        	 <li><img src="png/rest_location.png" width="60" height="60" alt> <span style="color:black;" text-align="center;">&nbsp;&nbsp;&nbsp; ${vo.rest_addr1 }<p>
                        													 &nbsp;&nbsp;&nbsp;	${vo.rest_addr2 }</p>				</span></li>
                            <li><img src="png/rest_tel.png" width="30" height="30" alt> <span style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_tel }</span></li>
                            <li><img src="png/rest_price.png" width="30" height="30" alt> <span style="color:black;">&nbsp;&nbsp;&nbsp; ${vo.rest_price }</span></li>
                            <li><img src="png/rest_park.png" width="30" height="30" alt> <span style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_parking }</span></li>
                            <li><img src="png/rest_time.png" width="45" height="45" alt> <span style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_time }</span></li>
                            <li><img src="png/rest_holiday.png" width="45" height="45" alt> <span style="color:black;">&nbsp;&nbsp;&nbsp;${vo.rest_holiday }</span></li>
                            <c:if test="${vo.rest_sns != 'X' }">
                            <li><img src="png/rest_sns.png" width="60" height="60" alt><a href="${vo.rest_sns }" class="post-author"><span style="color:black;">웹사이트&nbsp;&nbsp;&nbsp;</span></li>
                            </c:if>
                            
                            <a href="../restaurant/restaurant_main.do"> <button type="submit" class="btn bueno-btn list-btn">목록</button></a>
                        </ul>
                     </div>
                    </div>
                  
                  
                  
                   <!-- Comment Area Start -->
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
 
                    <div class="post-a-comment-area mb-30 clearfix">
                        <h4 class="mb-50">Leave a reply</h4>

                        <!-- Reply Form -->
                        <div class="contact-form-area">
                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-12 col-lg-6">
                                        <input type="text" class="form-control" id="name" placeholder="Name*">
                                    </div>
                                    <div class="col-12 col-lg-6">
                                        <input type="email" class="form-control" id="email" placeholder="Email*">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" class="form-control" id="subject" placeholder="Website">
                                    </div>
                                    <div class="col-12">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn bueno-btn mt-30" type="submit">Submit Comment</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                  
                  
                  
                  
                  
                  
                   <!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">

                        <!-- Single Widget Area -->
                        <div class="single-widget-area author-widget mb-30">
                            <div class="background-pattern bg-img" style="background-image: url(img/core-img/pattern2.png);">
                             <!--  <div class="post-meta mb-50"></div> --> 
                                <button type="submit" class="btn bueno-btn w-100 mt-1">예약하기</button>
                                <button type="submit" class="btn bueno-btn w-100 mt-1">찜하기</button>
                            </div>
                        </div>

                        <!-- Single Widget Area -->
                        <div class="single-widget-area add-widget mb-30">
                            <img src="img/bg-img/add.png" alt="">
                        </div>
							
                        <!-- Single Widget Area -->
                        <div class="single-widget-area post-widget mb-30">
                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="img/bg-img/12.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Friend eggs with ham</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="img/bg-img/13.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Burger with fries</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="img/bg-img/14.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Avocado &amp; Oisters</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="img/bg-img/15.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Tortilla prawns</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="img/bg-img/16.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="#" class="post-title">Burger with fries</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">July 11, 2018</a>
                                        <a href="#" class="post-author">By Julia Stiles</a>
                                    </div>
                                </div>
                            </div>
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
         
      </div>
   
 

              

                
    </section>
  
</body>
</html>