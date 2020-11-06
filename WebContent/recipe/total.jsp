<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<body>
	<div class="post-catagory section-padding-100">
		<div class="container">
			<div class="row">
				<c:forEach var="vo" items="${list }">
					<div class="col-12 col-sm-6 col-lg-4">
						<div class="single-post-catagory mb-30">
							<!-- <img src="${vo.poster }" alt="" style="width:100%;">  -->
							<img src="${vo.poster }" alt=""
								style="width: 350px; height: 350px;">
							<div class="catagory-content-bg">
								<div class="catagory-content">
									<span class="post-tag">${vo.mem_id }</span> <a
										href="../recipe/detail_before.do?recipe_no=${vo.recipe_no }"
										class="post-title"> <c:choose>
											<c:when test="${fn:length(vo.title) gt 20}">
												<c:out value="${fn:substring(vo.title, 0, 20)}" />...
							        </c:when>
											<c:otherwise>
												<c:out value="${vo.title}">
												</c:out>
											</c:otherwise>
										</c:choose>
									</a>
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
										href="../recipe/total.do?page=${startPage-1 }">&lt;</a></li>
								</c:if>
								<c:forEach var="i" begin="${startPage }" end="${endPage }">
									<c:if test="${i==curpage }">
										<li class="page-item active"><a class="page-link"
											href="../recipe/total.do?page=${i }">${i }</a></li>
									</c:if>
									<c:if test="${i!=curpage }">
										<li class="page-item"><a class="page-link"
											href="../recipe/total.do?page=${i }">${i }</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${endPage<totalpage }">
									<li class="page-item"><a class="page-link"
										href="../recipe/total.do?page=${endPage+1 }">&gt;</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<c:if test="${not empty sessionScope.id }">
				<h6 class="mb-50" style="padding-top: 30px;">오늘 본 레시피</h6>
				<div class="row">
					<c:forEach var="vo" items="${cList }" varStatus="s">
						<c:if test="${s.index<6 }">
							<div class="col-md-2">
								<div class="thumbnail">
									<a href="../recipe/detail_before.do?recipe_no=${vo.recipe_no }">
										<img src="${vo.poster }" style="width: 150px; height: 150px;">
									</a>
									<div class="caption">
										<p>${vo.title }<br>${vo.mem_id }</p>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
			</c:if>
			<!-- 
			<div class="row" style="padding-top:30px;">
			                        <h6>오늘 본 레시피</h6>
				                            <c:forEach var="vo" items="${cList }" varStatus="s">
					                              <c:if test="${s.index<6 }">
					                              <div class="col-md-2">
					   								 <div class="thumbnail">
					                                    <img src="${vo.poster }" style="width:160px; height:160px;">
					                                    <div class="caption">
						      							    <p>${vo.title }</p>
						      							    <p>${vo.mem_id }</p>
						      							 </div>   
						      						 </div>
						      					 </div>
					                            </c:if>
				                           </c:forEach> -->

		</div>
	</div>
	</div>
</body>
</html>
