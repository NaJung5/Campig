<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

	<body>
		<center><b>글삭제</b></center>
		<c:if test="${result == 1}">
			<script>
				alert("삭제가 완료되었습니다.");
				location.href = document.referrer;	
			</script>
		</c:if>
		<c:if test="${result == 0}">
			<script>
				alert("작성자만 삭제 가능 합니다.");
				location.href = document.referrer;	
			</script>
		</c:if>
	</body>
</html>