<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 전 회원확인</title>
</head>
	<body>
		<c:if test="${memId == null}">
			<script>
				alert("회원만 글쓰기가 가능 합니다.");
				history.go(-1);	
			</script>
		</c:if>
		<c:if test="${memId != null}">
			<c:redirect url="/board/writeForm"></c:redirect>
		</c:if>		
	</body>
</html>