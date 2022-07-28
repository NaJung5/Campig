<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="../../resources/css/main.css" />
	<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
</head>
</head>
<body>
<%@include file="../headNavBar.jsp"%>


<form action = "loginPro" method = "post">
	<table>
		<tr>
			<td width="180" align = "center">ID</td>
			<td>
				<input type = "text" name = "id" />
			</td>
		</tr>
		<tr>
			<td width="180" align = "center">PW</td>
			<td >
				<input type = "password" name = "pw" />
			</td>
		</tr>
		<tr>			
			<td></td>
			<td align = "center" >
				<input type = "button" value = "회원가입" onclick = "window.location='/member/signUpForm'" />
				<input type = "submit" value = "로그인" />
			</td>	
		</tr>
	</table>
</form>
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/browser.min.js"></script>
<script src="../resources/js/breakpoints.min.js"></script>
<script src="../resources/js/util.js"></script>
<script src="../resources/js/main.js"></script>	

</body>
</html>