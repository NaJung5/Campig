<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<script>
function deletecheck() {
	if(document.deleteForm.writer.value == "") {
		return false;
	}
}
</script>

</head>
	<center><b>글삭제</b></center>
	<form method="post" name="deleteForm" action="/board/deletePro?pageNum=${pageNum}&boardnum=${boardnum}" onsubmit="return deletecheck()" >
   	<table border="1" align="center" cellspacing="0" cellpadding="0" width="360"> 
		<tr height="50">
			<td align="center">
				<input type="hidden" name="writer" value="${memId}" >
				<input type="submit" value="삭제하기">
				<input type="button" value="글목록"
				onclick="document.location.href='/board/list?pageNum=${pageNum}'">
			</td>
		</tr>
	</table>
	</form>
</html>