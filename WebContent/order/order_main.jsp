<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/*$(function() {
		$('.sum_p_price').change(function(){
			let sum_p_price = $(this).val();
			
		})
		$('.sum_p_price_pp').change(function(){
			let sum_p_price_pp = $(this).val();
			
		})
		
	});*/
	//이벤트 리스너 등록
	document.addEventListener('DOMContentLoaded', function() {

		// 수량변경 - 이벤트 델리게이션으로 이벤트 종류 구분해 처리
		document.querySelectorAll('.updown').forEach(function(item, idx) {
			//수량 입력 필드 값 변경
			item.querySelector('input').addEventListener('keyup', function() {
				basket.changePNum(idx + 1);
			});
			//수량 증가 화살표 클릭
			item.children[1].addEventListener('click', function() {
				basket.changePNum(idx + 1);
			});
			//수량 감소 화살표 클릭
			item.children[2].addEventListener('click', function() {
				basket.changePNum(idx + 1);
			});
		});
		//앵커 # 대체해 스크롤 탑 차단
		document.querySelectorAll('a[href="#"]').forEach(function(item) {
			item.setAttribute('href', 'javascript:void(0)');
		});
	});

	//basket 객체 생성
	let basket = {
		totalCount : 0, //전체 갯수 변수
		totalPrice : 0, //전체 합계액 변수
		totalPricepp : 0, // 배송비 추가 변수
		//재계산
		reCalc : function() {
			this.totalCount = 0;
			this.totalPrice = 0;
			this.totalPricepp = 0;
			document
					.querySelectorAll(".p_num")
					.forEach(
							function(item) {
								var count = parseInt(item.getAttribute('value'));
								this.totalCount += count;
								var price = item.parentElement.parentElement.previousElementSibling.lastChild
										.getAttribute('value');
								this.totalPrice += count * price;
								this.totalPricepp = this.totalPrice + 2500;
							}, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
							
			//document.getElementById('#Price_to').value=this.totalPrice;	
			//document.getElementById('#totalPrice_to').setAttribute('value', this.totalPricepp);
		},
		//화면 업데이트
		updateUI : function() {
			document.querySelector('#sum_p_price').textContent = this.totalPrice;
			document.querySelector('#sum_p_price_pp').textContent = this.totalPricepp
					+ '원';
		},
		//개별 수량 변경
		changePNum : function(pos) {
			var item = document.querySelector('input[name=p_num' + pos + ']');
			var p_num = parseInt(item.getAttribute('value'));
			var newval = event.target.classList.contains('up') ? p_num + 1
					: event.target.classList.contains('down') ? p_num - 1
							: event.target.value;
			if (parseInt(newval) < 1 || parseInt(newval) > 99) {
				return false;
			}

			item.setAttribute('value', newval);
			item.value = newval;
			var price = item.parentElement.parentElement.previousElementSibling.lastChild
					.getAttribute('value');
			item.parentElement.parentElement.nextElementSibling.textContent = (newval * price)
					+ "원";
			//AJAX 업데이트 전송

			//전송 처리 결과가 성공이면    
			this.reCalc();
			this.updateUI();
		}

	}
</script>
<style type="text/css">
a:hover, input {
	font-weight: 600;
	font-size: 13px;
}

.updateBtn {
	width: 70px;
	background-color: #81c147;
	border: none;
	color: #fff;
	padding: 4px 0;
	text-align: center;
	display: inline-block;
	font-size: 13px;
	margin: 4px;
	cursor: pointer;
	border-radius: 5px
}

.updown img {
	width: 10px;
	cursor: pointer;
	margin: 3px;
}
</style>
</head>
<body>
	<div class="container">
		<c:set var="j" value="0" />
		<h4>주문 상품</h4>
		<!-- 주문할 상품목록 출력 -->

		<table class="table">
			<thead>
				<th>상품이미지</th>
				<th>상품정보</th>
				<th>판매가</th>
				<th>수량</th>
				<th>합계</th>
				<th></th>
			</thead>
			<c:set var="i" value="0"/>
			<c:forEach var="vo" items="${dlist }">
				<c:set var="i" value="${i+1 }"/>
				<tr height="110px">
					<td width=10% class="text-center"><img src="${vo.main_img }"
						width="100px" height="100px"></td>
					<td width="40%"><a
						href="../Product/detail_before.do?no=${vo.product_no }">${vo.name }</a></td>
					<!-- 상품가격 -->
					<td width="12%" valign="top" class="price"><div
							value="${vo.price }">${vo.price }원</div></td>
					<!-- 수량변경 -->
					<td width="15"><div class="updown">
							<input type="text" name="p_num${i }" id="p_num${i }" size="2"
								class="p_num" value="1"><img class="up"
								src="../style/img/core-img/up.png"><img class="down"
								src="../style/img/core-img/down.png">
						</div></td>
					<!-- 수량*가격 -->
					<td width="13%">${vo.price }원</td>
					<!-- 장바구니에서 삭제 -->
					<td width=10% class="text-left"><a
						href="../Product/product_keep_cancel.do?no=${vo.kno }"
						class="updateBtn">삭제</a></td>
					<c:set var="j" value="${j+vo.price }" />
				</tr>
			</c:forEach>
		</table>

		<form method="post" action="../order/order_main.do" name="orderFrm"
			id="orderFrm">
			<table class="table tbupdate">
				<tr>
					<td width="40%" class="text-right"><h4>
							<input type="hidden" name="price_to" id="price_to" value="0">
							<div id="sum_p_price" name="sum_p_price">${j }</div>
						</h4></td>
					<td width="5%"><h4>+</h4></td>
					<td width="15%" class="text-center"><h4>2500(배송비)</h4></td>
					<td width="5%"><h4>=</h4></td>
					<td width="15%" class="text-center"><h4>
							<input type="hidden" id="totalPrice_to" value="">
							<div id="sum_p_price_pp" name="sum_p_price_pp">${j+2500 }원</div>
						</h4></td>
					<td width="20%"><input type=submit value="결제하기"
						class="updateBtn" id="orderBtn"> <input type=button
						value="결제 취소" class="updateBtn"
						onclick="javascript:history.back()"></td>
				</tr>
			</table>
		</form>

	</div>

</body>
</html>