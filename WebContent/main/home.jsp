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

.main-section {
	width: 1140px;
	position: relative;
	margin: auto;
}

.main-section p {
	font-size: 17px;
}

.main-section img {
	margin: 20px;
	max-width: 55%;
}

.main-section p strong {
	font-size: 1.2em;
	color: rgb(112, 173, 71);
}

#sec1 {
	height: 350px;
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
	transition-duration: 500ms;
}

#back {
	color: white;
	position: absolute;
	top: 150px;
	left: 0;
	cursor: pointer;
	z-index: 10;
	position: absolute;
}

#next {
	color: white;
	position: absolute;
	top: 150px;
	right: 0;
	cursor: pointer;
	z-index: 10;
}
</style>
</head>
<body>
	<div class="main-section" id="sec1">
		<div class="text-center">
			<img src="../style/img/core-img/section_title_1.png"
				alt="채소 한끼, 최소 한끼로 지구를 지켜주세요!">
		</div>
		<div>
			<p>
				<strong>육식으로 인해 기후변화가 가속화되고 있다는 것을 알고 계셨나요?</strong> <br>육류 생산
				과정에서 발생하는 탄소 배출은 모든 교통수단을 합친 것보다 많습니다. <br>고기 소비가 계속 늘어나면서 숲이
				파괴되고 토양과 물, 대기 오염문제까지 발생하고 있으며, 대규모 공장식 가축 사육으로 동물들은 고통받고 있습니다.
			</p>
		</div>
	</div>
	<div class="main-section" id="sec2">
		<div class="text-center">
			<img src="../style/img/core-img/section_title_2.png"
				alt="육식에 대한 불편한 진실">
		</div>
		<div>
			<p>공장식 축산 과정에서 전염병을 막기 위해 많은 양의 항생제가 사용됩니다. 농장에서 사육되는 동물들은 살충제와
				화학비료로 키운 사료를 먹습니다. 대규모 공장식 축산은 탄소배출이나 환경오염 등의 문제를 일으키는 것은 물론, 우리의
				건강을 위협하고 있습니다.</p>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12 col-sm-6 col-lg-4">
				<img margin-left="20px" src="../style/img/core-img/problem1.png">
				<p>육류 과다 섭취는 당뇨, 동맥경화, 심혈관 질환은 물론 암 등 치명적인 질병의 원인이 되기도 합니다. 식물성
					위주의 식단은 제2형 당뇨병 발생 위험을 40% 줄일 수 있다고 합니다.</p>
			</div>
			<div class="col-12 col-sm-6 col-lg-4">
				<img src="../style/img/core-img/problem2.png">
				<p>1960년에서 2011년까지 50년 동안, 전세계 전환된 토지의 65%가 축산업을 위한 개간이었습니다.
					계속해서 늘어나는 가축들의 사료를 마련하기 위해, 지금도 생물다양성이 풍부한 숲이 베어져나가고 있습니다.</p>
			</div>
			<div class="col-12 col-sm-6 col-lg-4">
				<img src="../style/img/core-img/problem3.png">
				<p>대규모 산업식 축산은 이윤추구를 위해 가능한 한 빨리 동물을 키우고 도살하는 시스템을 만들었습니다. 이로 인해
					동물들은 살아있는 동안은 엄청난 고통을 겪다 무참히 도살 당하고 있습니다.</p>
			</div>
		</div>

		<div class="row">
			<div class="col-12 col-sm-6 col-lg-4">
				<img src="../style/img/core-img/problem4.png">
				<p>현재 축산업으로 인한 온실가스 배출량은 전체의 14%를 차지하고 있습니다. 이대로 방치한다면 2050년까지
					육식으로 인한 탄소배출량은 전체 배출량의 절반 이상을 차지하게 될 것입니다.</p>
			</div>
			<div class="col-12 col-sm-6 col-lg-4">
				<img src="../style/img/core-img/problem5.png">
				<p>가축 사육은 엄청난 양의 물을 사용할 뿐 아니라 수질 오염의 원인 중 하나입니다. 축산업으로 인한 물 사용은
					전체 농업에서 사용하는 양의 29%를 차지합니다. 대규모 산업식 축산 농장에서 사용하는 화학비료, 살충제, 가축을 위한
					약품들은 물과 토양을 오염시키고 결국 우리의 식탁으로 돌아와 건강을 위협합니다.</p>
			</div>
		</div>
	</div>

	<div class="slide">
		<div class="post-catagory">
			<img id="back" src="../style/img/core-img/left.png" alt="" width="50">
			<div class="container">
				<ul>
					<c:forEach var="vo" items="${list }">
						<li>
							<div class="single-post-catagory">
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
			<img id="next" src="../style/img/core-img/right.png" alt=""
				width="50">
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
			if (img_position < 1)
				stop();
			else
				back();
		});
		$('#next').click(function() {
			if (img_position > (img_count - 3))
				stop();
			else
				next();
		});

		function back() {
			if (1 < img_position) {
				imgs.animate({
					left : '+=1020px'
				});
				img_position -= 4;
			}
		}
		function next() {
			if (img_count > img_position) {
				imgs.animate({
					left : '-=1020px'
				});
				img_position += 4;
			}
		}
		//이미지 끝까지 가면 버튼 사라지기
		function stop() {
		}
	});
</script>
</html>