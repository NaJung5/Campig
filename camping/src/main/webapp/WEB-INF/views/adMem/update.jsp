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
<c:if test = "${result == 1 }">
	<script>
		alert("삭제되었습니다.");
		
		location.href = document.referrer;
	</script>
</c:if>
<c:if test = "${result == 0 }">	
	<script>
		alert("복구되었습니다.");
		location.href = document.referrer;
	</script>
</c:if>	
</body>
</html>