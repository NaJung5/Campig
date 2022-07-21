<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>건의사항 게시판</title>

<script>
function sgdeletecheck() {
	if(document.sgdeleteForm.password.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.sgdeleteForm.password.focus();
		return false;
	}
}
</script>

</head>
	<center><b>글삭제</b></center>
	<form method="post" name="sgdeleteForm" action="/board/sgdeletePro?pageNum=${pageNum}&boardnum=${boardnum}" onsubmit="return sgdeletecheck()" >
   	<table border="1" align="center" cellspacing="0" cellpadding="0" width="360"> 
		<tr height="50">
			<td align="center">
				<b>비밀번호를 입력해주세요.</b>
			</td>
		</tr>
		<tr height="50">
			<td align="center">비밀번호 :
				<input type="password" name="password"  >	
			</td>
		</tr>
		<tr height="50">
			<td align="center">
				<input type="submit" value="삭제하기">
				<input type="button" value="글목록"
				onclick="document.location.href='/board/suggestion?pageNum=${pageNum}'">
			</td>
		</tr>
	</table>
	</form>
</html>