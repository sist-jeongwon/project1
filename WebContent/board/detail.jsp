<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
 <link rel="stylesheet" href="style.css">
 <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let i=0;
let u=0;
$(function(){
	$('.reply_reply').click(function(){
	  $('.rIn').hide();
	  $('.rUp').hide();
	  $('.reply_reply').text("댓글");
	  let no=$(this).attr('value');
	  if(i==0)
	  {
		    
			$('#rIn'+no).show();
			$(this).text("취소");
			i=1;
	  }
	  else
	  {
		    $('#rIn'+no).hide();
		    $(this).text("댓글");
			i=0;
	  }
		
	});
	$('.reply_update').click(function(){
		let no=$(this).attr("value");
		$('.rIn').hide();
		$('.rUp').hide();
		if(u==0)
		{
			$('#rUp'+no).show();
			u=1;
		}
		else
		{
			$('#rUp'+no).hide();
			u=0;
		}
	})
	let d=0;
	$('#delBtn').click(function(){
		if(d==0)
		{
			$('#delTr').show();
			d=1;
		}
		else
		{
			$('#delTr').hide();
			d=0;
		}
	});
});
</script>
<style type="text/css">
.row1 {
    margin: 0px auto;
    width:900px;
}
  .btn{
	background-color:#92C364;
	border:none;
	}
</style>
</head>
<body>
<div class="row row1">
    <h3 class="text-center">상세보기</h3>
    <table class="table">
      <tr>
        <th width=20% class="text-center success">번호</th>
        <td width=30% class="text-center">${vo.no }</td>
        <th width=20% class="text-center success">작성일</th>
        <td width=40% class="text-center">
          <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
        </td>
      </tr>
      <tr>
        <th width=20% class="text-center success">이름</th>
        <td width=30% class="text-center">${vo.name }</td>
        <th width=20% class="text-center success">조회수</th>
        <td width=40% class="text-center">${vo.hit }</td>
      </tr>
      <tr>
        <th width=20% class="text-center success">제목</th>
        <td colspan="3" class="text-left">${vo.subject }</td>
      </tr>
      <tr>
        <td colspan="4" valign="top" height="200">${vo.content }</td>
      </tr>
      <tr>
        <td colspan="4" class="text-right">
            <a href="../board/update.do?no=${vo.no }" class="btn btn-xs btn-success">수정</a>
          <span class="btn btn-xs btn-success" id="delBtn">삭제</span>
          <a href="../board/list.do" class="btn btn-xs btn-success">목록</a>
        </td>
      </tr> 
      <tr style="display:none" id="delTr">
        <td colspan="4" class="text-right">
           <form method=post action="../board/delete.do">
          비밀번호:<input type=password id=pwd size=10 class="input-sm" name=pwd>
            <input type=hidden name=no value="${vo.no }">
            <input type=submit value="삭제" class="btn btn-sm btn-primary">
            </form>
        </td>
      </tr>
      <tr style="display:none">
        <td colspan="4" class="text-right">
          <span id="print"></span>
        </td>
      </tr>
    </table>
  </div>
  <div class="row row1">
    <h3>댓글목록</h3>
    <hr>
    <c:forEach var="rvo" items="${rList }">
      <table class="table">
        <tr>
          <td class="text-left">
           <c:if test="${rvo.group_tab>0 }">
             <c:forEach var="i" begin="1" end="${rvo.group_tab }">
               &nbsp;&nbsp;&nbsp;&nbsp;
             </c:forEach>
				<img src="../style/img/re.png"  style="width:25px; height:25px;">
           </c:if>
           <img src="../style/img/icon.PNG" style="width:30px; height:30px;">&nbsp;${rvo.name }(${rvo.dbday })
          </td>
          <td class="text-right">
            <c:if test="${sessionScope.id==rvo.mem_id }">
             <span class="btn btn-xs reply_update" value="${rvo.no }">수정</span>
             <a href="../board/reply_delete.do?no=${rvo.no }&bno=${vo.no}" class="btn btn-xs">삭제</a>
            </c:if>
             <span class="btn btn-xs reply_reply" value="${rvo.no }">댓글</span>
          </td>
        </tr>
        <tr>
          <td class="text-left" colspan="2">
            <c:if test="${rvo.group_tab>0 }">
            <c:forEach var="i" begin="1" end="${rvo.group_tab }">
               &nbsp;&nbsp; &nbsp;&nbsp;
             </c:forEach>
           </c:if>
            <pre style="white-space: pre-wrap;background-color: white;border:none">${rvo.msg }</pre>
          </td>
        </tr>
         <tr class="rIn" id="rIn${rvo.no }" value="${rvo.no }" style="display:none">
       <td colspan="2">
        <form method=post action="../board/reply_reply_insert.do">
            <input type=hidden name="no" value="${rvo.no }">
            <input type=hidden name="bno" value="${vo.no }">
	        <textarea rows="3" cols="110" name="msg" style="float: left; margin-right:10px;"></textarea>
	        <input type=submit value="댓글쓰기" style="height:70px;float: left"
	          class="btn btn-sm"
	        >
        </form>
       </td>
      </tr>
      <tr class="rUp" id="rUp${rvo.no }" value="${rvo.no }" style="display:none">
       <td colspan="2">
        <form method=post action="../board/reply_insert.do">
            <input type=hidden name="bno" value="${vo.no }">
	        <textarea rows="3" cols="110" name="msg" style="float: left; margin-right:10px;">${rvo.msg }</textarea>
	        <input type=submit value="댓글수정" style="height:70px;float: left"
	          class="btn btn-sm"
	        >
        </form>
       </td>
      </tr>
      </table>
    </c:forEach>
    <hr>
    <table class="table">
      <tr>
       <td>
        <form method=post action="../board/reply_insert.do">
            <input type=hidden name="bno" value="${vo.no }">
	        <textarea rows="3" cols="110" name="msg" style="float: left; margin-right:10px;"></textarea>
	        <input type=submit value="댓글쓰기" style="height:70px;float: left"
	          class="btn btn-sm"
	        >
        </form>
       </td>
      </tr>
    </table>
  </div>
</body>
</html> 