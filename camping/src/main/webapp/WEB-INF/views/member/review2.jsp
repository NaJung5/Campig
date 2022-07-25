<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
</head>

<body>

	<%--캠핑장 리뷰 --%>
	<c:if test="${category == 1 }">
		<form action="reviewPro">
			<input type="hidden" name="id" value="${memId}" />
			<input type="hidden" name="status" value="${st.status}" /> 
			<input type="hidden" name="category" value="1" /> 
			<input type="hidden" name="num" value="${site.num }" />
			<table>
				<tr>
					<img src="${site.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${site.name}후기작성</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--텐트 리뷰 --%>
	<c:if test="${category == 2}">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" />
			<input type="hidden" name="status" value="${st.status}" />
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${tent.num }" />
			<table>
				<tr>
					<img src="${tent.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${tent.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--타프 리뷰 --%>
	<c:if test="${category == 3 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" /> 
			<input type="hidden" name="status" value="${st.status}" />
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${taf.num }" /> 
			<table>
				<tr>
					<img src="${taf.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${taf.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--아이스박스 리뷰 --%>
	<c:if test="${category == 4 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" />
			<input type="hidden" name="status" value="${st.status}" /> 
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${waterjug.num }" />
			<table>
				<tr>
					<img src="${waterjug.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${waterjug.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%-- 화구 리뷰 --%>
	<c:if test="${category == 5 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" />
			 <input type="hidden" name="status" value="${st.status}" /> 
			 <input type="hidden" name="category" value="0" />
			 <input type="hidden" name="num" value="${stove.num }" />
			<table>
				<tr>
					<img src="${stove.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${stove.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--조명 리뷰 --%>
	<c:if test="${category == 6 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" /> 
			<input type="hidden" name="status" value="${st.status}" /> 
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${light.num }" />
			<table>
				<tr>
					<img src="${light.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${light.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--매트 리뷰 --%>
	<c:if test="${category == 7 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" />
			<input type="hidden" name="status" value="${st.status}" />
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${mat.num }" />
			<table>
				<tr>
					<img src="${mat.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${mat.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--침낭 리뷰 --%>
	<c:if test="${category == 8 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" /> 
			<input type="hidden" name="status" value="${st.status}" />
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${sb.num }" />
			<table>
				<tr>
					<img src="${sb.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${sb.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--의자 리뷰 --%>
	<c:if test="${category == 9 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" /> 
			<input type="hidden" name="status" value="${st.status}" /> 
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${chair.num }" />
			<table>
				<tr>
					<img src="${chair.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${chair.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--테이블 리뷰 --%>
	<c:if test="${category == 10 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" /> 
			<input type="hidden" name="status" value="${st.status}" /> 
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${desk.num }" />
			<table>
				<tr>
					<img src="${desk.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${desk.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
	<%--연료 리뷰 --%>
	<c:if test="${category == 11 }">
		<form action="reviewPro" method="post">
			<input type="hidden" name="id" value="${memId}" /> 
			<input type="hidden" name="status" value="${st.status}" /> 
			<input type="hidden" name="category" value="0" />
			<input type="hidden" name="num" value="${site.num }" />
			<table>
				<tr>
					<img src="${gas.image}" height="300" width="400">
				</tr>

				<tr>
					<td>${gas.title}</td>
				</tr>
				<tr>
					<td>별점</td>
					<td><input type=radio name="score" id="1" value = "1" /> <label for="1">1점</label></td>
					<td><input type=radio name="score" id="2" value = "2" /> <label for="2">2점</label></td>
					<td><input type=radio name="score" id="3" value = "3" /> <label for="3">3점</label></td>
					<td><input type=radio name="score" id="4" value = "4" /> <label for="4">4점</label></td>
					<td><input type=radio name="score" id="5" value = "5" /> <label for="5">5점</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td>후기</td>
					<td><textarea name="content" rows="20" cols="100"></textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="작성" />
		</form>
	</c:if>
</body>
</html>