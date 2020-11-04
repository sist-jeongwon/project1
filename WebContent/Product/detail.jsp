<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
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
                        
                        <ol>
                            <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content d-flex">
                                    <!-- Comment Author -->
                                    <div class="comment-author">
                                        <img src="img/bg-img/32.jpg" alt="author">
                                    </div>
                                    <!-- Comment Meta -->
                                    <div class="comment-meta">
                                        <div class="d-flex">
                                            <a href="#" class="post-author">Jane Smith</a>
                                            <a href="#" class="post-date">July 11, 2018</a>
                                            <a href="#" class="reply">Reply</a>
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
                                                <img src="img/bg-img/32.jpg" alt="author">
                                            </div>
                                            <!-- Comment Meta -->
                                            <div class="comment-meta">
                                                <div class="d-flex">
                                                    <a href="#" class="post-author">Christian Williams</a>
                                                    <a href="#" class="post-date">April 15, 2018</a>
                                                    <a href="#" class="reply">Reply</a>
                                                </div>
                                                <p>Consectetur adipiscing elit. Praesent vel tortor facilisis, Nullam vel orci dui. Su spendisse sit amet laoreet neque.</p>
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </li>

                            <!-- Single Comment Area -->
                            <li class="single_comment_area">
                                <!-- Comment Content -->
                                <div class="comment-content d-flex">
                                    <!-- Comment Author -->
                                    <div class="comment-author">
                                        <img src="img/bg-img/32.jpg" alt="author">
                                    </div>
                                    <!-- Comment Meta -->
                                    <div class="comment-meta">
                                        <div class="d-flex">
                                            <a href="#" class="post-author">Cris Williams</a>
                                            <a href="#" class="post-date">July 11, 2018</a>
                                            <a href="#" class="reply">Reply</a>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat nulla placerat, tincidunt mi. Nullam vel orci dui. Su spendisse sit amet laoreet neque. Fusce sagittis suscipit.</p>
                                    </div>
                                </div>
                            </li>
                        </ol>
                    </div>

                    <div class="post-a-comment-area mb-10 clearfix">
                        <h4 class="mb-50">상품 문의</h4>

                        <!-- Reply Form -->
                        <div class="contact-form-area">
                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-12">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn bueno-btn mt-10" type="submit">문의 하기</button>
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
                       <!--  <h6>내가 본 상품</h6> -->
                        <div class="single-widget-area post-widget mb-30">
                          <!-- Single Post Area -->
                            <%-- <c:forEach var="vo" items="${cList }" varStatus="s">
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
                           </c:forEach> --%>

                         
                           

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