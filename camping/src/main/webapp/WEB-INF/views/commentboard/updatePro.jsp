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
	<center><b>댓글수정</b></center>
	<c:if test="${result != 0}">
	<c:redirect url="/commentboard/list?pageNum=${pageNum}"></c:redirect>
	</c:if>
	<c:if test="${result == 0}">
    	<script language="JavaScript">     
        	alert("비밀번호가 맞지 않습니다");
        	history.go(-1);
     	</script>
	</c:if>
</body>
</html>