<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSAMZO</title>
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

        <!-- Logo Area -->
        <div class="logo-area">
            <a href="#"><img src="../style/img/core-img/logo.png" alt=""></a>
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
                            <div class="classynav text-center">
                                <ul>
<<<<<<< HEAD
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Restaurant</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Catagory</a></li>
=======
                                    <li><a href="../main/main.do">Home</a></li>
                                    <li><a href="../recipe/total.do">recipe</a></li>
                                    <li><a href="../restaurant/restaurant_main.do">Restaurant</a>
                                       <!--  <ul class="dropdown">
                                            <li><a href="../restaurant/restaurant_main.do">Catagory</a></li>
>>>>>>> branch 'master' of https://github.com/sist-jeongwon/project1.git
                                            <li><a href="#">reservation</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Product</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Catagory</a></li>
                                        </ul>
                                    </li>
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
                               <c:if test="${sessionScope.id==null }">
                                <div class="login-area">
                                    <a href="../member/login_main.do">Login</a>&nbsp;/&nbsp;<a href="../member/join.do">Join</a>
                                </div>
                               </c:if> 
                               <c:if test="${sessionScope.id!=null }">
	 							 <form action="../member/logout.do"><%-- get(생략이 가능) --%>
	    							<div class="text-right">
	     								 ${sessionScope.name }(${sessionScope.admin==1?'관리자':'일반유저' })님 환영합니다.
	      							<button class="btn btn-danger btn-sm">로그아웃</button>
	    							</div>
	  							</form>
  								</c:if>
  								</div>
                            <!-- Nav End -->
								
                        </div>
                    </nav>
                </div>
            </div>
        </div>s
    </header>
    <!-- ##### Header Area End ##### -->
</body>
</html>