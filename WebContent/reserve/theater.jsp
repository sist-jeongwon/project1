<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
  var st = $(":input:radio[name=search_type]:checked").val();
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.theater').hover(function(){
		$(this).css("cursor","pointer");
	},function(){
		$(this).css("cursor","");
	});
	$('.theater').click(function(){
	   let no=$(this).attr("data-tno");
	   let tloc1=$(this).attr("data-name"); //이 name이머지..tname=tloc1로해놨는디 attribute중에 'data-name'이라는 어트리뷰트를 가져온다는 거임
	   $('#restaurant_theater').text(tloc1);
	   $('#tloc1').val(tloc1);
	   $.ajax({
		   type:'post',
		   url:'../reserve/date.do',
		   data:{"tno":no},
		   success:function(result){
			   $('#date_info').html(result);
		   }
	   })
	})
});
</script>
</head>
<body>
  <table class="table table-striped">
    <c:forEach var="vo" items="${list }">
      <tr class="theater" data-tno="${vo.tno }" data-name="${vo.tloc1 }(${vo.tloc2 })">
       <td style="font-size:8pt">${vo.tloc1 }(${vo.tloc2 })</td>
      </tr>
    </c:forEach>
  </table>
</body>
</html>