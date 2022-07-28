<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<title>회원 작성 게시글</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../resources/css/main.css" />
<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
</head>


<body >
	<%@include file="../headNavBar.jsp"%>
		<c:forEach var="info" items="${info}">
			<div align = "center">
				<input type="submit"  value="정보수정">
				<input type="button"  value="작성글 목록" onclick="window.location='/member/myBoard?nickname=${info.nickname}'">
				<input type="button"  value="체크리스트" onclick="window.location='/member/checklist?status=1'">
				<input type="button"  value="즐겨찾기" onclick="window.location='/member/favorite'">
				<input type="button" value="회원탈퇴" onclick="window.location='/member/deleteForm'">
				<input type="button" onclick="location.href='../home'" value="홈으로"/>
			</div>	
		</c:forEach>			
		<h1 align = "center">${memId}님의 작성 글</h1>
		<c:if test="${count == 0}">
			<table>
				<tr>
				    <td>
				    게시판에 저장된 글이 없습니다.
				    </td>
				</tr>
			</table>
		</c:if>
		<c:if test="${count > 0}">
			<table> 
			    <tr height="30"> 
			      <td align="center"  width="50"  >번 호</td> 
			      <td align="center"  width="250" >제   목</td> 
			      <td align="center"  width="100" >작성자</td>
			      <td align="center"  width="150" >작성일</td> 
			      <td align="center"  width="50" >조 회</td>   
			    </tr>
				<c:forEach var="board" items="${list}">
					<tr height="30">
						<td align="center"  width="50" >
							${board.boardnum}
			    		</td>
			    		<td  width="250" >
			      			<a href="/board/content?boardnum=${board.boardnum}&pageNum=${currentPage}&category=${board.category}">
			           			${board.title}
				  			</a> 
						</td>
			    		<td align="center"  width="100"> 
			       			${board.writer}
			       		</td>
			    		<td align="center"  width="150">
			    			<fmt:formatDate type="date" dateStyle="short" value="${board.reg}" />
			    		</td>
			    		<td align="center"  width="50">${board.readcount}</td>
			  		</tr>
		  		</c:forEach>
			</table>
		</c:if>
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
				<a href="/member/myBoard?pageNum=${startPage - 10}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
				<a href="/member/myBoard?pageNum=${i}">[${i}]</a>
			</c:forEach>
			<c:if test="${endPage < pageCount}">
				<a href="/member/myBoard?pageNum=${startPage + 10}">[다음]</a>
			</c:if>
		</c:if>
	</body>
</html>