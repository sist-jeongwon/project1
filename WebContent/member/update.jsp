<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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

		let post = $('#post').val();
		if (post.trim() == "") {
			alert("주소를 입력하세요");
			$('#post').focus();
			return;
		}

		let addr1 = $('#addr1').val();
		if (addr1.trim() == "") {
			alert("주소를 입력하세요");
			$('#addr1').focus();
			return;
		}

		let addr2 = $('#addr2').val();
		if (addr2.trim() == "") {
			alert("상세주소를 입력하세요");
			$('#addr2').focus();
			return;
		}

		let tel1 = $('#tel1').val();
		if (tel1.trim() == "") {
			alert("전화번호를 입력하세요");
			$('#tel1').focus();
			return;
		}

		let tel2 = $('#tel2').val();
		if (tel2.trim() == "") {
			alert("전화번호를 입력하세요");
			$('#tel2').focus();
			return;
		}

		let tel3 = $('#tel3').val();
		if (tel3.trim() == "") {
			alert("전화번호를 입력하세요");
			$('#tel3').focus();
			return;
		}

		$('#updateFrm').submit();
	});
});
</script>
</head>
<body>
 <div style="height: 30px"></div>
		      <div class="tab-pane" id="member"> <!-- 내 정보 수정 -->
		      <div class="row">
			  <div class="input-group">
		       <form method=post action="../member/update_ok.do" name="updateFrm" id="updateFrm">
				<table class="table">
					<tr>
						<th class="text-right danger" width="30%">아이디 <img src="ico_required.gif"></th>
						<td width=70%><input type=text name=id class="input-sm" size=15 value="${vo.id }"  readonly id="id"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">비밀번호 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=password name=pwd class="input-sm" size=15 value="${vo.mem_pwd }" id="pwd"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">비밀번호 확인 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=password name=pwd1 class="input-sm" size=15 id="pwd1"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">이름 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=text name=name class="input-sm" size=15 id="name"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">이메일</th>
						<td width=70%><input type=text name=email class="input-sm" size=45 id="email"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">생년월일</th>
						<td width=70%><input type=date name=birthday class="input-sm" size=25 id="birthday"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">우편번호 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=text name=post class="input-sm" size=7 readonly id="post"> 
						<input type=button	value="우편번호" class="updateBtn" onclick="postfind()">
						</td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">주소 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=text name=addr1 class="input-sm" size=45 readonly id="addr1"></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">상세주소 <img src="ico_required.gif">
						</th>
						<td width=70%><input type=text name=addr2 class="input-sm" size=45 id=addr2></td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">전화번호 <img src="ico_required.gif">
						</th>
						<td width=70%><select name=tel1 id=tel1>
								<option>---</option>
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>017</option>
								<option>018</option>
						</select> <input type=text name=tel2 class="input-sm" size=3 id=tel2>
							<input type=text name=tel3 class="input-sm" size=3 id=tel3>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="text-center"><input type=button value="수정" class="updateBtn" id="updateBtn">
							<input type=button value="취소" class="updateBtn" onclick="javascript:history.back()"></td>
					</tr>
				</table>
			</form>
			</div>
		    </div>
		    </div>
		    <div style="height: 30px"></div>
</body>
</html>