<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 찾기</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../resources/css/main.css" />
		<noscript><link rel="stylesheet" href="../resources/css/noscript.css" /></noscript>
	</head>
	<body>
		<script>
		// 검색조건 변경 스크립트
		function changeSearch(){
			var searchChecklect = document.getElementById("selectbox");
			var selectVal = searchChecklect.options[searchChecklect.selectedIndex].value;
			var selectText = searchChecklect.options[searchChecklect.selectedIndex].text;
			if(selectVal == 0){
				document.frm1.style.display="block";
				document.frm2.style.display="none";
				document.frm3.style.display="none";
			}else if(selectVal == 1){
				document.frm1.style.display="none";
				document.frm2.style.display="block";
				document.frm3.style.display="none";
			}else{
				document.frm1.style.display="none";
				document.frm2.style.display="none";
				document.frm3.style.display="block";
				}
			}
		</script>
		<div id="wrapper">
		<!-- Main -->
			<div id="main">
				<div class="inner">
					<section class="tiles2">
						<article class="style1">
							<span class="image">
								<img src="../resources/images/pic01.jpg" alt="" />
							</span>
							<a href="/spot/beach">해변</a>
						</article>
						<article class="style2">
							<span class="image">
								<img src="../resources/images/pic02.jpg" alt="" />
							</span>
							<a href="/spot/city">도심</a>
						</article>
						<article class="style3">
							<span class="image">
								<img src="../resources/images/pic03.jpg" alt="" />
							</span>
							<a href="/spot/forest">숲</a>
						</article>
						<article class="style4">
							<span class="image">
								<img src="../resources/images/pic04.jpg" alt="" />
							</span>
							<a href="/spot/island">섬</a>
						</article>
						<article class="style5">
							<span class="image">
								<img src="../resources/images/pic05.jpg" alt="" />
							</span>
							<a href="/spot/mountain">산</a>
						</article>
						<article class="style6">
							<span class="image">
								<img src="../resources/images/pic06.jpg" alt="" />
							</span>
							<a href="/spot/river">강</a>
						</article>
						<article class="style2">
							<span class="image">
								<img src="../resources/images/pic07.jpg" alt="" />
							</span>
							<a href="/spot/media">방송에 나온 캠핑장</a>
						</article>
					</section>
				</div>
			</div>
		</div>
		<!-- 스크립트 적용하는 select -->
		<select id="selectbox" name="search" onchange="changeSearch()">
			<option value = "0">지도검색</option>
			<option value = "1">이름검색</option>
			<option value = "2">상세검색</option>
		</select>
		<!-- 지도검색 폼 -->
		<div>
			<form name="frm1" action="/spot/map" style="display:block;" onsubmit="">
				<input type="text" name="searchMap"/>
				<input type="submit" value="검색"/>
			</form>
		</div>
		<!-- 캠핑장명 검색 폼 -->
		<div>	
			<form name="frm2" action="/spot/key" style="display:none;" onsubmit="">
				<input type="text" name="searchKey"/>
				<input type="submit" value="검색"/>
			</form>
		</div>
		<!-- 상세검색 폼 -->
		<div class="col-6 col-12-small">
			<form name="frm3" action="/spot/check" style="display:none;" onsubmit="">
				<table>
					<tr>
						<td><b>지역</b></td>			
						<td>
							<input type="checkbox"  name="searchCheck" value="a" id = "a"/>
							<label for = "a">서울&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="checkbox"  name="searchCheck" value="b" id = "b"/>
							<label for = "b">인천&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="checkbox"  name="searchCheck" value="c" id = "c"/>
							<label for = "c">대전&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="checkbox"  name="searchCheck" value="d" id = "d"/>
							<label for = "d">대구&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="checkbox"  name="searchCheck" value="e" id = "e"/>
							<label for = "e">울산&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="checkbox"  name="searchCheck" value="f" id = "f"/>
							<label for = "f">부산&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="checkbox"  name="searchCheck" value="g" id = "g"/>
							<label for = "g">경기도&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
							<input type="checkbox"  name="searchCheck" value="h" id = "h"/>				
							<label for = "h">강원도&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> 
							<br />
							<input type="checkbox"  name="searchCheck" value="i" id = "i"/>
							<label for = "i">충청북도</label>
							<input type="checkbox"  name="searchCheck" value="j" id = "j"/>
							<label for = "j">충청남도</label>
							<input type="checkbox"  name="searchCheck" value="k" id = "k"/>
							<label for = "k">전라북도</label>
							<input type="checkbox"  name="searchCheck" value="l" id = "l"/>
							<label for = "l">전라남도</label>
							<input type="checkbox"  name="searchCheck" value="m" id = "m"/>
							<label for = "m">경상북도</label>
							<input type="checkbox"  name="searchCheck" value="n" id = "n"/>
							<label for = "n">경상남도</label>
							<input type="checkbox"  name="searchCheck" value="o" id = "o"/>
							<label for = "o">제주도</label>
						</td>			
					</tr>	
					<tr>
						<td><b>시설</b></td>
						<td>
							<input type="checkbox"  name="searchCheck" value="p" id = "p"/>
							<label for = "p">전기</label>
							<input type="checkbox"  name="searchCheck" value="q" id = "q"/>
							<label for = "q">온수</label>
							<input type="checkbox"  name="searchCheck" value="r" id = "r"/>
							<label for = "r">장작판매</label>
							<input type="checkbox"  name="searchCheck" value="s" id = "s"/>
							<label for = "s">와이파이</label>
							<input type="checkbox"  name="searchCheck" value="t" id = "t"/>
							<label for = "t">운동시설</label>
							<input type="checkbox"  name="searchCheck" value="u" id = "u"/>
							<label for = "u">물놀이장</label>
							<input type="checkbox"  name="searchCheck" value="v" id = "v"/>
							<label for = "v">놀이터</label>
							<input type="checkbox"  name="searchCheck" value="w" id = "w"/>
							<label for = "w">산책로</label>
							<input type="checkbox"  name="searchCheck" value="x" id = "x"/>
							<label for = "x">매점</label>
							<input type="checkbox"  name="searchCheck" value="y" id = "y"/>
							<label for = "y">운동장</label>
							<input type="checkbox"  name="searchCheck" value="z" id = "z"/>
							<label for = "z">트렘폴린</label>
						</td>
					</tr>
					<tr>
						<td><b>환경</b></td>
						<td>
							<input type="checkbox"  name="searchCheck" value="A" id = "A"/>
							<label for = "A">숲</label>
							<input type="checkbox"  name="searchCheck" value="B" id = "B"/>
							<label for = "B">산</label>
							<input type="checkbox"  name="searchCheck" value="C" id = "C"/>
							<label for = "C">계곡</label>
							<input type="checkbox"  name="searchCheck" value="D" id = "D"/>
							<label for = "D">해변</label>
							<input type="checkbox"  name="searchCheck" value="E" id = "E"/>
							<label for = "E">섬</label>
							<input type="checkbox"  name="searchCheck" value="F" id = "F"/>
							<label for = "F">강</label>
							<input type="checkbox"  name="searchCheck" value="G" id = "G"/>
							<label for = "G">호수</label>
							<input type="checkbox"  name="searchCheck" value="H" id = "H"/>
							<label for = "H">도심</label>
						</td>
					</tr>
					<tr>
						<td><b>운영</b></td>
						<td>
							<input type="checkbox"  name="searchCheck" value="I" id = "I"/>
							<label for = "I">민간</label>
							<input type="checkbox"  name="searchCheck" value="J" id = "J"/>
							<label for = "J">지자체</label>
							<input type="checkbox"  name="searchCheck" value="K" id = "K"/>
							<label for = "K">자연휴양림</label>
							<input type="checkbox"  name="searchCheck" value="L" id = "L"/>
							<label for = "L">국민여가</label>
							<input type="checkbox"  name="searchCheck" value="M" id = "M"/>
							<label for = "M">국립공원</label>
						</td>
					</tr>
					<tr>
						<td><b>형태</b></td>
						<td>
							<input type="checkbox"  name="searchCheck" value="N" id = "N"/>
							<label for = "N">일반야영장</label>
							<input type="checkbox"  name="searchCheck" value="O" id = "O"/>
							<label for = "O">자동차야영장</label>
							<input type="checkbox"  name="searchCheck" value="P" id = "P"/>
							<label for = "P">카라반</label>
							<input type="checkbox"  name="searchCheck" value="Q" id = "Q"/>
							<label for = "Q">글램핑</label>
						</td>
					</tr>
					<tr>
						<td><b>계절</b></td>
						<td>
							<input type="checkbox"  name="searchCheck" value="R" id = "R"/>
							<label for = "R">봄</label>
							<input type="checkbox"  name="searchCheck" value="S" id = "S"/>
							<label for = "S">여름</label>
							<input type="checkbox"  name="searchCheck" value="T"  id = "T"/>
							<label for = "T">가을</label>
							<input type="Checkbox"  name="searchCheck" value="U" id = "U"/>
							<label for = "U">겨울</label>
						</td>
					</tr>
					<tr>
						<td><b>날짜</b></td>
						<td>
							<input type="checkbox"  name="searchCheck" value="V" id = "V"/>
							<label for = "V">평일</label>
							<input type="checkbox"  name="searchCheck" value="W" id = "W"/>
							<label for = "W">주말</label>
						</td>
					</tr>
					<tr>
						<td><input type="submit" value="검색"/></td>
					</tr>
				</table>
			</form>
		</div>
		<script src="../resources/js/jquery.min.js"></script>
		<script src="../resources/js/browser.min.js"></script>
		<script src="../resources/js/breakpoints.min.js"></script>
		<script src="../resources/js/util.js"></script>
		<script src="../resources/js/main.js"></script>	
	</body>	
</html>	