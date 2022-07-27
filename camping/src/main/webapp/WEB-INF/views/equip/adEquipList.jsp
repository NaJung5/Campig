<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h1>adEquipList</h1>
<h1>장비 수정/삭제</h1>

	<form>
		검색 
	
	</form>
<table border="1" width="1800" cellpadding="0" cellspacing="0"
	align="center">
	<tr height="30" bgcolor="${value_c}">
	<td align="center" width="50">상품번호</td>
		<td align="center" width="200">사진</td>
		<td align="center" width="300">장비명</td>
		<td align="center" width="100">가격</td>
		<td align="center" width="100">제조사</td>
		<td align="center" width="50">유형</td>
		<td align="center" width="50">활성여부</td>
		<td align="center" width="120">등록일</td>
	</tr>

	<c:forEach var="equip" items="${EquipAllList}" varStatus="status">

		<tr height="10">
			
			<td align="center">${equip.num}</td>

			<td align="center"><a href="${equip.url_name}"><img
			src="${equip.image}" width="200" height="150"></a></td>

			<td align="center"><a href="${equip.url_name}">${equip.title}</a>
				/ ${equip.num}</td>
			 
			<td align="center">${equip.price}원</td>

			<td align="center">${equip.brand}</td>

			<td align="center">${equip.fil1}</td>
			
			<td align="center">${equip.status}</td>
			
			<td align="center">${equip.reg}</td>

		</tr>

	</c:forEach>

</table>

<table border="1" width="1800" cellpadding="0" cellspacing="0"
	align="center">

	<tr height="50">
		<td align="center">현재페이지 : ${currentPage}</td>
	</tr>


	<tr height="50">




		<td align="center"><c:if test="${count > 0}">
				<c:set var="pageCount"
					value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}" />
				<fmt:parseNumber var="result" value="${currentPage/10.01}"
					integerOnly="true" />
				<c:set var="startPage" value="${result*10+1}" />
				<c:set var="pageBlock" value="${10}" />
				<c:set var="endPage" value="${startPage + pageBlock-1}" />
				<c:if test="${endPage > pageCount}">
					<c:set var="endPage" value="${pageCount}" />
				</c:if>

				<c:if test="${startPage > 10}">
					<a
						href="/equip/adEquipList?pageNum=${startPage - 10}">[이전]</a>
				</c:if>

				<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
					<a href="/equip/adEquipList?pageNum=${i}">[${i}]</a>
				</c:forEach>

				<c:if test="${endPage < pageCount}">
					<a
						href="/equip/adEquipList?pageNum=${startPage + 10}">[다음]</a>
				</c:if>
			</c:if></td>
	<tr>
</table>