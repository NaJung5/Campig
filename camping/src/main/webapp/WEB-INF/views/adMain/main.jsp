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
<c:if test="${ad == 1 }">
	<form >
        <input type="button" value="관리자 메뉴" onclick="window.location='/adMem/adMemInfo?id=${adId}'">
	</form>
</c:if>

</body>
</html>