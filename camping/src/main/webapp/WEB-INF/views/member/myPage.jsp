<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="../../resources/css/main.css" />
	<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
	<body>
	<%@include file="../headNavBar.jsp"%>
		<c:if test="${memId != null}">
			<c:forEach var="info" items="${list}">
			    <form  method="post" action="/member/myInfo?id=${memId}">  
					<div align = "center">
						<input type="submit"  value="정보수정">
						<input type="button"  value="작성글 목록" onclick="window.location='/member/myBoard?nickname=${info.nickname}'">
						<input type="button"  value="체크리스트" onclick="window.location='/member/checklist?status=1'">
						<input type="button"  value="즐겨찾기" onclick="window.location='/member/favorite'">
						<input type="button" value="회원탈퇴" onclick="window.location='/member/deleteForm'">
						<input type="button" onclick="location.href='../home'" value="홈으로"/>
					</div>	
					<table>
				       	<tr>
				           	<td >
				             	${memId} 님의 마이페이지
				            </td> 	
				        </tr>      
						<tr>
							<td>별명</td>
				           	<td >
				             	${info.nickname}
				            </td>
				        </tr>
						<tr>
							<td>Email</td>
				           	<td >
				             	${info.mail1}@${info.mail2}
				            </td>
				        </tr> 
				        <tr>
							<td>주소</td>
				           	<td >
				             	${info.adrs}
				            </td>
			
				        </tr>
				        <tr>
							<td>생일</td>
				           	<td >
				             	<fmt:formatDate value="${info.birth}" pattern="yyyy년MM월dd일" />
				            </td>
				        </tr> 
				        <tr>
							<td>자동차</td>
				           	<td >
				             	<c:if test = "${info.car == 0 }">
				             		보유중
				             	</c:if>
				             	<c:if test = "${info.car == 1 }">
				             		미보유
				             	</c:if>
				            </td>	        
				        </tr>
				     </table>
			    </form>
			</c:forEach>
		</c:if>   
		<c:if test = "${memId == null}">
			<script>
				alert("비정상적인 접근입니다.");
				window.location="/main";
			</script>
		</c:if> 
		<script src="../resources/js/jquery.min.js"></script>
		<script src="../resources/js/browser.min.js"></script>
		<script src="../resources/js/breakpoints.min.js"></script>
		<script src="../resources/js/util.js"></script>
		<script src="../resources/js/main.js"></script>	 	
	</body>
</html>