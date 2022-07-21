<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>

<body>
	<center><b>댓글삭제</b></center>
	<c:if test="${result == 1}">
		<script>
			alert("삭제가 완료되었습니다.");
			window.location = "/commentboard/list";	
		</script>
	</c:if>
	<c:if test="${result != 1}">
		<script>      
        	alert("비밀번호를 확인해주세요.");
        	history.go(-1);
        </script>
	</c:if>
</body>
</html>