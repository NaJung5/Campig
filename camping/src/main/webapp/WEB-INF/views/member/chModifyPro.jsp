<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script>
			// 자동계산 기능 - equip클래스의 체크된 부분을 세서 그 값을 반복문으로 합산
			function itemSum(){
				var sum = 0;
				var count = $(".equip").length;
				for(var i = 0; i < count; i++){
					if($(".equip")[i].checked == true){
						var price =parseInt($(".equip")[i].value.split("_")[1]);
						sum += price;

					}
				}
				$("#total").html(sum);
				document.getElementById("total_price").value = sum;
			}
			// equip클래스 값을 장비 고유번호로 바꿔주는 기능
			function changeValue(){
				var count = $(".equip").length;
				for(var i = 0; i < count; i++){
					if($(".equip")[i].checked == true){
						$(".equip")[i].value = parseInt($(".equip")[i].value.split("_")[0]);
					}
				}
			}
		</script>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../../resources/css/main.css" />
		<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
	</head>
	<body>
		<form action="chModifyPro2" method="post" onsubmit="return changeValue();">
			<c:if test="${!tentCheck}">
				<c:forEach var="tent" items="${tent}" >
					<img src="${tent.image}" height="100" width="100" />
					<input class="equip" type="radio" id="1" name="tent" value="${tent.num}_${tent.price}" onclick="itemSum()" />
					<label for="1">${tent.price}</label>
					<br/>
				</c:forEach>
				<hr>	
			</c:if>
			<c:if test="${!tafCheck}">
				<c:if test="${taf != null}">
					<c:forEach var="taf" items="${taf}">
						<img src="${taf.image}" height="100" width="100" />
						<input class="equip" type="radio" id="2" name="taf" value="${taf.num}_${taf.price}" onclick="itemSum()" />
						<label for="2" >${taf.price}</label>
						<br/>
					</c:forEach>
					<hr>
				</c:if>
			</c:if>
			<c:if test="${!waterCheck}">
				<c:forEach var="waterjug" items="${waterjug}">
					<img src="${waterjug.image}" height="100" width="100" />
					<input class="equip" type="radio" id="3" name="waterjug" value="${waterjug.num}_${waterjug.price}" onclick="itemSum()" />
					<label for="3" >${waterjug.price}</label>
					<br/>
				</c:forEach>
				<hr>
			</c:if>
			<c:if test="${!stoveCheck}">
				<c:forEach var="stove" items="${stove}">
					<img src="${stove.image}" height="100" width="100" />
					<input class="equip" type="radio" id="4" name="stove" value="${stove.num}_${stove.price}" onclick="itemSum()" />
					<label for="4" >${stove.price}</label>
					<br/>
				</c:forEach>
				<hr>	
			</c:if>
			<c:if test="${!lightCheck}">
				<c:forEach var="light" items="${light}">
					<img src="${light.image}" height="100" width="100" />
					<input class="equip" type="radio" id="5" name="light" value="${light.num}_${light.price}" onclick="itemSum()" />
					<label for="5" >${light.price}</label>
					<br/>
				</c:forEach>
				<hr>
			</c:if>
			<c:if test="${!matCheck}">
				<c:forEach var="mat" items="${mat}">
					<img src="${mat.image}" height="100" width="100" />
					<input class="equip" type="radio" id="6" name="mat" value="${mat.num}_${mat.price}" onclick="itemSum()" />
					<label for="6" >${mat.price}</label>
					<br/>
				</c:forEach>
				<hr>
			</c:if>
			<c:if test="${!sbCheck}">
				<c:forEach var="sb" items="${sb}">
					<img src="${sb.image}" height="100" width="100" />
					<input class="equip" type="radio" id="7" name="sb" value="${sb.num}_${sb.price}" onclick="itemSum()" />
					<label for="7" >${sb.price}</label>
					<br/>
				</c:forEach>
				<hr>
			</c:if>
			<c:if test="${!chairCheck}">
				<c:forEach var="chair" items="${chair}">
					<img src="${chair.image}" height="100" width="100" />
					<input class="equip" type="radio" id="8" name="chair" value="${chair.num}_${chair.price}" onclick="itemSum()" />
					<label for="8" >${chair.price}</label>
					<br/>
				</c:forEach>
				<hr>
			</c:if>
			<c:if test="${!tableCheck}">
				<c:forEach var="desk" items="${desk}">
					<img src="${desk.image}" height="100" width="100" />
					<input class="equip" type="radio" id="9" name="desk" value="${desk.num}_${desk.price}" onclick="itemSum()" />
					<label for="9" >${desk.price}</label>
					<br/>
				</c:forEach>
				<hr>
			</c:if>
				<h1>${memId },${status }</h1>
	
			<div id="total"></div>
			<input type="hidden" id="total_price" name="price" value="" />
			<input type="hidden" name="id" value="${memId}">
			<input type="hidden" name="status" value="${status}" />
			<input type="submit" value="확인"/>
		</form>
		<script src="../resources/js/jquery.min.js"></script>
		<script src="../resources/js/browser.min.js"></script>
		<script src="../resources/js/breakpoints.min.js"></script>
		<script src="../resources/js/util.js"></script>
		<script src="../resources/js/main.js"></script>
	</body>
</html>
