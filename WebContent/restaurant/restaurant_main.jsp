<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <div class="post-catagory section-padding-100">
  <div class="container">
  <div class="row">
    <c:forEach var="vo" items="${list }">
       <div class="col-12 col-sm-6 col-lg-4">
	     <div class="single-post-catagory mb-30">
	        <img src="${vo.rest_poster}" alt="" style="width:350px; height:350px;">      
	          <div class="catagory-content-bg">
                 <div class="catagory-content">
                   <a href="../restaurant/restaurant_detail.do?rest_no=${vo.rest_no }" class="post-tag">${vo.rest_content }</a>
                   <a href="../restaurant/restaurant_detail.do?rest_no=${vo.rest_no }" class="post-title">${vo.rest_name }</a>
                 </div>
              </div>
         </div>
       </div>
    </c:forEach>
  </div>
  <div class="row">
    <div class="col-12">
     <div class="pagination-area mt-70">
      <nav aria-label="Page navigation example">
       <ul class="pagination">
          <c:if test="${curpage>BLOCK }">
           <li class="page-item"><a class="page-link" href="../restaurnat/restaurant_main.do?page=${startPage-1 }">&lt;</a></li>
          </c:if>
          <c:forEach var="i" begin="${startPage }" end="${endPage }">
            <c:if test="${i==curpage }">
              <li class="page-item active"><a class="page-link" href="../restaurant/restaurant_main.do?page=${i }">${i }</a></li>
            </c:if>
            <c:if test="${i!=curpage }">`
              <li class="page-item"><a class="page-link" href="../restaurant/restaurant_main.do?page=${i }">${i }</a></li>
            </c:if>
          </c:forEach>
          <c:if test="${endPage<totalpage }">
		    <li class="page-item"><a class="page-link" href="../restaurant/restaurant_main.do?page=${endPage+1 }">&gt;</a></li>
		  </c:if>
		</ul>
	  </nav>
	 </div>
    </div>
  </div>
  </div>
  </div>
</body>
</html>

