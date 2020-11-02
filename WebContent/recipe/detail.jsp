<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                            <h4 class="post-title">${vo.title }</h4>
                            <div class="post-meta mb-50">
                                	<fmt:formatDate pattern="yyyy-MM-dd" value="${vo.recipe_date }"/> / 
                          	<span style="color:#B0C364; font-weight:bold;">${vo.mem_id }</span>
                                
                            </div>
                           <!-- 
                            <c:forEach var="content" items="${contents }">
                            <p>${contents }</p>
                            </c:forEach>
                             --> 
                             <c:forTokens var="item" items="${vo.content}" delims="|" varStatus="status">
								    <span style="color:#B0C364; font-weight:bold; font-size:20px;">${status.count}.</span> <p class="mb-30">${item} </p>
							</c:forTokens>
							

                        </div>
                    </div>
                </div>

                <div class="col-12 col-lg-4 col-xl-4">
                   

                    <!-- Ingredients -->
                    <div class="ingredients">
                        <h5>Ingredients</h5>

 						<c:forEach items="${fn:split(vo.ingredient, ',') }" var="item">
                            	  <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                            <label class="custom-control-label" for="customCheck1">${item}</label>
                        </div>
							</c:forEach>
                        

                    </div>
                </div>
</body>
</html>