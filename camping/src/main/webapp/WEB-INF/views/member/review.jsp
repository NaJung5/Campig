<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
</head>

<body>
<h1>
1:${site.num}
2:${tent.num }
3:${site}
4:${waterjug }

</h1>
<form  method = "post">
	<table>
		<tr>
			<h1>리뷰를 작성해주세요</h1>
			<td>
				<button value = "site">캠핑장 후기 작성</button>
			</td>
		</tr>
		<tr>
		
				<td>
					<a href = "/member/review2?id=${memId}&category=1&status=${st.status}&reCountCamp=1">캠핑장</a>
				</td>
		
			<c:if test = "${tent.num != null }">
				<td>
					<a href = "/member/review2?id=${memId}&category=2&status=${st.status}">텐트</a>
				</td>
			</c:if>
			<c:if test = "${taf.num != null }">	
				<td>
					<a href = "/member/review2?id=${memId}&category=3&status=${st.status}">타프</a>
				</td>
			</c:if>
			<c:if test = "${waterjug.num >= 1}">	
				<td>
					<a href = "/member/review2?id=${memId}&category=4&status=${st.status}">아이스박스</a>
				</td>
			</c:if>
			<c:if test = "${stove.num != null }">	
				<td>
					<a href = "/member/review2?id=${memId}&category=5&status=${st.status}">화구</a>
				</td>
			</c:if>
			<c:if test = "${light.num != null }">	
				<td>
					<a href = "/member/review2?id=${memId}&category=6&status=${st.status}">조명</a>
				</td>
			</c:if>
			<c:if test = "${mat.num != null }">	
				<td>
					<a href = "/member/review2?id=${memId}&category=7&status=${st.status}">매트</a>
				</td>
			</c:if>
			<c:if test = "${sb.num != null }">
				<td>
					<a href = "/member/review2?id=${memId}&category=8&status=${st.status}">침낭</a>
				</td>
			</c:if>
			<c:if test = "${chait.num != null }">	
				<td>
					<a href = "/member/review2?id=${memId}&category=9&status=${st.status}">의자</a>
				</td>
			</c:if>
			<c:if test = "${desk.num != null }">	
				<td>
					<a href = "/member/review2?id=${memId}&category=10&status=${st.status}">테이블</a>
				</td>
			</c:if>
			<c:if test = "${gag.num != null }">	
				<td>
					<a href = "/member/review2?id=${memId}&category=11&status=${st.status}">연료</a>
				</td>
			</c:if>	
		</tr>
		<tr>
			<td>
				<a href = "/member/deleteCh?id=${memId}&status=${st.status}" >삭제</a>
			</td>
		</tr>
	</table>

</form>
</body>
</html>