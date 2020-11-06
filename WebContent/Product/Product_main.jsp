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
	<div class="post-catagory section-padding-100">
		<div class="container">
			<div class="row">
				<c:forEach var="vo" items="${list }">
					<div class="col-12 col-sm-6 col-lg-4">
						<div class="single-post-catagory mb-30">
							<img src="${vo.main_img }" alt="" style="width: 100%">
							<div class="catagory-content-bg">
								<div class="catagory-content">
									<a href="#" class="post-tag">The Best</a> <a
										href="../Product/detail_before.do?no=${vo.product_no }"
										class="post-title">${vo.name }</a>
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
									<li class="page-item"><a class="page-link"
										href="../Product/Product_main.do?page=${startPage-1 }">&lt;</a></li>
								</c:if>
								<c:forEach var="i" begin="${startPage }" end="${endPage }">
									<c:if test="${i==curpage }">
										<li class="page-item active"><a class="page-link"
											href="../Product/Product_main.do?page=${i }">${i }</a></li>
									</c:if>
									<c:if test="${i!=curpage }">
										<li class="page-item"><a class="page-link"
											href="../Product/Product_main.do?page=${i }">${i }</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${endPage<totalpage }">
									<li class="page-item"><a class="page-link"
										href="../Product/Product_main.do?page=${endPage+1 }">&gt;</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<div style="height: 30px"></div>
			<c:if test="${not empty sessionScope.id }">
				<h6>오늘 본 상품</h6>
				<div style="height: 30px"></div>
				<div class="row">
					<c:forEach var="vo" items="${cList }" varStatus="s">
						<c:if test="${s.index<6 }">
							<div class="col-md-2">
								<div class="thumbnail">
									<img src="${vo.main_img }">
									<div class="caption">
										<p>${vo.name }</p>
										<p>${vo.price }원</p>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</c:if>
		</div>
</body>
</html>
