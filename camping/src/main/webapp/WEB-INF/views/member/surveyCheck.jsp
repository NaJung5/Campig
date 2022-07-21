<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 확인</title>
</head>
<body>	
<c:choose>
<c:when test="${result != 1 }">
	<script >
      alert("설문조사에 참여해주세요.");      
      window.location = "/home?id=${memId}";
      window.open("/member/survey?id=${memId}","survey","toolbar=no, menubar=no, scrollbars=no, resizable=no, width=1500, height=900, left=0, top=0" );               
   </script>
</c:when>
<c:when test="${result == 1 }">

	<script>
		window.location="/home?id=${memId}";
	</script>

</c:when>
</c:choose>
</body>
</html>