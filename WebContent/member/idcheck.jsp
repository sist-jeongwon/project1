<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.row {
    margin: 0px auto;
    width:300px;
}
.button {
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
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
// window.onload
$(function(){
	$('#idcheckBtn').click(function(){
		let id=$('#id').val();
		
		if(id=="")
		{
			$('#id').focus();
			return;
		}
		$.ajax({
			type:'post',
			url:'../member/idcheck_ok.do',
			data:{"id":id},
			success:function(result)
			{
				let count=result.trim();
				if(count==0)
				{
					$('#idcheck_result').html("<font color=blue>사용 가능한 아이디입니다</font>");
					$('#ok').html('<input type=button value=확인 onclick="ok()">')
				}
				else 
				{
					$('#idcheck_result').html("<font color=red>이미 사용중인 아이디입니다</font>")
				}
			}
		})
	})
});
function ok()
{
	opener.joinFrm.id.value=$('#id').val();
	self.close();
}
</script>
</head>
<body>
   <div class="container">
     <div class="row">
       <h4>아이디 중복확인</h4>
       <table class="table">
         <tr>
           <td>
            아이디 : <input type=text id=id class="input-sm" size=15>
            <input type=button value="중복체크" id="idcheckBtn" class="button">
           </td>
         </tr>
         <tr>
           <td class="text-center" id="idcheck_result"></td><%-- 결과 --%>
         </tr>
         <tr>
           <td class="text-center" id="ok"></td><%--확인 --%>
         </tr>
       </table>
     </div>
   </div>
</body>
</html>
