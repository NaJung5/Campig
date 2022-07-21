<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>좋아요한 장비</title>
</head>
<body>
<%@include file="../headNavBar.jsp"%>
<%@include file="myPageTop.jsp"%>
<h1 align = "center">${memId}님의 선호 장비</h1>


<form action = "deleteFavo">
	<input type = "hidden" name = "id" value = "${memId }" />
	<c:if test = "${equipResult != 0}"	>
		<table border="2" width="1800" cellpadding="0" cellspacing="0" align="center">
			<tr height="50">
				<td  align="center" width="1800" colspan="5">
					<a href="/member/favorite?id=${memId }">전체보기</a>
				</td>
			</tr>
			<tr>
				<td td align="center" width="180"> 
					<a href="/member/favoCamp?id=${memId }">캠핑장</a>
				</td>
				<td align="center" width="180" >
					<a href="/member/favoEquip?id=${memId }">장비</a>
				</td>
			</tr>
		</table>	
		<table border="2" width="1800" cellpadding="0" cellspacing="0" align="center">
			<tr >
				<td align="center" width="200">사진</td>
				<td align="center" width="300">장비명</td>
				<td align="center" width="100">가격</td>
				<td align="center" width="50">별점</td>
				<td align="center" width="50"></td>
			</tr>	
		<c:forEach var = "equiplist" items = "${equipList}">	
			<tr height="10">
				<td align="center"><a href="${equiplist.url_name}"><img src="${equiplist.image}" height="300" width="400"></a></td>
				<td align="center">${equiplist.title} </td>
				<td align="center">${equiplist.price}</td>
				<td align="center">${equiplist.score}</td>
				<td align="center">
						<button onclick = "deleteFavo">삭제</button>
						<input type = "hidden" name = "num" value ="${equiplist.num}" />
						<input type = "hidden" name = "status" value = "0"/>
				</td>
			</tr>
		</c:forEach>
		</table>	
	</c:if>			
</form>		
<c:if test = "${equipResult == 0 }">
	<script>
		alert("좋아요 표시한 장비가 없습니다.");
		history.go(-1)
	</script>
</c:if>		

<c:if test="${count > 0}">
	<c:if test="${startPage > 10}">
		<a href="/member/favorite?pageNum=${startPage - 10}&id=${memId}">[이전]</a>
	</c:if>
	
	<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
		<a href="/member/favorite?pageNum=${i}&id=${memId}">[${i}]</a>
	</c:forEach>
	
	<c:if test="${endPage < pageCount}">
		<a href="/member/favorite?pageNum=${startPage + 10}&id=${memId}">[다음]</a>
	</c:if>
</c:if>			
</body>
</html>