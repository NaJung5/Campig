<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>즐겨찾기 캠핑장</title>
	</head>
	<body>
	<%@include file="../headNavBar.jsp"%>
	<h1 align = "center">${memId}님의 선호 캠핑장</h1>
		<c:forEach var="info" items="${info}">
			<div align = "center">
				<input type="submit"  value="정보수정">
				<input type="button"  value="작성글 목록" onclick="window.location='/member/myBoard?nickname=${info.nickname}'">
				<input type="button"  value="체크리스트" onclick="window.location='/member/checklist?status=1'">
				<input type="button"  value="즐겨찾기" onclick="window.location='/member/favorite'">
				<input type="button" value="회원탈퇴" onclick="window.location='/member/deleteForm'">
				<input type="button" onclick="location.href='../home'" value="홈으로"/>
			</div>	
		</c:forEach>
		<form action = "deleteFavo">
			<input type = "hidden" name = "id" value = "${memId }" />
			<c:if test = "${campResult != 0 }"	>
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
						<td align="center" width="200">캠핑장명</td>
						<td align="center" width="300">주소</td>
						<td align="center" width="70">별점</td>
						<td align="center" width="50"></td>
					</tr>
					<c:forEach var = "camplist" items = "${campList}">
					<tr>
						<td align="center"><a href="/spot/campingspot?num=${camplist.num }"><img src="${camplist.image}" height="300" width="400"/></a></td>
						<td align="center">${camplist.name } </td>
						<td align="center">${camplist.addr } </td>
						<td align="center">${camplist.score } </td>
						<td align="center">
							<button onclick = "deleteFavo">삭제</button>
							<input type = "hidden" name = "num" value ="${camplist.num}" />
							<input type = "hidden" name = "status" value = "1"/>
						</td>
					</tr>
					</c:forEach>	
				</table>	
			</c:if>					
		</form>
		<c:if test = "${campResult == 0 }">
			<script>
				alert("즐겨찾기한 표시한 캠핑장이 없습니다.");
				history.go(-1)
			</script>
		</c:if>	
		<div align = "center">
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
		</div>
	</body>
</html>