<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>
<head>
<title>삭제</title>
</head>

<script>

	alert("삭제되었습니다.");
	
	alert("리뷰를 작성해주세요");
	window.open("/member/review?id=${memId}&status=${st.status}","review","toolbar=no, menubar=no, scrollbars=no, resizable=no, width=1500, height=900, left=0, top=0" );
	 
	window.location="/member/myPage?id=${memId}";
	
</script>
	

</body>
</html>