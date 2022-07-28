<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 상세 페이지</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../../resources/css/main.css" />
		<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
	</head>
	<body>
		<%@include file="../headNavBar.jsp"%>
		<%@include file="spotCategory.jsp"%>	
		<div id="main">
			<div class="inner">
				<div class="table-wrapper">
					<table>
						<tr>
							<td>
								<c:if test="${spot.image == null}" >
									<article class="style8">
										<span class="image">
											<img src="https://png.clipart.me/previews/229/camping-clip-art-42250.jpg" />
										</span>
									</article>
								</c:if>
								<c:if test="${spot.image != null}">
									<article class="style8">
										<span class="image">
											<img src="${spot.image}" />
										</span>
								</article>
								</c:if>
							</td>
							<td>
								<c:if test="${memId != null}">
									<c:if test="${result == 0}">
										<input type="button" value="즐겨찾기" onclick="window.location='/spot/fav?num=${spot.num}&id=${memId}'" />
									</c:if>
									<c:if test="${result == 1}">
										<input type="button" value="즐겨찾기해제" onclick="window.location='/spot/fav?num=${spot.num}&id=${memId}'" />
									</c:if>
								</c:if>	
								<button><a href="${spot.page}" >홈페이지가기</a></button>
							</td>
						</tr>	
					</table>		
					<table>
						<tr>
							<td width="250">
								<b style = "color : grey">${spot.name}
								<br />
								${spot.score}</b>
							</td>
							<td ><p style = "color : grey">${spot.tag}</p></td> 
						</tr>
						<tr>
							<td>전화번호</td>
							<td>${spot.phone}</td>
						</tr>
						<tr>
							<td>주소</td>
							<td>${spot.addr}</td>
						</tr>
						<tr>
							<td>시설</td>
							<td>${fil.p}${fil.q}${fil.r}${fil.s}${fil.t}${fil.u}${fil.v}${fil.w}${fil.x}${fil.y}${fil.z}</td>
						</tr>
						<tr>
							<td>환경</td>
							<td>${fil.A}${fil.B}${fil.C}${fil.D}${fil.E}${fil.F}${fil.G}${fil.H}</td>
						</tr>
						<tr>
							<td>운영</td>
							<td> ${fil.I}${fil.J}${fil.K}${fil.L}${fil.M}</td>
						</tr>
						<tr>
							<td>형태</td>
							<td>${fil.N}${fil.O}${fil.P}${fil.Q}</td>
						</tr>
						<tr>
							<td>이용계절</td>
							<td>${fil.R}${fil.S}${fil.T}${fil.U}</td>
						</tr>
						<tr>
							<td>주말</td>
							<td>${fil.V}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<%@include file="../footer.jsp"%>
	</body>
</html>