<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 등록</title>
	</head>
	<body>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50354af464d31d7eb38faab00d444cda&libraries=services"></script>
		<script>
			function daumPostcode() {
				new daum.Postcode({
					oncomplete: function(data) {
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						// 주소 변수
						var addr = '';
						//사용자가 선택한 주소 타입(R(도로)/J(지번))에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { 
							addr = data.roadAddress;
						} else { 
							addr = data.jibunAddress;
						}
						//geocoder 주소르 좌표로 변경하는 매서드를 불러오는 객체		
						var geocoder = new kakao.maps.services.Geocoder();
						// 검색이 제대로 되었을 떄 (status == ok) 결과값 출력 
						var callback = function(result, status) {
							if (status === kakao.maps.services.Status.OK) {
								var{ x, y }= result[0];
								document.getElementById('lng').value = x;
								document.getElementById('lat').value = y;
							}
						};
						//addressSearch 함수 실행 주소 -> 좌표
						geocoder.addressSearch(addr, callback);
						document.getElementById('postcode').value = data.zonecode;
						document.getElementById("address").value = addr;
						document.getElementById("detailAddress").focus();
					}
				}).open();
		    }
		</script>
		
		<form action="/adSpot/insertpro" method="post" >
			이름 :	<input type="text" name="name" /><br/>
			연락처 :	<input type="text" name="phone" /><br/>
			주소 :	<input type="text" id="postcode" name="postcode" />
					<input type="button" value="우편번호찾기" onclick="daumPostcode()" />
					<br/>
					<input type="text" id="address" name="addrs" />
					<input type="text" id="detailAddress" name="addrs" />
					<br/>
					<input type="hidden" name="lng" id="lng" value="" />
					<input type="hidden" name="lat" id="lat" value="" />
			사진	:	<input type="text" name="image" /><br/>
			홈페이지 :	<input type="text" name="page" /><br/>
			태그	:	<input type="text" name="tag" /><br/>
			카테고리	<br/> 
			지역		<input type="radio" name="catess" value="a" />서울
					<input type="radio" name="cates" value="b" />인천
					<input type="radio" name="cates" value="c" />대전
					<input type="radio" name="cates" value="d" />대구
					<input type="radio" name="cates" value="e" />울산
					<input type="radio" name="cates" value="f" />부산
					<input type="radio" name="cates" value="g" />경기도
					<input type="radio" name="cates" value="h" />강원도
					<input type="radio" name="cates" value="i" />충청북도
					<input type="radio" name="cates" value="j" />충청남도
					<input type="radio" name="cates" value="k" />전라북도
					<input type="radio" name="cates" value="l" />전라남도
					<input type="radio" name="cates" value="m" />경상북도
					<input type="radio" name="cates" value="n" />경상남도
					<input type="radio" name="cates" value="o" />제주도<br/>
			시설		<input type="checkbox" name="cates" value="p" />전기
					<input type="checkbox" name="cates" value="q" />온수
					<input type="checkbox" name="cates" value="r" />장작판매
					<input type="checkbox" name="cates" value="s" />와이파이
					<input type="checkbox" name="cates" value="t" />운동시설
					<input type="checkbox" name="cates" value="u" />물놀이장
					<input type="checkbox" name="cates" value="v" />놀이터
					<input type="checkbox" name="cates" value="w" />산책로
					<input type="checkbox" name="cates" value="x" />매점
					<input type="checkbox" name="cates" value="y" />운동장
					<input type="checkbox" name="cates" value="z" />트램폴린<br/>
			환경		<input type="checkbox" name="cates" value="A" />숲
					<input type="checkbox" name="cates" value="B" />산
					<input type="checkbox" name="cates" value="C" />계곡
					<input type="checkbox" name="cates" value="D" />해변
					<input type="checkbox" name="cates" value="E" />섬
					<input type="checkbox" name="cates" value="F" />강
					<input type="checkbox" name="cates" value="G" />호수
					<input type="checkbox" name="cates" value="H" />도심<br/>
			운영		<input type="radio" name="cates" value="I" />민간
					<input type="radio" name="cates" value="J" />지자체
					<input type="radio" name="cates" value="K" />자연휴양림
					<input type="radio" name="cates" value="L" />국민여가
					<input type="radio" name="cates" value="M" />국립공원<br/>
			형태		<input type="checkbox" name="cates" value="N" />일반
					<input type="checkbox" name="cates" value="O" />자동차
					<input type="checkbox" name="cates" value="P" />카라반
					<input type="checkbox" name="cates" value="Q" />글램핑<br/>
			계절		<input type="checkbox" name="cates" value="R" />봄
					<input type="checkbox" name="cates" value="S" />여름
					<input type="checkbox" name="cates" value="T" />가을
					<input type="checkbox" name="cates" value="U" />겨울<br/>
			영업일	<input type="checkbox" name="cates" value="V" />평일
					<input type="checkbox" name="cates" value="W" />주말<br/>
			<input type="submit" value="등록" />
		</form>
	</body>
</html>