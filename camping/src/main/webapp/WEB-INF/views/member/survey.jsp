<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../resources/css/main.css" />
<noscript><link rel="stylesheet" href="../../resources/css/noscript.css" /></noscript>
<title>설문조사</title>
</head>
<script>
	function check(){
		if(document.getElementById("equipNull").checked=true){
			document.getElementById("equipNull").checked=false;
	
		}  

	}
	
</script>
<body>

<h1  align = "center">설문조사</h1>
<form action = "surveyPro" >
<input type="hidden" name="id" value="${memId}">
	<table>
		<tr>
			<td>선호 하는 캠핑장 스타일 : </td>
			<td>
				<input type="checkbox"  name="ans1" value="A" id = "A"/>
				<label for = "A">숲</label>
				<input type="checkbox"  name="ans1" value="B" id = "B"/>
				<label for = "B">산</label>
				<input type="checkbox"  name="ans1" value="C" id = "C"/>
				<label for = "C">계곡</label>
				<input type="checkbox"  name="ans1" value="D" id = "D"/>
				<label for = "D">해변</label>
				<input type="checkbox"  name="ans1" value="E" id = "E"/>
				<label for = "E">섬</label>
				<input type="checkbox"  name="ans1" value="F" id = "F"/>
				<label for = "F">강</label>
				<input type="checkbox"  name="ans1" value="G" id = "G"/>
				<label for = "G">호수</label>
				<input type="checkbox"  name="ans1" value="H" id = "H"/>
				<label for = "H">도심</label>
			</td>
		</tr>
		
		<tr>
			<td>필수로 생각하는 편의 시설 : </td>
			<td>
				<input type="checkbox"  name="ans2" value="p" id = "p"/>
				<label for = "p">전기</label>
				<input type="checkbox"  name="ans2" value="q" id = "q"/>
				<label for = "q">온수</label>
				<input type="checkbox"  name="ans2" value="r" id = "r"/>
				<label for = "r">장작판매</label>
				<input type="checkbox"  name="ans2" value="s" id = "s"/>
				<label for = "s">와이파이</label>
				<input type="checkbox"  name="ans2" value="t" id = "t"/>
				<label for = "t">운동시설</label>
				<input type="checkbox"  name="ans2" value="u" id = "u"/>
				<label for = "u">물놀이장</label>
				<input type="checkbox"  name="ans2" value="v" id = "v"/>
				<label for = "v">놀이터</label>
				<input type="checkbox"  name="ans2" value="w" id = "w"/>
				<label for = "w">산책로</label>
				<input type="checkbox"  name="ans2" value="x" id = "x"/>
				<label for = "x">매점</label>
				<input type="checkbox"  name="ans2" value="y" id = "y"/>
				<label for = "y">운동장</label>
				<input type="checkbox"  name="ans2" value="z" id = "z"/>
				<label for = "z">트렘폴린</label>
			</td>
		</tr>
		
		<tr>
			<td>선호 캠핑 시기 : </td>
			<td>
				<input type="radio" id="4" name="ans3" value="1" checked  />
				<label for="4">봄/가을</label>
				<input type="radio" id="5" name="ans3" value="2"  />
				<label for="5">여름</label>
				<input type="radio" id="6" name="ans3" value="3"  />
				<label for="6">겨울</label>
			</td>
		</tr>
		
		<tr>
			<td>장비 사용 인원조사 : </td>	
			<td>
				<input type="radio" id="1" name="ans4" value="1" checked />
				<label for="1">1~2인</label>
				<input type="radio" id="2" name="ans4" value="2"  />
				<label for="2">3~4인</label>
				<input type="radio" id="3" name="ans4" value="3"  />
				<label for="3">5인이상</label>
			</td>
		</tr>
		<tr>
			<td>보유 캠핑장비 : <br /> 보유 장비가 없을시 체크 x </td>	
			<td>
				<input type="checkbox" id="equipNull" name="ans5" value="0"  checked/>
				<label for="equipNull">없음</label>
				<input type="checkbox" id="7" name="ans5" value="1" onclick = "check()"/>
				<label for="7">텐트</label>
				<input type="checkbox" id="8" name="ans5" value="2" onclick = "check()"/>
				<label for="8">타프</label>
				<input type="checkbox" id="9" name="ans5" value="3" onclick = "check()"/>
				<label for="9">아이스박스</label>
				<input type="checkbox" id="10" name="ans5" value="4" onclick = "check()"/>
				<label for="10">취사도구</label>
				<input type="checkbox" id="11" name="ans5" value="5" onclick = "check()"/>
				<label for="11">랜턴</label>
				<input type="checkbox" id="12" name="ans5" value="6" onclick = "check()"/>
				<label for="12">매트</label>
				<input type="checkbox" id="13" name="ans5" value="7" onclick = "check()"/>
				<label for="13">침낭</label>
				<input type="checkbox" id="14" name="ans5" value="8" onclick = "check()"/>
				<label for="14">의자</label>
				<input type="checkbox" id="15" name="ans5" value="9" onclick = "check()"/>
				<label for="15">테이블</label>
				<input type="checkbox" id="16" name="ans5" value="10" onclick = "check()"/>
				<label for="16">연료</label>
				
			</td>
		</tr>
		
		<tr>
			<td>선호지역 : </td>	
			<td>
				<input type="radio"  name="ans6" value="a" id = "a"/>
				<label >서울</label>
				<input type="radio"  name="ans6" value="b" id = "b"/>
				<label for = "b">인천</label>
				<input type="radio"  name="ans6" value="c" id = "c"/>
				<label for = "c">대전</label>
				<input type="radio"  name="ans6" value="d" id = "d"/>
				<label for = "d">대구</label>
				<input type="radio"  name="ans6" value="e" id = "e"/>
				<label for = "e">울산</label>
				<input type="radio"  name="ans6" value="f" id = "f"/>
				<label for = "f">부산</label>
				<input type="radio"  name="ans6" value="g" id = "g"/>
				<label for = "g">경기도</label>
				<input type="radio"  name="ans6" value="h" id = "h"/>				
				<label for = "h">강원도</label> 
				<input type="radio"  name="ans6" value="i" id = "i"/>
				<label for = "i">충청북도</label>
				<input type="radio"  name="ans6" value="j" id = "j"/>
				<label for = "j">충청남도</label>
				<input type="radio"  name="ans6" value="k" id = "k"/>
				<label for = "k">전라북도</label>
				<input type="radio"  name="ans6" value="l" id = "l"/>
				<label for = "l">전라남도</label>
				<input type="radio"  name="ans6" value="m" id = "m"/>
				<label for = "m">경상북도</label>
				<input type="radio"  name="ans6" value="n" id = "n"/>
				<label for = "n">경상남도</label>
				<input type="radio"  name="ans6" value="o" id = "o"/>
				<label for = "o">제주도</label>
			</td>
		</tr>
				
		<tr>
			<td></td>
			<td align = "center">
				<input type = "submit" value = "저장"  />
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