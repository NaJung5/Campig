<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인(관리자, 설문조사 참여회원/비참여 회원 구분)</title>
</head>
<body>

<c:choose>
	<c:when test="${ad == 1 }">
		<c:set var="adId" value="${id}" scope="session" />
		<c:redirect url = "/home?id=${adId}"/>
	</c:when>
	<c:when test="${status == 1}">
		<script>
			alert("존재 하지 않는 ID 입니다.");
			history.go(-1);
		</script>
	</c:when>

	<c:when test="${result == 1}">
		<c:set var="memId" value="${id}" scope="session" />
		<c:redirect url = "/member/surveyCheck?id=${id}"/>
	</c:when>
	<c:when test="${result != 1}">
		<script>
			alert("ID 혹은 PW가 틀렸습니다");
			history.go(-1);
		</script>
	</c:when>
</c:choose>	
</body>
</html>