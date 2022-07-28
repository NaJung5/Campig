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
	<%@include file="../headNavBar.jsp"%>
		
		<center><b>글내용</b></center>
			<table width="500" border="1" cellspacing="0" cellpadding="0" align="center" colspan="6" rowspan="5">
				<tr>
					<td width="100" align="center">카테고리</td>
						<c:if test="${board.category == 1}">
							<td colspan="4">캠핑장 후기</td>			         			
		         		</c:if>
		         		<c:if test="${board.category == 2}">
		         			<td colspan="4">장비 후기</td>
		         		</c:if>
		         		<c:if test="${board.category == 3}">
		         			<td colspan="4">캠핑 요리</td>
		         		</c:if>
		         		<c:if test="${board.category == 4}">
		         			<td colspan="4">질문</td>
		         		</c:if>
		         		<c:if test="${board.category == 5}">
		         			<td colspan="4">팁</td>
		         		</c:if>
		         		<c:if test="${board.category == 6}">
		         			<td colspan="4">건의사항</td>
		         		</c:if>
		         		<c:if test="${board.category == 7}">
		         			<td colspan="4">공지사항</td>
		         		</c:if>
				<tr/>
				<tr>
					<td width="50" align="center" >글번호</td>
					<td width="50" >${board.boardnum}</td>
					<td width="150" align="center" >조회수</td>
					<td width="150" >${board.readcount}</td>
				</tr>
				<tr>
		    		<td width="50" align="center" >작성자</td>
		    		<c:choose>
		    			<c:when test = "${category != 6}">
		    				<td width="50" >${board.writer}</td>
		    			</c:when>
		    			<c:when test ="${(category == 6) == (board.writer == nick)}">
		    				<td width="50" >${board.writer}</td>
		    			</c:when>
		    			<c:when test ="${(category == 6) != (board.writer == nick)}">
		    				<td width="50" >익명</td>
		    			</c:when>
		    		</c:choose>
		    		
		    		<td width="50" align="center" >작성일시</td>
		    		<td width="50" align="center">
		    			<fmt:formatDate type="date" pattern = "yyyy-MM-dd HH:mm:ss" value="${board.reg}" /></td>
		  		</tr>
		  		<tr>
					<td width="100" align="center">제목</td>
					<td colspan="4">${board.title}</td>
				</tr>
				<tr>
					<td width="100" align="center">글내용</td>
					<td colspan="4">${board.content}</td>
				</tr>
				<tr>
					<c:if test="${board.image != NULL}">
						<td width="100" align="center">첨부파일</td>
						<td>	
			     			<img src="/resources/img/${board.image}" width="300" />
			     		</td>
		     		</c:if>
					<c:if test="${board.image == NULL}">
					</c:if>
				</tr>
				<tr>
					<td colspan="6" align="center">
					<c:if test="${board.writer == nick }">
						<input type="button" value="글수정"
						onclick="document.location.href='/board/updateForm?boardnum=${board.boardnum}&pageNum=${pageNum}'" />
						<input type="button" value="글삭제"
						onclick="document.location.href='/board/deleteForm?boardnum=${board.boardnum}&pageNum=${pageNum}'" />
					</c:if>
					<c:if test="${ nick != null }">
						<form method = "post" action = "../commentboard/writePro">
							<table width="500" border="1" cellspacing="0" cellpadding="0" align="center">
								<tr>
									<td width="100" align="center">작성자</td>
									<td>${nick}</td>
								</tr>
						  		<tr>
						    		<td width="100" align="center" >내용</td>
						    		<td><textarea name="content" rows="1" cols="5" ></textarea></td>
						  		</tr>
						  		<tr>      
						 			<td colspan=2 align="center"> 
						 				<input type = "hidden" name = "writer" value = "${nick}" >
						 				<input type = "hidden" name = "boardnum" value = "${board.boardnum }" >
										<input type="submit" value="댓글등록" >
						 				<input type="reset" value="다시쓰기">
									</td>
								</tr>
							</table>
						</form>
					</c:if>
					</td>
				</tr>
			</table>
			
			<c:if test="${count != 0}" >
				<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
				    <tr height="30" > 
				      <td align="center"  width="80"  >댓글번호</td>
				      <td align="center"  width="100" >작성자</td>
				      <td align="center"  width="100" >댓글내용</td>
				      <td align="center"  width="150" >작성일시</td>   
				      <td align="center"  width="150" >삭제</td>
				    </tr>
					
					<c:forEach var="commentboard" items="${boardList}">
						<tr height="30">
							<td align="center">
								${commentboard.comnum}
							<td width="100" align="center" >
				          		${commentboard.writer}
				          	</td>
				          	<td width="100" align="center" >
				          		${commentboard.content}
				          	</td>	    		
				    		<td align="center" width="150">
				    			<fmt:formatDate type="date" pattern = "yyyy-MM-dd HH:mm:ss" value="${commentboard.reg}" />
				    		</td>
				    		<c:if test="${commentboard.writer == nick}">
				    			<td align="center" width="50">
				    				<button onclick="window.location='/commentboard/deleteForm?comnum=${commentboard.comnum}&writer=${commentboard.writer}'">삭제</button>
				    			</td>
				  			</c:if>
				  		</tr>
			  		</c:forEach>
				</table>
			</c:if>		
	</body>
</html>