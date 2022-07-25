<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form action="/adSpot/mediaPro" method="post" name="check">
			이름 <input type="text" name="sitename" onclick="searchSpot()"/>
			<input type="hidden" name="sitenum" value="" />
			<input type="button" value="캠핑장찾기" onclick="searchSpot()"/>
			<br/>
			설명 <textarea rows="20px" cols="30px" name="content"></textarea>
			<br/>
			<input type="submit" value="등록" />
		</form>
	</body>
</html>