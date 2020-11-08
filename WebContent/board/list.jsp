<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.row1 {
   margin: 0px auto;
   width:700px;
}
.btd {
  font-size: 8pt;
}
.btn{
	background-color:#92C364;
	border:none;
	}
</style>
</head>
<body>
<div class="post-catagory section-padding-100">
  <div class="container">
 <div class="row row1 ">
    <h3 class="text-left">Q&A</h3>
    <table class="table">
      <tr>
        <td class="text-left">
          <a href="../board/insert.do" class="btn btn-sm btn-success">새글</a>
        </td>
      </tr>
    </table>
    <table class="table table-striped">
      <tr class="warning">
        <th class="text-center" width=10%>번호</th>
        <th class="text-center" width=45%>제목</th>
        <th class="text-center" width=15%>이름</th>
        <th class="text-center" width=20%>작성일</th>
        <th class="text-center" width=10%>조회수</th>
      </tr> 
      <c:forEach var="vo" items="${list }">
        <tr>
	        <td class="text-center btd" width=10%>${vo.no }</td>
	        <td class="text-left btd" width=45%>
	        <a href="../board/detail.do?no=${vo.no }">${vo.subject }</a>
	        <c:if test="${today==vo.dbday }">
	          <font color=red><sup>new</sup></font>
	        </c:if>
	         <c:if test="${vo.replyCount>0 }">
	         (${vo.replyCount })
	        </c:if>
	        </td>
	        <td class="text-center btd" width=15%>${vo.name }</td>
	        <td class="text-center btd" width=20%>${vo.dbday }</td>
	        <td class="text-center btd" width=10%>${vo.hit }</td>
      </tr> 
      </c:forEach>
    </table>
    <table class="table">
      <tr>
        <td class="text-left"></td>
        <td class="text-right">
          <a href="#" class="btn btn-sm btn-success">이전</a>
            ${curpage } page / ${totalpage } pages
          <a href="#" class="btn btn-sm btn-success">다음</a>
        </td>
      </tr>
    </table>
  </div>
  </div>
  </div>
</body>
</html> 