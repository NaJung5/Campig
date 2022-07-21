<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
</head>
<body>

<h1 align = "center">${memId}님의 즐겨찾기</h1>
<jsp:include page="myPageTop.jsp"></jsp:include>


<form action = "deleteFavo">
	<input type = "hidden" name = "id" value = "${memId }" />
	<c:if test = "${result != 0 }" >
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
		<c:if test ="${campResult != 0 }">
			<table  border="2" width="1800" cellpadding="0" cellspacing="0" align="center">
				<tr >
					
					<td align="center" width="200">사진</td>
					<td align="center" width="300">캠핑장명</td>
					<td align="center" width="800">주소</td>
					<td align="center" width="50">별점</td>
					<td align="center" width="50"><button onclick = "deleteFavo">삭제</button></td>
				</tr>
				<c:forEach var = "camplist" items = "${campList}">
					<tr>
						<td align="center"><a href="${camplist.page}"><img src="${camplist.image}" height="300" width="400"/></a></td>
						<td align="center">${camplist.name } </td>
						<td align="center">${camplist.addr } </td>
						<td align="center">${camplist.score } </td>
						<td align="center">
							<input type = "checkbox" name = "num" value ="${camplist.num}" />
							<input type = "hidden" name = "status" value = "1"/>
						</td>
						<td align="center" width="50"><button onclick = "deleteFavo">삭제</button></td>
					</tr>
				</c:forEach>	
			</table>		
		</c:if>
		<c:if test ="${equipResult != 0 }">
			<table  border="2" width="1800" cellpadding="0" cellspacing="0" align="center">
				<tr >
					
					<td align="center" width="200">사진</td>
					<td align="center" width="300">장비명</td>
					<td align="center" width="800">가격</td>
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
	</c:if>			
</form>
		
<c:if test = "${result == 0 }">
	<p>좋아요를 표시한 게시글이 없습니다.</p>
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