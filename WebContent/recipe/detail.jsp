<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bueno - Food Blog HTML Template</title>
   <link rel="icon" href="img/core-img/favicon.ico">
   <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- ##### Post Details Area Start ##### -->
    <section class="post-news-area section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Post Details Content Area -->
                <div class="col-12 col-lg-4 col-xl-5">
                    <div class="post-details-content mb-100">
                        <div class="blog-thumbnail mb-50">
                            <img src="${vo.poster }" alt="">
                        </div>
                        <div class="blog-content">
                            <a href="#" class="post-tag">${vo.mem_id }</a>
                            <h4 class="post-title">${vo.title }</h4>
                            <div class="post-meta mb-50">
                                <a href="#" class="post-date">
                                	<fmt:formatDate pattern="yyyy-MM-dd" value="${vo.recipe_date }"/>
                                </a>
                            </div>
                           <!-- 
                            <c:forEach var="content" items="${contents }">
                            <p>${contents }</p>
                            </c:forEach>
                             --> 
                            <h5 class="mb-30">Step 1</h5>
                            <p class="mb-30">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tristique justo id elit bibendum pharetra non vitae lectus. Mauris libero felis, dapibus a ultrices sed, commodo vitae odio. Sed auctor tellus quis arcu tempus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac tincidunt nunc. Cras sed mollis erat. Quisque risus lorem, mattis nec nisl a, efficitur faucibus ligula. Nulla facilisi. Integer sodales, metus nec finibus lobortis, ex justo pharetra quam, vel vehicula urna turpis ut risus. Sed dignissim erat sapien, non malesuada justo cursus nec. Nunc porta pulvinar varius.</p>

                            <h5 class="mb-30">Step 2</h5>
                            <p class="mb-30">Suspendisse nisl leo, gravida quis tortor at, ornare commodo neque. Donec tortor turpis, pharetra et pulvinar vitae, ullamcorper et mi. Sed eu magna aliquam, suscipit massa sit amet, mattis augue. Nam ut tortor ut ligula molestie feugiat vitae et nulla. Sed porta erat vitae leo pellentesque malesuada. In sollicitudin, massa euismod aliquet volutpat, enim metus varius dui, vestibulum efficitur ante velit non nisi. Cras varius bibendum sapien, id tincidunt velit placerat id. Nunc vitae facilisis nunc. Suspendisse ut felis sagittis mauris faucibus tincidunt vitae id tortor. Nullam tincidunt finibus turpis, a accumsan mauris laoreet cursus. Phasellus pharetra odio sapien, id suscipit nisi lobortis ut.</p>

                            <h5 class="mb-30">Step 3</h5>
                            <p class="mb-30">Duis posuere odio vitae neque egestas luctus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer risus neque, sollicitudin pharetra pulvinar a, imperdiet porttitor nunc. Aenean pretium, libero eu pulvinar commodo, lorem enim bibendum est, vel suscipit est mi non tortor. Vestibulum sit amet pretium tortor. Donec posuere, dui quis dictum hendrerit, odio mauris aliquam lacus, eu egestas libero risus vel nisi. Proin condimentum varius lectus sed dapibus.</p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-4 col-xl-4">
                    <!-- Info -->
                    <div class="recipe-info">
                        <h5>Info</h5>
                        <ul class="info-data">
                            <li><img src="img/core-img/eye.png" alt=""> <span>1,577 Views</span></li>
                            <li><img src="img/core-img/alarm-clock.png" alt=""> <span>30 min</span></li>
                            <li><img src="img/core-img/tray.png" alt=""> <span>Serves 4</span></li>
                            <li><img src="img/core-img/sandwich.png" alt=""> <span>Easy</span></li>
                            <li><img src="img/core-img/compass.png" alt=""> <span>200F</span></li>
                        </ul>
                    </div>

                    <!-- Ingredients -->
                    <div class="ingredients">
                        <h5>Ingredients</h5>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">4 Tbsp (57 gr) butter</label>
                        </div>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                            <label class="custom-control-label" for="customCheck2">2 large eggs</label>
                        </div>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                            <label class="custom-control-label" for="customCheck3">2 yogurt containers granulated sugar</label>
                        </div>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                            <label class="custom-control-label" for="customCheck4">1 vanilla or plain yogurt, 170g container</label>
                        </div>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck5">
                            <label class="custom-control-label" for="customCheck5">2 yogurt containers unbleached white flour</label>
                        </div>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck6">
                            <label class="custom-control-label" for="customCheck6">1.5 yogurt containers milk</label>
                        </div>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck7">
                            <label class="custom-control-label" for="customCheck7">1/4 tsp cinnamon</label>
                        </div>

                        <!-- Custom Checkbox -->
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck8">
                            <label class="custom-control-label" for="customCheck8">1 cup fresh blueberries </label>
                        </div>
                    </div>
                </div>
</body>
</html>