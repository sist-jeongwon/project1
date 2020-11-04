<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style media="screen">
* {
	margin: 0;
	padding: 0;
}

.slide {
	width: 1140px;
	height: 350px;
	overflow: hidden;
	position: relative;
	margin: auto;
}

.slide ul {
	position: absolute;
	top: 0;
	left: 60px;
	font-size: 0;
	top: 0;
}

.slide ul li {
	display: inline-block;
	margin: 20px;
}
.post-title-main {
        display: block;
        font-size: 15px;
        margin-bottom: 0;
        line-height: 1.1;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms; }
#back {
	position: absolute;
	top: 150px;
	left: 0;
	cursor: pointer;
	z-index: 10;
}

#next {
	position: absolute;
	top: 150px;
	right: 0;
	cursor: pointer;
	z-index: 10;
}
</style>
</head>
<body>
	<div class="slide">
		<div class="post-catagory section-padding-100">
			<img id="back" src="../style/img/core-img/left.png" alt="" width="50">
			<div class="container">
				<ul>
					<c:forEach var="vo" items="${list }">
						<li>
							<div class="single-post-catagory mb-30">
								<img src="${vo.poster }" alt=""
									style="width: 300px; height: 300px;">
								<div class="catagory-content-bg">
									<div class="catagory-content">
										<a href="#" class="post-tag">${vo.mem_id }</a> <a
											href="../recipe/detail_before.do?recipe_no=${vo.recipe_no }"
											class="post-title-main"> <c:choose>
												<c:when test="${fn:length(vo.title) gt 20}">
													<c:out value="${fn:substring(vo.title, 0, 25)}" />...
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
						</li>
					</c:forEach>
				</ul>
			</div>
			<img id="next" src="../style/img/core-img/right.png" alt="" width="50">
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		var imgs;
		var img_count;
		var img_position = 1;

		imgs = $(".slide ul");
		img_count = imgs.children().length;

		//버튼을 클릭했을 때 함수 실행
		$('#back').click(function() {
			if (img_position <= 1)
				end();
			else
				back();
		});
		$('#next').click(function() {
			if (img_position >= img_count)
				start();
			else
				next();
		});

		function back() {
			if (1 < img_position) {
				imgs.animate({
					left : '+=340px'
				});
				img_position--;
			}
		}
		function next() {
			if (img_count > img_position) {
				imgs.animate({
					left : '-=340px'
				});
				img_position++;
			}
		}
		//이미지 끝까지 가면 버튼 사라지기
		//첫 이미지로 돌아오기
		function end() {
			img.animate
		}
		function start() {

		}
	});
</script>
</html>