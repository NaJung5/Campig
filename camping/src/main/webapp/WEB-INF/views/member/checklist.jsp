<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 체크리스트</title>
</head>
<body>
<%@include file="../headNavBar.jsp"%>
<%@include file="myPageTop.jsp"%>
<h1 align = "center">${memId}님의 checklist</h1>


<table>
	<tr height="50">
		<td  align="center" width="180" >
			<a href="/member/checklist?id=${memId }">1번째</a>
		</td>
		<td align="center" width="180"> 
			<a href="/member/checklist2?id=${memId }&status=2">2번째</a>
		</td>
		<td align="center" width="180" >
			<a href="/member/checklist3?id=${memId }&status=3">3번째</a>
		</td>
	</tr>
</table>
<c:if test = "${st.status  == 1 }">
	<table >
		<tr>
			<td align = "center">
				<b>${st.status }번째 Checklist</b>
				<br />
				<p align = "RIGHT">총액 : ${st.price}원</p>
			</td>	
		</tr>
	</table>
	<table>
		<tr>
			<c:if test = "${tent == null }">
				<td width="80"><b>텐트</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${tent != null }">
				<td width="80">
					<b>텐트</b>  <br /> 
					<a href="${tent.url_name}"><img src="${tent.image}" height="300" width="400"></a><br />
					<b>${tent.title}</b><p align = "right">${tent.price}원</p>
				</td>
			</c:if>
			<c:if test = "${taf == null }">
				<td width="80"><b>타프</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${taf != null }">
				<td width="80">
					<b>타프</b>  <br /> 
					<a href="${taf.url_name}"><img src="${taf.image}" height="300" width="400"></a><br />
					<b>${taf.title}</b><p align = "right">${taf.price}원</p>
				</td>
			</c:if>
			<c:if test = "${waterjug == null }">
				<td width="80"><b>아이스박스</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${waterjug != null }">
				<td width="80">
					<b>아이스박스</b>  <br /> 
					<a href="${waterjug.url_name}"><img src="${waterjug.image}" height="300" width="400"></a><br />
					<b>${waterjug.title}</b><p align = "right">${waterjug.price}원</p>
				</td>
			</c:if>
		</tr>
		<tr>
			<c:if test = "${stove == null }">
				<td width="80"><b>조리도구</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${stove != null }">
				<td width="80">
					<b>조리도구</b>  <br /> 
					<a href="${stove.url_name}"><img src="${stove.image}" height="300" width="400"></a><br />
					<b>${stove.title}</b><p align = "right">${stove.price}원</p>
				</td>
			</c:if>
			<c:if test = "${light == null }">
				<td width="80"><b>조명</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${light != null }">
				<td width="80">
					<b>조명</b>  <br /> 
					<a href="${light.url_name}"><img src="${light.image}" height="300" width="400"></a><br />
					<b>${light.title}</b><p align = "right">${light.price}원</p>
				</td>
			</c:if>
			<c:if test = "${mat == null }">
				<td width="80"><b>매트</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${mat != null }">
				<td width="80">
					<b>매트</b>  <br /> 
					<a href="${mat.url_name}"><img src="${mat.image}" height="300" width="400"></a><br />
					<b>${mat.title}</b><p align = "right">${mat.price}원</p>
				</td>
			</c:if>
		</tr>
		<tr>
			<c:if test = "${sb == null }">
				<td width="80"><b>침낭</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${sb != null }">
				<td width="80">
					<b>침낭</b>  <br /> 
					<a href="${sb.url_name}"><img src="${sb.image}" height="300" width="400"></a><br />
					<b>${sb.title}</b><p align = "right">${sb.price}원</p>
				</td>
			</c:if>
			<c:if test = "${chair == null }">
				<td width="80"><b>타프</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${chair != null }">
				<td width="80">
					<b>의자</b>  <br /> 
					<a href="${chair.url_name}"><img src="${chair.image}" height="300" width="400"></a><br />
					<b>${chair.title}</b><p align = "right">${chair.price}원</p>
				</td>
			</c:if>
			<c:if test = "${desk == null }">
				<td width="80"><b>테이블</b>  <br /> <img src="../resources/images/x.png" height="300" width="400"></td>
			</c:if>
			<c:if test = "${desk != null }">
				<td width="80">
					<b>테이블</b>  <br /> 
					<a href="${desk.url_name}"><img src="${desk.image}" height="300" width="400"></a><br />
					<b>${desk.title}</b><p align = "right">${desk.price}원</p>
				</td>
			</c:if>
		</tr>
		<tr>
			<td></td>	
			<td align = "center">
				<button onclick="window.location='/prod/check?id=${memId}'">추가1</button>
				<button onclick="window.open('/member/chModify?id=${memId}&status=1', 'window_name', 'width=700, height=500, location=no, status=no, scrollbars=yes');">수정</button>
				<button onclick="window.location='review?id=${memId}&status=${st.status}'">삭제</button>
			</td>
		</tr>
	</table>
</c:if>
<c:if test = "${st.status != 1}">
	<div align = "center">
		<button onclick="window.open('/prod/check?id=${memId}', 'window_name', 'width=700, height=500, location=no, status=no, scrollbars=yes');">추가</button>
	</div>
</c:if>

</body>
</html>