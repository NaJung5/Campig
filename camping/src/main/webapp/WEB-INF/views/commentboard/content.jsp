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
	<center><b>댓글</b></center>
	<table width="500" border="1" cellspacing="0" cellpadding="0" align="center" colspan="6" rowspan=""5>
		<tr>
			<td align="center" >댓글번호</td>
			<td align="center" >${commentboard.comnum}</td>
		</tr>
		<tr>
    		<td align="center" >작성자</td>
    		<td align="center" >${commentboard.writer}</td>
    		<td align="center" >작성일시</td>
    		<td align="center">
    			<fmt:formatDate type="date" pattern = "yyyy-MM-dd HH:mm:ss" value="${commentboard.reg}" /></td>
  		</tr>
		<tr>
			<td width="80" align="center">댓글내용</td>
			<td colspan="5">${ commentboard.content }</td>
		</tr>
		  		<tr>
			<td width="80" align="center">비밀번호</td>
			<td colspan="5">${ commentboard.password }</td>
		</tr>
		<tr>
			<td colspan="6" align="center">
				<input type="button" value="댓글수정"
				onclick="document.location.href='/commentboard/updateForm?comnum=${commentboard.comnum}&pageNum=${pageNum}'" />
				<input type="button" value="댓글삭제"
				onclick="document.location.href='/commentboard/deleteForm?comnum=${commentboard.comnum}&pageNum=${pageNum}'" />
				<input type="button" value="댓글목록"
				onclick="document.location.href='/commentboard/list?pageNum=${pageNum}'" />
			</td>
		</tr>
	</table>
</body>
</html>