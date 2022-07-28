<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>체크리스트 수정</title>
		<script>
			function searchSpot(){
				search = "/prod/searchSpot"
				window.open(search, "search", "width=400, height=300");
			}
		</script>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../../resources/css/main.css" />
		<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
	</head>		
	<body>		
		<form name="check" action="chModifyPro" method="post" >
			<input type = "hidden" name = "id" value = "${memId}" />
			<input type = "hidden" name = "status" value = "${status}" />
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
			<input type="number" name="price" required />
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
		<script src="../resources/js/jquery.min.js"></script>
		<script src="../resources/js/browser.min.js"></script>
		<script src="../resources/js/breakpoints.min.js"></script>
		<script src="../resources/js/util.js"></script>
		<script src="../resources/js/main.js"></script>
	</body>
</html>