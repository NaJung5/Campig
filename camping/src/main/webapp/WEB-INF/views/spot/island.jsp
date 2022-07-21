<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>섬</title>
	</head>
	<body>
		<%@include file="../headNavBar.jsp"%>
		<%@include file="spotCategory.jsp"%>
		<!-- 검색내용 부분 -->
		<c:if test="${count == 0 }">
			<div>검색내역이 없습니다</div>
		</c:if>
		<c:if test="${count >0 }">
			<div id="wrapper">
				<section class="tiles">
					<c:forEach var="list" items="${list}">
						<c:if test="${list.image == null }" >
							<article class="style8">
								<span class="image">
										<img src="https://png.clipart.me/previews/229/camping-clip-art-42250.jpg"  height="300" width="400"/>
								</span>
								<a href="/spot/campingspot?num=${list.num}"></a>
								<b style = "color : grey">${list.name}</b>
							</article>
						</c:if>
						<c:if test="${list.image != null}">
							<article class="style8">
								<span class="image">
									<img src="${list.image}"  height="300" width="400"/>
								</span>
								<a href="/spot/campingspot?num=${list.num}"></a>
								<b style = "color : grey">${list.name}</b>
							</article>
						</c:if>
					</c:forEach>
				</section>
			</div>
		</c:if>
		<!-- 페이징 부분 -->
		<c:if test="${count > 0}">
			<c:if test="${startPage>10}">
				<a href="/spot/island?pageNum=${startPage-10}" >[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
				<a href="/spot/island?pageNum=${i}" >[${i}]</a>
			</c:forEach>
			<c:if test="${endPage < pageCount}">
				<a href="/spot/island?pageNum=${startPage+10}" >[다음]</a>
			</c:if>
		</c:if>
	</body>
</html>