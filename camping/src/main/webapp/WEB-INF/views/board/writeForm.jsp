<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
	<head>
		<meta charset="UTF-8">
		<title>글쓰기</title>
		
		<script language="JavaScript" src="/resources/js/script.js" charset="UTF-8" ></script>
	
	</head>
	
	<body>
	<%@include file="../headNavBar.jsp"%>
		<center><b>글쓰기 </b></center>
		<form name="writeform" action="/board/writePro" method="post" onsubmit="return writeSave()" enctype="multipart/form-data" >
			<input type="hidden" name="boardnum" value="${ boardDTO.boardnum }">
			
			<table width="500" border="1" cellspacing="0" cellpadding="0" align="center">
				<tr>
					<td width="100" align="center">카테고리</td>
					<td>
						<select name="category" >
							<option value="1" selected>캠핑장 후기</option>
							<option value="2">장비 후기</option>
							<option value="3">캠핑 요리</option>
							<option value="4">질문</option>
							<option value="5">팁</option>
							<option value="6">건의사항</option>
							<option value="7">공지사항</option>       
			         	</select>
			         		<c:if test="${category == 1}">
			         			캠핑장 후기
			         		</c:if>
			         		<c:if test="${category == 2}">
			         			장비 후기
			         		</c:if>
			         		<c:if test="${category == 3}">
			         			캠핑 요리
			         		</c:if>
			         		<c:if test="${category == 4}">
			         			질문
			         		</c:if>
			         		<c:if test="${category == 5}">
			         			팁
			         		</c:if>
			         		<c:if test="${category == 6}">
			         			건의사항
			         		</c:if>
			         		<c:if test="${category == 7}">
			         			공지사항
			         		</c:if>
			        </td>
				</tr>
		  		<tr>
					<td width="100" align="center" >제목</td>
		    		<td>
		    			<input type="text" name="title">
		    		</td>
		  		</tr>
		  		<tr>
					<td width="100" align="center">작성자</td>
					<td>
						<c:if test="${memId != null}">
							${nick}
						<input type="hidden" name="writer" value="${nick}">
						</c:if>
						<c:if test="${adId != null}">
							${sessionScope.adId}
						<input type="hidden" name="writer" value="${sessionScope.adId}">
						</c:if>
					</td>
				</tr>
		  		<tr>
		    		<td width="100" align="center" >내용</td>
		    		<td>
		     			<textarea name="content" rows="15" cols="15" ></textarea> 
		     		</td>
		  		</tr>
		  		<tr>
		    		<td width="100" align="center" >첨부파일</td>
		    		<td>
		     			<input type="file" name="img" >
		     		</td>
		  		</tr>  					
		  		<tr>      
		 			<td colspan=2 align="center"> 
		  				<input type="submit" value="등록" >  
		 				<input type="reset" value="다시 쓰기">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>