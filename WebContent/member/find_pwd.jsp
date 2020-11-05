<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.row1 {
	margin: 0px auto;
	width: 270px;
}
.button {
    width:85px;
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
<script type="text/javascript">
$(function(){
	$('#findPwdBtn').click(function(){
		let name=$('#name').val();
		if(name.trim()=="")
		{
			alert("이름을 입력하세요");
			$('#name').focus();
			return;
		}
		let tel=$('#tel').val();
		if(tel.trim()=="")
		{
			alert("전화번호를 입력하세요");
			$('#tel').focus();
			return;
		}
		$.ajax({
			type:'post',
			url:'../member/find_pwd_ok.do',
			data:{"tel":tel},
			success:function(result)
			{
				let res=result.trim();
				if(res==0)
				{
					$('#telcheck_result').html("<font color=red>가입된 정보가 없습니다</font>")
				}
				else 
				{
					$('#telcheck_result').html("<font color=black>회원님의 id는 "+res+"입니다</font>");
				}
			}
		})
	});
});
</script>
</head>
<body>
 <div style="height: 120px"></div>
	<div class="row row2"></div>
	<div class="row row1">
			<form method=post action="../member/find_pwd_ok.do" name="findPwdFrm" id="findPwddFrm">
				<table class="table">
					<tr>
						<th class="text-right danger" width="30%">이름</th>
						<td width=70%><input type=text id="name" name=name class="input-sm" size=15> </td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">전화번호</th>
						<td width=70%><input type=text id="tel" name=tel class="input-sm" size=15> </td>
					</tr>
					<tr>
						<td colspan="2" class="text-center"><input type=button value="비밀번호 찾기" class="button" id="findPwdBtn">
							<input type=button value="취소" class="button" onclick="javascript:history.back()"></td>
					</tr>
				</table>
			</form>
	</div>
  <div style="height: 120px"></div>
</body>
</html>