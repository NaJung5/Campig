<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 찾기</title>
	</head>
	<body>
		<%@include file="../headNavBar.jsp"%>
		<%@include file="spotCategory.jsp"%>
		<div id="wrapper">
			<section class="tiles">
				<!-- 설문 안했을 때  -->
				<c:if test="${answer == null}">
					<c:forEach var="list" items="${nonLog}">
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
				</c:if>	
				<!-- 설문했을 때 -->
				<c:if test="${answer != null}">
					<!-- 설문결과에 맞는 캠핑장이 없다면 -->	
					<c:if test="${count == 0}">
						<c:forEach var="list" items="${nonLog}">
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
					</c:if>
					<c:if test="${count > 0}">
						<c:forEach var="list" items="${log}">
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
					</c:if>
				</c:if>
			</section>
		</div>
	</body>
</html>