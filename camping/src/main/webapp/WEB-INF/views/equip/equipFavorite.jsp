<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="UTF-8">


 <c:if test="${favoriteInsert == 1}">
 	<script>  
 		alert("즐겨찾기가 등록 되었습니다.");
 		location.href="${uri}";
 	</script> 
 </c:if> 

 <c:if test="${favoriteDelete == 1}"> 
 	<script>  
 		alert("즐겨찾기가 해제 되었습니다.");
 		location.href="${uri}";
 	</script> 
 </c:if>