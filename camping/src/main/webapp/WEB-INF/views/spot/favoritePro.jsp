<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:if test="${result == 0}">
			<script>
				alert("즐겨찾기 등록되었습니다");
				window.location="/spot/campingspot?num=${num}";
			</script>
		</c:if>
		<c:if test="${result == 1}">
			<script>
				alert("즐겨찾기 해제되었습니다");
				window.location="/spot/campingspot?num=${num}";
			</script>
		</c:if>
	</body>
</html>