<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script>
			function searchSpot(){
				search = "/prod/searchSpot"
				window.open(search, "search", "width=400, height=300");
			}
		</script>
	</head>
	<body>
		<c:if test="${result==3}">
			<script>
				alert("체크리스트 저장공간이 없습니다");
				window.location="/member/myPage?id=${memId}"
			</script>
		</c:if>
		<!-- 설문 했을경우 -->
		<c:if test="${season != null}">
			<form name="check" action="/prod/checklist" method="post" >
				<input type="text" name="sitename" onclick="searchSpot()"/>
				<input type="hidden" name="sitenum" value="" />
				<input type="button" value="캠핑장찾기" onclick="searchSpot()"/>
				<br/>
				<input type="hidden" name="season" value="${season}" />
				<input type="hidden" name="person" value="${person}" />
				<input type="hidden" name="equipments" value="${equipments}" />
				<input type="number" name="price" required /> 1인 40만원 / 4인 100만원
				<br/>
				<input type="submit" value="검색"/>
			</form>
		</c:if>
		<!-- 설문이 없을 경우 있으면 생략 -->
		<c:if test="${season == null}">
			<form name="check" action="/prod/checklist" method="post" >
				<input type="text" name="sitename" onclick="searchSpot()"/>
				<input type="hidden" name="sitenum" value="" />
				<input type="button" value="캠핑장찾기" onclick="searchSpot()"/>
				<br/>
				<input type="radio" id="1" name="person" value="1" checked />
				<label for="1">1~2인</label>
				<input type="radio" id="2" name="person" value="2"  />
				<label for="2">3~4인</label>
				<input type="radio" id="3" name="person" value="3"  />
				<label for="3">5인이상</label>
				<br/>
				<input type="radio" id="4" name="season" value="1" checked  />
				<label for="4">봄/가을</label>
				<input type="radio" id="5" name="season" value="2"  />
				<label for="5">여름</label>
				<input type="radio" id="6" name="season" value="3"  />
				<label for="6">겨울</label>
				<br/>
				<input type="number" name="price" required /> 1인 40만원 / 4인 100만원
				<br/>
				<input type="checkbox" id="7" name="equipments" value="1"  />
				<label for="7">텐트</label>
				<input type="checkbox" id="8" name="equipments" value="2"  />
				<label for="8">타프</label>
				<input type="checkbox" id="9" name="equipments" value="3"  />
				<label for="9">아이스박스</label>
				<input type="checkbox" id="10" name="equipments" value="4"  />
				<label for="10">취사도구</label>
				<input type="checkbox" id="11" name="equipments" value="5"  />
				<label for="11">랜턴</label>
				<input type="checkbox" id="12" name="equipments" value="6"  />
				<label for="12">매트</label>
				<input type="checkbox" id="13" name="equipments" value="7"  />
				<label for="13">침낭</label>
				<input type="checkbox" id="14" name="equipments" value="8"  />
				<label for="14">의자</label>
				<input type="checkbox" id="15" name="equipments" value="9"  />
				<label for="15">테이블</label>
				<input type="hidden" name="equipments" value="0"  />
				<br/>
				<input type="submit" value="검색"/>
			</form>
		</c:if>
	</body>
</html>