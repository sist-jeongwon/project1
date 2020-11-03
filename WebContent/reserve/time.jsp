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
	$('.times').hover(function(){
		$(this).css("cursor","pointer");
	},function(){
		$(this).css("cursor","");
	})
	$('.times').click(function(){
		let time=$(this).text();
		$('#restaurant_time').text(time);
		$('#time').val(time);
		$.ajax({
			type:'post',
			url:'../reserve/people.do',
			success:function(result)
			{
				$('#people_info').html(result);
			}
		})
	})
})
</script>
</head>
<body>
   <table class="table">
     <tr>
      <td>
        <c:forEach var="time" items="${list }">
          <span class="times btn btn-sm btn-success text-center" width="120">${time }</span>
        </c:forEach>
      </td>
     </tr>
   </table>
</body>
</html>