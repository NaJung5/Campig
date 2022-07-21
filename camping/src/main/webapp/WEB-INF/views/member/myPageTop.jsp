<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../resources/css/main.css" />
<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
</head>
<body>
<form  method="post" action="/member/myInfo?id=${memId}">
	<div align = "center">
		<input type="submit"  value="정보수정">
		<input type="button"  value="작성글 목록" onclick="window.location='/member/myBoard?id=${memId }&writer=${memId}'">
		<input type="button"  value="체크리스트" onclick="window.location='/member/checklist?id=${memId}'">
		<input type="button"  value="즐겨찾기" onclick="window.location='/member/favorite?id=${memId}'">
		<input type="button" value="회원탈퇴" onclick="window.location='/member/deleteForm?id=${memId}'">
		<input type="button" onclick="location.href='../home'" value="홈으로"/>
	</div>		
</form>


<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/browser.min.js"></script>
<script src="../resources/js/breakpoints.min.js"></script>
<script src="../resources/js/util.js"></script>
<script src="../resources/js/main.js"></script>	 
</body>
</html>