<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>       
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 관리</title>
	</head>
	<body>
		<!-- 리스트 내역 -->
		<table border="1">
			<tr>
				<th>아이디</th>

				<th>별명</th>
				<th>주소</th>	
				<th>성별</th>
				<th>이메일</th>
				<th>비밀번호 찾기 질문</th>
				<th>질문 답</th>
				<th>가입일자</th>
				<th>로그인시간</th>
				<th>상태</th>
				<th>삭제</th>		
			</tr>
			<c:if test="${count == 0}">
				<div>내역이 없습니다</div>
			</c:if>
			<c:if test="${count >0}">
				<c:forEach var="mem" items="${list}">
					<tr>
						<td>${mem.id}</td>
						<td>${mem.nickname}</td>
						<td>${mem.adrs}</td>
						<c:if test = "${mem.gender == 0 }">
							<td>남자</td>
						</c:if>
						<c:if test = "${mem.gender == 1 }">
							<td>여자</td>
						</c:if>
						<td>${mem.mail1}@${mem.mail2}</td>
						<c:if test = "${mem.question == 1 }">
							<td>보물 1호</td>
						</c:if>
						<c:if test = "${mem.question == 2 }">
							<td>부모님 성함</td>
						</c:if>
						<c:if test = "${mem.question == 3 }">
							<td>친한친구 이름</td>
						</c:if>
						<td>${mem.ans}</td>
						<td><fmt:formatDate value="${mem.reg}" pattern="yyyy년MM월dd일" /></td>
						<td><fmt:formatDate value="${mem.logintime }" pattern="yyyy년MM월dd일" /></td>
						<c:if test = "${mem.status == 0 }">
							<td>탈퇴</td>
						</c:if>
						<c:if test = "${mem.status == 1 }">
							<td>가입</td>
						</c:if>
						<c:if test = "${mem.status == 2 }">
							<td>관리자</td>
						</c:if>
						<td>
						<c:if test = "${mem.status != 2 }">
							<form action="/adMem/update" method="post" >
								<select name="status" >
									<option value="0" <c:if test="${mem.status==0}" >selected="selected"</c:if>>복구</option>
									<option value="1" <c:if test="${mem.status==1}" >selected="selected"</c:if>>삭제</option>
								</select>
								<input type="hidden" name="id" value="${mem.id}" />
								<input type="hidden" name="status" value="${mem.status}" />
								<input type="submit" value="적용" />
							</form>
						</c:if>	
						</td>
					</tr>	
				</c:forEach>
			</c:if>	
		</table>
		<div>	
			<form name="idSerch" action="/adMem/idSerch" onsubmit="">
				<input type="text" name="idSerch"/>
				<input type="submit" value="검색"/>
			</form>
		</div>
		<hr/>
		<!-- 페이징 -->
		<c:if test="${count > 0}">
			<c:if test="${startPage>10}">
				<a href="/adMem/list?pageNum=${startPage-10}" >[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
				<a href="/adMem/list?pageNum=${i}" >[${i}]</a>
			</c:forEach>
			<c:if test="${endPage < pageCount}">
				<a href="/adMem/list?pageNum=${startPage+10}" >[다음]</a>
			</c:if>
		</c:if>
		
	</body>
</html>