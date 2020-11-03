<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	// keyup , keydown
	$('#keyword').keyup(function(){
		let k=$('#keyword').val();// 검색어 입력한 값을 읽어 온다 
		$('#restaurant-table > tbody > tr').hide();
		let temp=$('#restaurant-table > tbody > tr> td:nth-child(2n+2):contains("'+k+'")');
		$(temp).parent().show();
		// temp ==> td
	});
	$('.restaurant').click(function(){
		let no=$(this).attr("data-value");
		//alert("no:"+no);
		let poster=$(this).attr("data-poster");
		let title=$(this).attr("data-title");
		$('#restaurant_poster').attr("src",poster);
		$('#restaurant_title').text(title);
		//theater.do?no=1
		$('#cno').val(no);
		$.ajax({
			type:'post',
			url:'../reserve/theater.do',
			data:{"no":no},
			success:function(result)
			{
				$('#theater_info').html(result);
			}
		})
	});
});
</script>
</head>
<body>
   <table class="table">
    <tr>
      <td>
       <input type=text id="keyword" size=15 placeholder="검색어 입력">
      </td>
    </tr>
   </table>
   <table class="table table-striped" id="restaurant-table">
       <tbody>
		     <c:forEach var="vo" items="${list }">
		       <tr class="restaurant" data-value="${vo.rest_no }"
		           data-poster="${rest_poster }" data-title="${rest_name }">
		         <td><img src="${rest_poster }" width=20 height=20></td>
		         <td style="font-size:8pt">${rest_name }</td>
		       </tr>
		     </c:forEach>
     </tbody>
   </table>
</body>
</html>