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
		let id=$('#id').val();
		if(id.trim()=="")
		{
			alert("아이디를 입력하세요");
			$('#id').focus();
			return;
		}
		let name=$('#name').val();
		if(name.trim()=="")
		{
			alert("이름을 입력하세요");
			$('#name').focus();
			return;
		}
		$.ajax({
			type:'post',
			url:'../member/find_pwd_ok.do',
			data:{"id":id},
			success:function(result)
			{
				let idc=result.trim();
				if(idc==0)
				{
					$('#pwdcheck_result').html("<font color=red>일치하는 정보가 없습니다</font>")
				}
				else 
				{
					$('#pwdcheck_result').html("<font color=black>회원님의 비밀번호는 "+idc+"입니다</font>");
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
			<form method=post action="../member/find_pwd_ok.do" name="findPwdFrm" id="findPwdFrm">
				<table class="table">
					<tr>
						<th class="text-right danger" width="30%">아이디</th>
						<td width=70%><input type=text id="id" name=id class="input-sm" size=15> </td>
					</tr>
					<tr>
						<th class="text-right danger" width="30%">이름</th>
						<td width=70%><input type=text id="name" name=name class="input-sm" size=15> </td>
					</tr>
					<table class="table">
					 <tr>
					   <td class="text-center" id="pwdcheck_result"></td><%-- 결과 --%>
					 </tr>
					<tr>
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