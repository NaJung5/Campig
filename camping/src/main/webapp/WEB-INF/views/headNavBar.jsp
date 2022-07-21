<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상당 내비게이션 바</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="../resources/css/main.css" />
	<noscript><link rel="stylesheet" href="../resources/css/noscript.css" /></noscript>
</head>
<body class="is-preload">
	<!-- wrapper -->
	<div id="wrapper">
		<!-- header -->
		<header id="header">
			<div align = "left">
				<a href="../home" class="logo">
					<span class="symbol"><img src="../resources/images/camping_logo_30px.png"/></span>
					<span class="title">프로젝트 이름</span>
				</a>
			</div>
		<!-- NavBar -->
			<c:if test = "${memId == null}">
				<nav>
					<ul id="main_menu">
						<li><a href="../spot/info" data-toggle="dropdown">Camp</a></li>
						<li><a href="../equip/list">Equip</a></li>
						<li><a href="../board/list">Board</a></li>					
						<li><a href="/member/loginForm">Login</a></li>					
					</ul>
				</nav>
			</c:if>
			<c:if test = "${memId != null}">

				<nav>
					<ul id="main_menu">
						<li><a href="../spot/info" data-toggle="dropdown">Camp</a></li>
						<li><a href="../equip/list?id=${memId }">Equip</a></li>
						<li><a href="../board/list?id=${memId }">Board</a></li>	
						<li><a href="/member/myPage?id=${memId }">myPage</a></li>					
						<li><a href="../member/logoutForm">Logout</a></li>				
					</ul>
				</nav>
			</c:if>	
		</header>
	</div>

</body>
</html>