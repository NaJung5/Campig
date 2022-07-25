<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<html>
	<body>
		<center><b>글목록 (전체 글:${count}) </b></center>
			<table width="700" cellpadding="0" cellspacing="0" align="center">
				<tr>
					<td align="left"> 카테고리별 보기 : 
						<input type="button" value="캠핑장 후기" onclick="document.location.href='/board/campspot?category=1'"/>
						<input type="button" value="장비 후기" onclick="document.location.href='/board/equipment?category=2'"/>
						<input type="button" value="캠핑 요리" onclick="document.location.href='/board/recipe?category=3'"/>
						<input type="button" value="질문" onclick="document.location.href='/board/question?category=4'"/>
						<input type="button" value="팁" onclick="document.location.href='/board/tip?category=5'"/>
						<input type="button" value="건의사항" onclick="document.location.href='/board/suggestion?category=6'"/>
						<input type="button" value="공지사항" onclick="document.location.href='/board/notice?category=7'"/>
					</td>
				</tr>
			</table>
				<c:if test="${count == 0}">
					<table width="700" border="1" cellpadding="0" cellspacing="0" align="center">
						<tr>
						    <td align="center">
						    게시판에 저장된 글이 없습니다.
						    </td>
						</tr>
					</table>
				</c:if>
				
				<c:if test="${count != 0}">
					<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
					    <tr height="30" > 
						    <td align="center"  width="80"  >글번호</td>
						    <td align="center"  width="150" >카테고리</td> 
						    <td align="center"  width="250" >제목</td> 
						    <td align="center"  width="100" >작성자</td> 
						    <td align="center"  width="80"  >조회</td>
						    <td align="center"  width="150" >작성일시</td>    
					    </tr>
						
						<c:forEach var="board" items="${boardList}">
							<c:if test = "${board.status != 1 }">
								<tr height="30">
									<td align="center">
										${board.boardnum}
									</td>
										<c:if test="${board.category == 1}">
											<td align="center" width="80">캠핑장 후기</td>			         			
						         		</c:if>
						         		<c:if test="${board.category == 2}">
						         			<td align="center" width="80">장비 후기</td>
						         		</c:if>
						         		<c:if test="${board.category == 3}">
						         			<td align="center" width="80">캠핑 요리</td>
						         		</c:if>
						         		<c:if test="${board.category == 4}">
						         			<td align="center" width="80">질문</td>
						         		</c:if>
						         		<c:if test="${board.category == 5}">
						         			<td align="center" width="80">팁</td>
						         		</c:if>
						         		<c:if test="${board.category == 6}">
						         			<td align="center" width="80">건의사항</td>
						         		</c:if>
						         		<c:if test="${board.category == 7}">
				         					<td align="center" width="80">공지사항</td>
				         				</c:if>
						    		<td align="center" width="250" >  	    
						      			<a href="/board/content?boardnum=${board.boardnum}&pageNum=${currentPage}">
						           			${board.title}
							  			</a> 
						          	</td>
						          	<td align="center" width="100">
						          		${board.writer}
						          	</td>
						          	<td align="center" width="80">
						          		${board.readcount}
						          	</td>
						          	<td align="center" width="150">
						    			<fmt:formatDate type="date" pattern = "yyyy-MM-dd HH:mm:ss" value="${board.reg}" />
						    		</td>
						  		</tr>
					  		</c:if>
				  		</c:forEach>
					</table>
				</c:if>
				
				<table width="700" align="center">
					<tr>
					    <td align="right">
				    		<input type="button" value="글쓰기" onclick="document.location.href='/board/writeForm'" />
				    		<c:if test="${adId != null}">
				    			<input type="button" value="관리자글쓰기" onclick="document.location.href='/board/writeForm'" />
				    		</c:if>
				    	</td>
					</tr>
					<tr>
						<td align="center">
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
								<a href="/board/list?pageNum=${startPage - 10}">[이전]</a>
							</c:if>
							
							<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
								<a href="/board/list?pageNum=${i}">[${i}]</a>
							</c:forEach>
							
							<c:if test="${endPage < pageCount}">
								<a href="/board/list?pageNum=${startPage + 10}">[다음]</a>
							</c:if>
							</c:if>
						</td>
					</tr>
				</table>
	</body>
</html>