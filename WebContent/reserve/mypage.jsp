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
  text-align: left;
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
.updateBtn {
    width:70px;
    background-color: #81c147;
    border: none;
    color:#fff;
    padding: 4px 0;
    text-align: center;
    display: inline-block;
    font-size: 13px;
    margin: 4px;
    cursor: pointer;
    border-radius: 5px
}
</style>
<script type="text/javascript"
src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
function postfind() {
	new daum.Postcode({
		oncomplete : function(data) {
			$('#post').val(data.zonecode);
			$('#addr1').val(data.address);
		}
	}).open();
}

$(function() {
	$('#updateBtn').click(function() {

		let pwd = $('#pwd').val();
		if (pwd.trim() == "") {
			alert("비밀번호를 입력하세요");
			$('#pwd').focus();
			return;
		}

		let pwd1 = $('#pwd1').val();
		if (pwd1.trim() == "") {
			alert("비밀번호를 입력하세요");
			$('#pwd1').focus();
			return;
		}

		if (pwd !== pwd1) {
			alert("비밀번호가 일치하지 않습니다");
			$('#pwd1').val("");
			$('#pwd1').focus();
			return;
		}

		let name = $('#name').val();
		if (name.trim() == "") {
			alert("이름을 입력하세요");
			$('#name').focus();
			return;
		}

		let addr = $('#addr').val();
		if (addr.trim() == "") {
			alert("주소를 입력하세요");
			$('#addr').focus();
			return;
		}

		let tel = $('#tel').val();
		if (tel.trim() == "") {
			alert("전화번호를 입력하세요");
			$('#tel').focus();
			return;
		}
		
	});
});
</script>
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
						<!-- 테이블장소 -->
						    <caption>예매목록</caption>
						  <table class="table">
						    <tr>
						      <td>
						        <table class="table table-striped">
						          <tr class="danger">
						           <th class="text-center">예약번호</th>
						           <th class="text-center"></th>
						           <th class="text-center">식당</th>
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
							             <img src="${vo.resvo.rest_poster }" width=30 height=30>
							           </td>
							           <td class="text-center">${vo.resvo.rest_name }</td>
							           <td class="text-center">${vo.theater }</td>
							           <td class="text-center">${vo.time }</td>
							           <td class="text-center">${vo.people }</td>
							           <td class="text-center">${vo.price }</td>
							           <td class="text-center">
							             <c:if test="${vo.isreserve=='1' }">
							              <a href="#" class="btn btn-sm btn-primary">예매완료</a>
							             </c:if>
							             <c:if test="${vo.isreserve=='0' }">
							              <span class="btn btn-sm btn-danger">예매대기</span>
							             </c:if>
							           </td>
						            </tr>
						          </c:forEach>
						        </table>
						      </td>
						    </tr>
						  </table>
					</div>
		           </div>
		       </div>
		      <div style="height: 30px"></div>
		      <div class="tab-pane" id="member"> <!-- 내 정보 수정 -->
		      <div class="row">
			  <div class="input-group">
		       <form method=post action="../member/update_ok.do" name="updateFrm" id="updateFrm">
				<table class="table">
				 
					<tr>
						<th class="text-right danger" width="30%">아이디 <img src="ico_required.gif"></th>
						<td width=70%>${dvo.mem_id }</td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">비밀번호 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=password name=pwd class="input-sm" size=15  id="pwd"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">비밀번호 확인 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=password name=pwd class="input-sm" size=15  id="pwd"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">이름 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=text name=name class="input-sm" size=15 value="${dvo.name }"  id="name"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">이메일</th>
						<td width=70%><input type=text name=email class="input-sm" size=45 value="${dvo.email }" id="email"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">생년월일</th>
						<td width=70%>${dvo.birth }</td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">주소 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=text name=addr class="input-sm" size=45 value="${dvo.address }" id="addr"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">전화번호 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=text name=tel class="input-sm" size=7 value="${dvo.tel }" id=tel></td>
					</tr>
					
					<tr>
						<td colspan="2" class="text-center"><input type=submit value="수정" class="updateBtn" id="updateBtn">
							<input type=button value="취소" class="updateBtn" onclick="javascript:history.back()"></td>
					</tr>
				</table>
			</form>
			</div>
		    </div>
		    </div>
		    <div style="height: 30px"></div>
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
						                 <a href="../Product/product_keep_cancel.do?no=${vo.kno }" class="btn btn-sm btn-danger">취소</a>
						                 <a href="#" class="btn btn-sm btn-success">결제하기</a>
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
						                 <a href="../Product/like_cancel.do?no=${vo.lpno }" class="btn btn-sm btn-danger">취소</a>
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
						            <td width=70% valign="top">${vo.rest_content}&emsp;${vo.rest_price }</td>
						            </tr>
						            <tr>
						               <td width=70% class="text-right">
						                 <a href="../restaurant/like_cancel.do?no=${vo.lrsno }" class="btn btn-sm btn-danger">취소</a>
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
						                 <a href="../recipe/like_cancel.do?no=${vo.lrcno }" class="btn btn-sm btn-danger">취소</a>
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