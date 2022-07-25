<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 관리</title>
	</head>
	<body>
		<!-- 리스트 내역 -->
		<table border="1">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>연락처</th>
				<th>주소</th>	
				<th>등록일</th>
				<th>수정</th>
				<th>삭제</th>		
			</tr>
			<c:if test="${count == 0}">
				<div>내역이 없습니다</div>
			</c:if>
			<c:if test="${count >0}">
				<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.num}</td>
						<td>${list.name}</td>
						<td>${list.phone}</td>
						<td>${list.addr}</td>
						<td>${list.reg}</td>
						<td><input type="button" value="수정" onclick="window.location='/adSpot/modify?num=${list.num}'" /></td>
						<td>
							<form action="/adSpot/delete" method="post" >
								<select name="status" >
									<option value="0" <c:if test="${list.status==0}" >selected="selected"</c:if>>활성</option>
									<option value="1" <c:if test="${list.status==1}" >selected="selected"</c:if>>비활성</option>
								</select>
								<input type="hidden" name="num" value="${list.num}" />
								<input type="hidden" name="pageNum" value="${pageNum}" />
								<input type="submit" value="적용" />
							</form>
						</td>
					</tr>	
				</c:forEach>
			</c:if>	
		</table>
		<hr/>
		<!-- 페이징 -->
		<c:if test="${count > 0}">
			<c:if test="${startPage>10}">
				<a href="/adSpot/list?pageNum=${startPage-10}" >[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
				<a href="/adSpot/list?pageNum=${i}" >[${i}]</a>
			</c:forEach>
			<c:if test="${endPage < pageCount}">
				<a href="/adSpot/list?pageNum=${startPage+10}" >[다음]</a>
			</c:if>
		</c:if>
		<!-- 캠핑장 등록 이동 -->
		<input type="button" value="캠핑장등록" onclick="window.location='/adSpot/insert'" />
		<!-- 미디어 등록 이동 -->
		<input type="button" value="미디어등록" onclick="window.location='/adSpot/insertMedia'" />
		<!-- 미디어 등록 이동 -->
		<input type="button" value="미디어관리" onclick="window.open('/adSpot/mediaList', '/adSpot/mediaList', 'width=400, height=300')" />
	</body>
</html>