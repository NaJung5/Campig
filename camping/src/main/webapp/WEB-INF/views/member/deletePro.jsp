<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>
<head>
<title>회원탈퇴</title>
</head>
<c:if test="${result == 1}">
	<c:remove var="memId" scope="session" />	
	<table>
		<tr> 
	    	<td >
		  		<font size="+1" ><b>회원정보가 삭제되었습니다.</b></font>
		  	</td>
		</tr>
		<tr>
		    <td> 
		    	<input type="button" value="확인" onclick="window.location='/home'">
		    </td>
	 	</tr>
	</table>
</c:if>
<c:if test="${result != 1}">
	<script> 
		alert("비밀번호가 맞지 않습니다.");
	    history.go(-1);
	</script>
</c:if>
</body>