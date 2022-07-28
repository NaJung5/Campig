<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 카테고리 태그들</title>
	</head>
	
		<body id="is-preload">
			<div id="wrapper">
			<!-- Main -->
			<div id="main">
				<div class="inner">
					<section class="tiles2">
						<article class="style2">
							<span class="image">
								<img src="../resources/images/pic02.jpg" alt="" />
							</span>
							<a href="/board/campspot?category=1">캠핑장 후기</a>
						</article>
						<article class="style3">
							<span class="image">
								<img src="../resources/images/pic03.jpg" alt="" />
							</span>
							<a href="/board/equipment?category=2">장비 후기</a>
						</article>
						<article class="style4">
							<span class="image">
								<img src="../resources/images/pic04.jpg" alt="" />
							</span>
							<a href="/board/recipe?category=3">캠핑 요리</a>
						</article>
						<article class="style5">
							<span class="image">
								<img src="../resources/images/pic05.jpg" alt="" />
							</span>
							<a href="/board/question?category=4">질문</a>
						</article>
						<article class="style6">
							<span class="image">
								<img src="../resources/images/pic06.jpg" alt="" />
							</span>
							<a href="/board/tip?category=5">팁</a>
						</article>
						<article class="style7">
							<span class="image">
								<img src="../resources/images/pic07.jpg" alt="" />
							</span>
							<a href="/board/suggestion?category=6&id=${memId}">건의사항</a>
						</article>
						<article class="style8">
							<span class="image">
								<img src="../resources/images/pic08.jpg" alt="" />
							</span>
							<a href="/board/notice?category=7">공지사항</a>
						</article>
						
					</section>
				</div>
			</div>
			</div>
		
			<!-- Script -->
			<script src="../resources/js/jquery.min.js"></script>
			<script src="../resources/js/browser.min.js"></script>
			<script src="../resources/js/breakpoints.min.js"></script>
			<script src="../resources/js/util.js"></script>
			<script src="../resources/js/main.js"></script>	
		</body>
</html>