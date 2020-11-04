<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* Profile container */
.profile {
  margin: 20px 0;
}
/* Profile sidebar */
.profile-sidebar {
  padding: 20px 0 10px 0;
  background: #fff;
}
.profile-userpic img {
  float: none;
  margin: 0 auto;
  width: 50%;
  height: 50%;
  -webkit-border-radius: 50% !important;
  -moz-border-radius: 50% !important;
  border-radius: 50% !important;
}
.profile-usertitle {
  text-align: center;
  margin-top: 20px;
}
.profile-usertitle-name {
  color: #5a7391;
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 7px;
}
.profile-usertitle-job {
  text-transform: uppercase;
  color: #5b9bd1;
  font-size: 12px;
  font-weight: 600;
  margin-bottom: 15px;
}
.profile-usermenu {
  margin-top: 30px;
  height:300px;
  }
.profile-usermenu ul
{
   display: block;
}
/*메뉴간격*/
.profile-usermenu ul li {
  border-bottom: 1px solid #f0f4f7;
  margin-top: 20px; 
}
.profile-usermenu ul li:last-child {
  border-bottom: none;
}
.profile-usermenu ul li a {
  color: #93a3b5;
  font-size: 14px;
  font-weight: 400;
}
.profile-usermenu ul li a i {
  margin-right: 8px;
  font-size: 14px;
}
.profile-usermenu ul li a:hover {
  background-color: #fafcfd;
  color: #5b9bd1;
  
}
.profile-usermenu ul li.active {
  border-bottom: none;
}
.profile-usermenu ul li.active a {
  color: #5b9bd1;
  background-color: #f6f9fb;
  border-left: 2px solid #5b9bd1;
  margin-left: -2px;
}
</style>
</head>
<body>
<div class="container">
 <div class="row">
	    <div class="col-md-3">
	      <div class="profile">
	         <div class="profile-sidebar">
	            <div class="profile-userpic">
					<img src="https://previews.123rf.com/images/marucyan/marucyan1210/marucyan121000033/16019619-%EC%83%88%EC%8B%B9.jpg" class="img-responsive" alt="">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						MYPAGE
					</div>
					<div class="profile-usertitle-job">
						${sessionScope.name }(${sessionScope.admin=='1'?'관리자':'일반유저' })님 환영합니다
					</div>
				</div>
	        </div>
			<!-- menu -->
			
								<div class="profile-usermenu">
									<ul class="nav">
						<li><a href="#orderlist" data-toggle="tab">주문조회</a></li>
			            <li><a href="#reservationlist" data-toggle="tab">예약확인</a></li>
			            <li><a href="#member" data-toggle="tab">내 정보 수정</a></li>
			            <li><a href="#cart" data-toggle="tab">장바구니</a></li>
			            <li><a href="#likelist" data-toggle="tab">찜목록</a></li>
			            <li><a href="#q&alist" data-toggle="tab">1:1문의</a></li>
					</ul>
								</div>
								
								</div>
    </div><!-- col-md-3 -->
    
	    <!--   SIDEBAR BUTTONS   -->
		<div class="col-md-9">
      <div class="profile-container">
		  <div class="tab-content">
		      <div class="tab-pane" id="orderlist"> <!-- 주문조회 -->
		           <div class="row">
					<div class="input-group">
						<!-- 테이블장소 -->1
						
					</div>
		           </div>
		       </div>
		       
		      <div class="tab-pane" id="reservationlist"> <!-- 예약확인 -->
		           <div class="row">
					<div class="input-group">
						<!-- 테이블장소 -->2
						<!-- 
						  <table class="table">
						    <caption>예매목록</caption>
						    <tr>
						      <td>
						        <table class="table table-striped">
						          <tr class="danger">
						           <th class="text-center">예약번호</th>
						           <th class="text-center"></th>
						           <th class="text-center">식당이름</th>
						           <th class="text-center">장소</th>
						           <th class="text-center">예약일</th>
						           <th class="text-center">인원</th>
						           <th class="text-center">금액</th>
						           <th class="text-center"></th>
						          </tr>
						          <c:forEach var="vo" items="${list }">
						            <tr>
						               <td class="text-center">${vo.rest_no }</td>
							           <td class="text-center">
							             <img src="${vo.mvo.poster }" width=30 height=30>
							           </td>
							           <td class="text-center">${vo.rest_vo.rest_name }</td>
							           <td class="text-center">${vo.theater }</td>
							           <td class="text-center">${vo.time }</td>
							           <td class="text-center">${vo.people }</td>
							           <td class="text-center">${vo.price }</td>
							           <td class="text-center">
							             <c:if test="${vo.isreserve=='0' }">
							              <a href="#" class="btn btn-sm btn-primary">예매완료</a>
							             </c:if>
							             <c:if test="${vo.isreserve=='1' }">
							              <span class="btn btn-sm btn-danger">예매대기</span>
							             </c:if>
							           </td>
						            </tr>
						          </c:forEach>
						        </table>
						      </td>
						    </tr>
						  </table>
						   -->
					</div>
		           </div>
		       </div>
		       
		      <div class="tab-pane" id="member"> <!-- 내 정보 수정 -->
		           <div class="row">
					<div class="input-group">
						<!-- 테이블장소 -->3
						
					</div>
		           </div>
		       </div>
		       
		      <div class="tab-pane" id="cart"> <!-- 장바구니 -->
		           <div class="row">
					<div class="input-group">
						<!-- 테이블장소 -->
						    <caption>장바구니</caption>
						<table class="table">
						    <tr>
						      <td>
						        <c:forEach var="vo" items="${p1List }">
						          <table class="table">
						            <tr>
						              <td width=30% class="text-center" rowspan="3">
						               <img src="${vo.main_img }" width=200 height=150>
						              </td>
						              <td width=70%>${vo.name }</td>
						            </tr>
						            <tr>
						               <td width=70% valign="top">${vo.price }</td>
						            </tr>
						            <tr>
						               <td width=70% class="text-right">
						                 <a href="../product/product_keep_cancel.do?no=${vo.kno }" class="btn btn-sm btn-danger">취소</a>
						                 <a href="../product/product_keep_cancel.do?no=${vo.kno }" class="btn btn-sm btn-success">결제하기</a>
						               </td>
						            </tr>
						          </table>
						        </c:forEach>
						      </td>
						    </tr>
						  </table>
					</div>
		           </div>
		       </div>
		       
		      <div class="tab-pane" id="likelist"> <!-- 찜목록 -->
		           <div class="row">
					<div class="input-group">
						<!-- 테이블장소 -->
						    <caption>상품찜 목록</caption> <!--  -->
						<table class="table">
						    <tr>
						      <td>
						        <c:forEach var="vo" items="${p2List }">
						          <table class="table">
						            <tr>
						              <td width=30% class="text-center" rowspan="3">
						               <img src="${vo.main_img }" width=200 height=150>
						              </td>
						              <td width=70%>${vo.name }</td>
						            </tr>
						            <tr>
						               <td width=70% valign="top">${vo.price }</td>
						            </tr>
						            <tr>
						               <td width=70% class="text-right">
						                 <a href="../product/product_keep_cancel.do?no=${vo.lpno }" class="btn btn-sm btn-danger">취소</a>
						               </td>
						            </tr>
						          </table>
						        </c:forEach>
						      </td>
						    </tr>
						  </table>

						    <caption>맛집찜 목록</caption> <!--  -->
						<table class="table">
						    <tr>
						      <td>
						        <c:forEach var="vo" items="${lrList }">
						          <table class="table">
						            <tr>
						              <td width=30% class="text-center" rowspan="3">
						               <img src="${vo.rest_poster }" width=200 height=150>
						              </td>
						              <td width=70%>${vo.rest_name }</td>
						            </tr>
						            <tr>
						               <td width=70% valign="top">${rest_content }</td>
						            </tr>
						            <tr>
						               <td width=70% class="text-right">
						                 <a href="../product/product_keep_cancel.do?no=${vo.lrsno }" class="btn btn-sm btn-danger">취소</a>
						               </td>
						            </tr>
						          </table>
						        </c:forEach>
						      </td>
						    </tr>
						  </table>

						    <caption>레시피찜 목록</caption> <!--  -->
						<table class="table">
						    <tr>
						      <td>
						        <c:forEach var="vo" items="${lcList }">
						          <table class="table">
						            <tr>
						              <td width=30% class="text-center" rowspan="3">
						               <img src="${vo.poster }" width=200 height=150>
						              </td>
						              <td width=70%>${vo.title }</td>
						            </tr>
						            <tr>
						               <td width=70% valign="top">${vo.content }</td>
						            </tr>
						            <tr>
						               <td width=70% class="text-right">
						                 <a href="../product/product_keep_cancel.do?no=${vo.lrcno }" class="btn btn-sm btn-danger">취소</a>
						               </td>
						            </tr>
						          </table>
						        </c:forEach>
						      </td>
						    </tr>
						  </table>
						
					</div>
		           </div>
		       </div>
		       
		      <div class="tab-pane" id="q&alist"> <!-- 1:1문의 -->
		           <div class="row">
					<div class="input-group">
						<!-- 테이블장소 -->6
						
					</div>
		           </div>
		       </div>
		       
		       
		     
		    </div>
		</div>
	</div>
</div>
</div>
</body>
</html>