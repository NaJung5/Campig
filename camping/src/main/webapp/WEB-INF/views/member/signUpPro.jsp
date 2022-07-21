<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>

<body>
<c:if test = "${result == 0 }">
	<script>
		alert("회원가입이 완료 되었습니다");
		window.location="/home";
	</script>
</c:if>
<c:if test = "${result != 0 }">
	<script>
		alert("ID 혹은 별명은 중복 될 수 없습니다.");
		history.go(-1);
	</script>
</c:if>
</body>
</html>