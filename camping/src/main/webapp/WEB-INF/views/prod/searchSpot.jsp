<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script>
			function check() {
				search = "/prod/searchSpot"
				window.location(search, "search", "width=400, height=300" )
			}
			function set(num, name){
				opener.document.check.sitename.value = name;
				opener.document.check.sitenum.value = num;
				self.close();
			}
		</script>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../../resources/css/main.css" />
		<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
	</head>
	<body>
		<c:if test="${count==0}">
			<form action="/prod/searchSpot" onsubmit="retrun check()">
				<input type="text" name="spot" />
				<input type="submit" value="찾기"/>
			</form>
		</c:if>
		
		<c:if test="${count>0}">
			<form action="/prod/searchSpot" onsubmit="retrun check()">
				<input type="text" name="spot" />
				<input type="submit" value="찾기"/>
			</form>
			<c:forEach var="list" items="${list}">
				${list.name} <input type="button" name="result" value="선택" onclick="set(${list.num}, '${list.name}')"><br/>
			</c:forEach>
			<c:if test="${count > 0}">
				<c:if test="${startPage>10}">
					<a href="/prod/searchSpot?pageNum=${startPage-10}&spot=${spot}" >[이전]</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
					<a href="/prod/searchSpot?pageNum=${i}&spot=${spot}" >[${i}]</a>
				</c:forEach>
				<c:if test="${endPage < pageCount}">
					<a href="/prod/searchSpot?pageNum=${startPage+10}&spot=${spot}" >[다음]</a>
				</c:if>
			</c:if>
		</c:if>
		<script src="../resources/js/jquery.min.js"></script>
		<script src="../resources/js/browser.min.js"></script>
		<script src="../resources/js/breakpoints.min.js"></script>
		<script src="../resources/js/util.js"></script>
		<script src="../resources/js/main.js"></script>
	</body>
</html>