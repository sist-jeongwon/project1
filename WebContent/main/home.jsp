<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
	margin:10px;
}

.main-section img {
	margin: 20px;
	max-width: 55%;
}

.main-section p strong {
	font-size: 1.2em;
	color: rgb(112, 173, 71);
}
#bgset{
	background-color: rgb(112, 173, 71);
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
	 <!-- ##### Treading Post Area Start ##### -->
    <div class="treading-post-area" id="treadingPost">
        <div class="close-icon">
            <i class="fa fa-times"></i>
        </div>

        <h4>Treading Post</h4>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="img/bg-img/9.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Friend eggs with ham</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="img/bg-img/10.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Mushrooms with pork chop</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="img/bg-img/11.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Birthday cake with chocolate</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="img/bg-img/9.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Friend eggs with ham</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="img/bg-img/10.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Mushrooms with pork chop</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
            <!-- Blog Thumbnail -->
            <div class="blog-thumbnail">
                <img src="img/bg-img/11.jpg" alt="">
            </div>
            <!-- Blog Content -->
            <div class="blog-content">
                <a href="#" class="post-tag">The Best</a>
                <a href="#" class="post-title">Birthday cake with chocolate</a>
                <div class="post-meta">
                    <a href="#" class="post-date">July 11, 2018</a>
                    <a href="#" class="post-author">By Julia Stiles</a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Treading Post Area End ##### -->

    
<div class="instagram-feed-area d-flex flex-wrap">
		<img src="../style/img/bg-img/112.jpg" alt="">

	</div>
	<div class="instagram-feed-area d-flex flex-wrap">
		<img src="../style/img/bg-img/bean.jpg" alt="">

	</div>

    <!-- ##### Big Posts Area Start ##### -->
    <div class="big-posts-area mb-50">
        <div class="container">
            <!-- Single Big Post Area -->
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50"><!-- ../style/img/core-img/section_title_2.png -->
                        <img src="../style/img/bg-img/earth.jpg" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                        <a href="#" class="post-tag">Advantage</a>
                        <a href="#" class="post-title">환경을 지키는 또 하나의 방법</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">2014 02 24</a>
                            <a href="#" class="post-author">By 한국장학재단blog</a>
                        </div>
                        <p>가축이 키워지고 또 그것을 소비하는 일은 생명이 자라나는 일이고, 사람의 당연한 식생활을 하는 일이 환경에 어떤 악영향을 끼치는지 아는 사람은 비교적 적습니다.
전 세계가 소비하는 육류를 생산하기 위해 그만큼 엄청난 수의 가축 사육을 함으로써 엄청난 물 사용량이 야기되고 있고,소고기 1kg을 생산하는데 배출되는 이산화탄소의 양이 농작물을 생산하는데 나오는 이산화탄소의 8배에 달하는 16kg이다.
물과 화석연료 역시 소고기를 생산하는데 필요한 양이 다른 어떤 농작물보다도 월등히 많다.</p>
                        <a href="#" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
            </div>

            <!-- Single Big Post Area -->
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                        <a href="#" class="post-tag">Advantage</a>
                        <a href="#" class="post-title">채식주의자들이 더 건강하게 장수한다</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">2014 02 27</a>
                            <a href="#" class="post-author">By jasonhbae </a>
                        </div>
                        <p>최근의 연구 결과들은 채식주의자들이 그렇지 않은 사람들과 비교할 때 평균적으로 혈압이 더 낮다는 사실을 보고하고 있습니다. 채식 위주의 식단이 당장 혈압을 낮출 필요가 있는 고혈압 환자들에게 효과적이다는 연구 결과도 발표 되고 있습니다.

7만명 이상을 대상으로 벌어진 2013년의 한 연구는 채식주의자들이 그렇지 않은 사람들에 비해 사망 위험율이 12%나 낮다는 사실을 발견했습니다. 동맥 경화를 일으키는 주범인 포화지방과 콜레스트롤 섭취량이 거의 0에 가깝기 때문에 각종 만성 질환을 앓을 확률이 그만큼 감소한 결과입니다.</p>
                        <a href="#" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50">
                        <img src="../style/img/bg-img/health.jpg" alt="">
                    </div>
                </div>
            </div>
            <!-- Single Big Post Area -->
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50"><!-- ../style/img/core-img/section_title_2.png -->
                        <img src="../style/img/bg-img/animal.jpg" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                        <a href="#" class="post-tag">Advantage</a>
                        <a href="#" class="post-title">채식을 통해, 사람은 건강해지고 동물들은 <br>고통에서 해방된다</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">2020 10 26</a>
                            <a href="#" class="post-author">By 채식과 동물권</a>
                        </div>
                        <p>현대인의 육식은, 동물성 음식의 섭취가 인간의 건강에 필수적이라는 잘못된 정보를 기반으로 식용 동물들의 고통을 무의식적으로 외면하면서 행하는 식사 습관입니다. 
수없이 많은 동물들을 고통 속으로 몰아넣으면서도 결국 자신의 신체적·정신적·영적 건강을 해친다는 점에서 대단히 불필요하고 무가치하며 자기파괴적인 행동입니다.
사람들이 완전채식을 하거나 채식 위주의 식생활로 전환하는 만큼 '동물들에 대한 먹거리 상품화'는 줄어들 수밖에 없고 이것은 동물들이 점차 불필요한 고통에서 벗어나는 것, 즉 동물복지의 확대를 의미합니다.
채식은, 사람의 건강을 지키고 동물의 복지를 향상시키기 위한 최선의 방법입니다.</p>
                        <a href="#" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
            </div>
   
    <!-- ##### Big Posts Area End ##### -->
    
    <!-- table -->
