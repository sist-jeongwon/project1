<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>veginner</title>
</head>
<body>
 <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header-area bg-img bg-overlay">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-between">
                   <div class="col-12 col-sm-6">
                   <!-- SNS 아이콘 있던 부분 -->
                   </div>
                    <div class="col-12 col-sm-6 col-lg-5 col-xl-4">
                        <!-- Top Search Area -->
                        <div class="top-search-area">
                            <form action="#" method="post">
                                <input type="search" name="top-search" id="topSearch" placeholder="Search">
                                <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Logo Area 패딩 거의 삭제했고 이미지 크기 조정하여 헤더 로고 사이즈 조정할 수 있습니다-->
        <div class="logo-area">
            <a href="../main/main.do"><img src="../style/img/core-img/logo.png" width="456px" height="250px"></a>
        </div>

        <!-- Navbar Area -->
        <div class="bueno-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="buenoNav">

                        <!-- Toggler -->
                        <!-- <div id="toggler"><img src="../img/core-img/toggler.png" alt=""></div> -->

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="../main/main.do">Home</a></li>
                                    <li><a href="../recipe/total.do">recipe</a></li>
                                    <li><a href="../restaurant/restaurant_main.do">Restaurant</a>
                                       <!--  <ul class="dropdown">
                                            <li><a href="../restaurant/restaurant_main.do">Catagory</a></li>
                                            <li><a href="#">reservation</a></li>
                                        </ul> -->
                                    </li>
                                    <li><a href="../Product/Product_main.do">Product</a></li>
                                    <!--  현재 사용하지 않아 주석처리(필요시 사용)
                                    <li><a href="#">Recipes</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">- Recipe</a></li>
                                                <li><a href="#">- Bread</a></li>
                                                <li><a href="#">- Breakfast</a></li>
                                                <li><a href="#">- Meat</a></li>
                                                <li><a href="#">- Fastfood</a></li>
                                                <li><a href="#">- Salad</a></li>
                                                <li><a href="#">- Soup</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    -->
                                    <li><a href="#">MyPage</a></li>
                                </ul>

                                <!-- Login/Register -->
                                <div class="login-area">
                                    <a href="../member/login_main.do">Login</a>&nbsp;/&nbsp;<a href="../member/join.do">Join</a>
                                </div>
                            </div>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
</body>
</html>