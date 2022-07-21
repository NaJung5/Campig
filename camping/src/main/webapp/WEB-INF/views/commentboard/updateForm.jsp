<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<script language="JavaScript" src="/resources/js/script.js" charset="UTF-8" ></script>
</head>

<body>
	<center><b>글수정</b></center>
	<form method="post" name="writeform" action="/commentboard/updatePro?pageNum=${pageNum}" onsubmit="return writeCheck()">
	
	<table width="500" border="1" cellspacing="0" cellpadding="0" align="center">
	 	<tr>
			<td width="100" align="center">작성자</td>
			<td>
				<input type="text" name="writer" value="${commentboard.writer}">
				<input type="hidden" name="boardnum" value="${ boardDTO.boardnum }">
				<input type="hidden" name="comnum" value="${ commentboardDTO.comnum }">
			</td>
		</tr>
	 	<tr>
	 		<td width="100" align="center">내용</td>
	 		<td>
	 			<textarea name="content" rows="20" cols="40" >${commentboard.content}</textarea>
	 		</td>
	 	</tr>
	 	<tr>
    		<td width="100" align="center" >비밀번호</td>
    		<td>
    			 <input type="password" name="password" value="${commentboard.password}"> 
	 		</td>
	  	</tr>
	  	<tr>      
	   		<td colspan=2 align="center"> 
	     		<input type="submit" value="등록" >  
	     		<input type="reset" value="다시쓰기">
	     		<input type="button" value="댓글목록보기" 
	       		onclick="document.location.href='/commentboard/list?pageNum=${pageNum}'">
	   		</td>
	 	</tr>
	</table>
	</form>     
</body>
</html> 