<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>

</head>

	<center><b>댓글쓰기 ${boardnum}</b></center>
	<form name="writeform" action="/commentboard/writePro" >
		<input type="hidden" name="boardnum" value="${boardnum }">
		
	
	<table width="500" border="1" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td width="100" align="center">작성자</td>
			<td>
				${sessionScope.memId}
				<input type="hidden" name="writer" value="${sessionScope.memId}">
			</td>
		</tr>
  		<tr>
    		<td width="100" align="center" >내용</td>
    		<td>
     			<textarea name="content" rows="20" cols="40" ></textarea> 
     		</td>
  		</tr>
  		<tr>
    		<td width="100" align="center" >비밀번호</td>
    		<td>
    			 <input type="password" name="password"> 
	 		</td>
  		</tr>
  		<tr>      
 			<td colspan=2 align="center"> 
  				<input type="submit" value="등록" >  
 				<input type="reset" value="다시쓰기">
			</td>
		</tr>
	</table>
	</form>
</html>