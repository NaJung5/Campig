<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>리뷰</title>
	</head>
	<body>
		<h1>리뷰를 작성해주세요</h1>
		<c:if test = "${site.num != null }">
			<a href = "/member/review2?id=${memId}&category=1&status=${st.status}&reCountCamp=1">캠핑장</a>
		</c:if>
		<c:if test = "${tent.num != null }">
			<a href = "/member/review2?id=${memId}&category=2&status=${st.status}">텐트</a>
		</c:if>
		<c:if test = "${taf.num != null }">	
			<a href = "/member/review2?id=${memId}&category=3&status=${st.status}">타프</a>
		</c:if>
		<c:if test = "${waterjug.num >= 1}">	
			<a href = "/member/review2?id=${memId}&category=4&status=${st.status}">아이스박스</a>
		</c:if>
		<c:if test = "${stove.num != null }">	
			<a href = "/member/review2?id=${memId}&category=5&status=${st.status}">화구</a>
		</c:if>
		<c:if test = "${light.num != null }">	
			<a href = "/member/review2?id=${memId}&category=6&status=${st.status}">조명</a>
		</c:if>
		<c:if test = "${mat.num != null }">	
			<a href = "/member/review2?id=${memId}&category=7&status=${st.status}">매트</a>
		</c:if>
		<c:if test = "${sb.num != null }">
			<a href = "/member/review2?id=${memId}&category=8&status=${st.status}">침낭</a>
		</c:if>
		<c:if test = "${chait.num != null }">	
			<a href = "/member/review2?id=${memId}&category=9&status=${st.status}">의자</a>
		</c:if>
		<c:if test = "${desk.num != null }">	
			<a href = "/member/review2?id=${memId}&category=10&status=${st.status}">테이블</a>
		</c:if>
		<c:if test = "${gag.num != null }">	
			<a href = "/member/review2?id=${memId}&category=11&status=${st.status}">연료</a>
		</c:if>	
		<br/>
		<a href = "/member/deleteCh?id=${memId}&status=${st.status}" >다음으로</a>
	</body>
</html>