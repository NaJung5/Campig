<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../../resources/css/main.css" />
		<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
	</head>
	<body>
		<table border="1">
			<tr>
				<td	rowspan="4">세면용품</td>
				<td>수건</td>
				<td><input type="checkbox" id="1"/><label for="1"></label></td>
			</tr>
			<tr>
				<td>치약</td>
				<td><input type="checkbox" id="2"/><label for="2"></label></td>
			</tr>
			<tr>
				<td>칫솔</td>
				<td><input type="checkbox" id="3"/><label for="3"></label></td>
			</tr>
			<tr>
				<td>비누</td>
				<td><input type="checkbox" id="4"/><label for="4"></label></td>
			</tr>
			<tr>
				<td rowspan="6">상비약</td>
				<td>반창고</td>
				<td><input type="checkbox" id="5"/><label for="5"></label></td>
			</tr>
			<tr>
				<td>소독약</td>
				<td><input type="checkbox" id="6"/><label for="6"></label></td>
			</tr>
			<tr>
				<td>소화제</td>
				<td><input type="checkbox" id="7"/><label for="7"></label></td>
			</tr>
			<tr>
				<td>두통약</td>
				<td><input type="checkbox" id="8"/><label for="8"></label></td>
			</tr>
			<tr>
				<td>개인상비약</td>
				<td><input type="checkbox" id="9"/><label for="9"></label></td>
			</tr>
			<tr>
				<td>모기약</td>
				<td><input type="checkbox" id="10"/><label for="10"></label></td>
			</tr>
			<tr>
				<td rowspan="6">음식</td>
				<td>점심재료</td>
				<td><input type="checkbox" id="12"/><label for="12"></label></td>
			</tr>
			<tr>
				<td>저녁재료</td>
				<td><input type="checkbox" id="13"/><label for="13"></label></td>
			</tr>
			<tr>
				<td>아침재료</td>
				<td><input type="checkbox" id="14"/><label for="14"></label></td>
			</tr>
			<tr>
				<td>생수</td>
				<td><input type="checkbox" id="15"/><label for="15"></label></td>
			</tr>
			<tr>
				<td>음료</td>
				<td><input type="checkbox" id="16"/><label for="16"></label></td>
			</tr>
			<tr>
				<td>양념</td>
				<td><input type="checkbox" id="17"/><label for="17"></label></td>
			</tr>
			<tr>
				<td rowspan="2">도구</td>
				<td>망치</td>
				<td><input type="checkbox" id="18"/><label for="18"></label></td>
			</tr>
			<tr>
				<td>취사도구</td>
				<td><input type="checkbox" id="19"/><label for="19"></label></td>
			</tr>
			<tr>
				<td>전기</td>
				<td>멀티탭</td>
				<td><input type="checkbox" id="20"/><label for="20"></label></td>
			</tr>
			<tr>
				<td rowspan="4">기타</td>
				<td>위생팩</td>
				<td><input type="checkbox" id="21"/><label for="21"></label></td>
			</tr>
			<tr>
				<td>비닐장갑</td>
				<td><input type="checkbox" id="22"/><label for="22"></label></td>
			</tr>
			<tr>
				<td>물티슈 / 휴지</td>
				<td><input type="checkbox" id="23"/><label for="23"></label></td>
			</tr>
			<tr>
				<td>침구류</td>
				<td><input type="checkbox" id="24"/><label for="24"></label></td>
			</tr>
		</table>
		<input type="button" value="마이페이지" onclick="window.location='/member/myPage?id=${memId}'" />
		<input type="button" value="홈으로" onclick="window.location='/home?${memId}'" />
		<script src="../resources/js/jquery.min.js"></script>
		<script src="../resources/js/browser.min.js"></script>
		<script src="../resources/js/breakpoints.min.js"></script>
		<script src="../resources/js/util.js"></script>
		<script src="../resources/js/main.js"></script>
	</body>
</html>