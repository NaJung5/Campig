<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<html>
<head>
<meta charset="UTF-8">
<title>글목록</title>
</head>

<body>


<center><b>댓글목록(전체 수:${count})</b></center>

	<c:if test="${count == 0}">
		<table width="700" border="1" cellpadding="0" cellspacing="0" align="center">
			<tr>
			    <td align="center">
			    저장된 댓글이 없습니다.
			    </td>
			</tr>
		</table>
	</c:if>
	
	<c:if test="${count != 0}">
		<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
		    <tr height="30" > 
		      <td align="center"  width="80"  >댓글번호</td>
		      <td align="center"  width="100" >작성자</td>
		      <td align="center"  width="100" >댓글내용</td>
		      <td align="center"  width="150" >작성일시</td>    
		    </tr>
			
			<c:forEach var="board" items="${commentboardList}">
				<tr height="30">
					<td align="center">
						${number}
						<c:set var="number" value="${number-1}" />
		          	<td width="100">
		          		${commentboard.writer}
		          	</td>
		          	<td width="100">
		          		${commentboard.content}
		          	</td>	    		
		    		<td align="center" width="150">
		    			<fmt:formatDate type="date" pattern = "yyyy-MM-dd HH:mm:ss" value="${commentboard.reg}" />
		    		</td>
		  		</tr>
	  		</c:forEach>
		</table>
	</c:if>
	
	<table width="700" align="center">
		<tr>
		    <td align="right">
		    	<input type="button" value="댓글쓰기" onclick="document.location.href='/commentboard/writeForm'" />
		    </td>
		</tr>
	</table>
	
	<c:if test="${count > 0}">
		<c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}" />	
		<fmt:parseNumber var="result" value="${currentPage/10}" integerOnly="true" />
		<c:set var="startPage" value="${result*10+1}" />
		<c:set var="pageBlock" value="${10}" />
		<c:set var="endPage" value="${startPage + pageBlock-1}" />
		<c:if test="${endPage > pageCount}">
			<c:set var="endPage" value="${pageCount}" />
		</c:if>
	
		<c:if test="${startPage > 10}">
			<a href="/commentboard/list?pageNum=${startPage - 10}">[이전]</a>
		</c:if>
	
		<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			<a href="/commentboard/list?pageNum=${i}">[${i}]</a>
		</c:forEach>
	
		<c:if test="${endPage < pageCount}">
			<a href="/commentboard/list?pageNum=${startPage + 10}">[다음]</a>
		</c:if>
	</c:if>
</body>
</html>
	