<div class="row align-items-center">
                <div>
                <tr>
                <div class="container">
                    <table class="table table-hover">
				    <thead>
				      <tr class="success">
				        <th><font color="#B0C364">채식주의단계</font></th>
				        <th>소/돼지</th>
				        <th>닭</th>
				        <th>생선/조개</th>
				        <th>달걀</th>
				        <th>우유(유제품)</th>
				        <th>채소</th>
				        <th>과일/견과류/곡류</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td class="success"><b>프루테리언</b></td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>O</td>
				      </tr>
				      <tr>
				        <td class="success"><b>비건</b></td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>O</td>
				        <td>O</td>
				      </tr>
				      <tr>
				        <td class="success"><b>락토 베지테리언</b></td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				      </tr>
				      <tr>
				        <td class="success"><b>오보 베지테리언</b></td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>O</td>
				        <td>X</td>
				        <td>O</td>
				        <td>O</td>
				      </tr>
				      <tr>
				        <td class="success"><b>락토-오보베지테리언</b></td>
				        <td>X</td>
				        <td>X</td>
				        <td>X</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				      </tr>
				      <tr>
				        <td class="success"><b>페스코 베지테리언</b></td>
				        <td>X</td>
				        <td>X</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				      </tr>
				      <tr>
				        <td class="success"><b>폴로 베지테리언</b></td>
				        <td>X</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				      </tr>
				      <tr>
				        <td class="success"><b>플렉시테리언</b></td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				        <td>O</td>
				      </tr>
				    </tbody>
				  </table>
				                </div>
				                </tr>
				                </div>
            </div>
     </div>
    </div>
    <!-- table End-->
    


    <!-- ##### Posts Area End ##### -->
    <div class="bueno-post-area mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Post Area -->
                <div class="col-12 col-lg-8 col-xl-9">
                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <img src="../style/img/bg-img/recipe.jpg" alt="">
                        </div>
                        <!-- Blog Content -->
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best Category</a>
                            <a href="../recipe/total.do" class="post-title">Recipe</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">2020 11 09</a>
                                <a href="#" class="post-author">By 정희진</a>
                            </div>
                            <p>쉽고, 맛있고, 영양 가득한 채식 레시피.
고기 없이 할 수 있는 다양한 비건 레시피를 상세하게 찾아보실 수 있습니다.
당신의 식생활을 개선해 주는 채식의 세계로 서서히 안내하겠습니다.</p>
                        </div>
                    </div>

                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <img src="../style/img/bg-img/restaurant.jpg" alt="">
                        </div>
                        <!-- Blog Content -->
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best Category</a>
                            <a href="../restaurant/restaurant_main.do" class="post-title">Restaurant</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">2020 11 09</a>
                                <a href="#" class="post-author">By 강신진</a>
                            </div>
                            <p>전국에 숨겨진 맛집 비건음식점을 소개하겠습니다.<br>
가장 맛있는 제철 채소로 만든 음식을 맛볼 수 있습니다.</p>
                        </div>
                    </div>
                    
                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-1 d-flex flex-wrap mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <img src="../style/img/bg-img/product.jpg" alt="">
                        </div>
                        <!-- Blog Content -->
                        <div class="blog-content">
                            <a href="#" class="post-tag">The Best Category</a>
                            <a href="../Product/Product_main.do" class="post-title">Product</a>
                            <div class="post-meta">
                                <a href="#" class="post-date">2020 11 09</a>
                                <a href="#" class="post-author">By 안준성</a>
                            </div>
                            <p>손안의 작은 마트. 비건 채식 웰빙식품 전문몰.<br>
찾기 힘든 채식 마켓을 집에서 손쉽게 구할 수 있도록 도와드리겠습니다.</p>
                        </div>
                    </div>

                </div>

                <!-- Sidebar Area -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4 col-xl-3">
                    <div class="sidebar-area">
                          
                        <!-- Single Widget Area -->
                        <div class="single-widget-area post-widget">
							<font color="#B0C364">CATEGORY<font> 
                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="../style/img/bg-img/12.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="../recipe/detail.do?no=133" class="post-title">부추두부들깨탕</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">2020 09 11</a>
                                        <a href="#" class="post-author">By 재미마미</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex mb-30">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="../style/img/bg-img/13.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="../restaurant/restaurant_detail.do?rest_no=18" class="post-title">바토스(잠실점)</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">서울시 송파구</a>
                                        <a href="#" class="post-author">남미음식</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="../style/img/bg-img/14.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="../Product/detail.do?no=4" class="post-title">[상온]비건 한입스테이크맛</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">180g</a>
                                        <a href="#" class="post-author">5500원</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="../style/img/bg-img/15.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="../recipe/detail.do?no=135" class="post-title">표고버섯들깨볶음</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">2013 12 03</a>
                                        <a href="#" class="post-author">By 뽕뽕이</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Single Post Area -->
                            <div class="single-post-area d-flex">
                                <!-- Blog Thumbnail -->
                                <div class="blog-thumbnail">
                                    <img src="../style/img/bg-img/16.jpg" alt="">
                                </div>
                                <!-- Blog Content -->
                                <div class="blog-content">
                                    <a href="../Product/detail.do?no=11" class="post-title">쏘이버거</a>
                                    <div class="post-meta">
                                        <a href="#" class="post-date">1kg</a>
                                        <a href="#" class="post-author">17000원</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Posts Area End ##### -->


    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
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