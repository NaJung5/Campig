<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>검색결과</title>
	</head>
	<body>
	<%@include file="../headNavBar.jsp"%>
	<%@include file="spotCategory.jsp"%>		
		<div id="map" style="width:80%;height:600px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=50354af464d31d7eb38faab00d444cda&libraries=services"></script>
		<script>
			var mapContainer = document.getElementById('map'),  
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), 
			        level: 5 
			    };  
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			// 주소-좌표 변환 객체를 생성
			var geocoder = new kakao.maps.services.Geocoder();
			// 주소로 좌표를 검색
			geocoder.addressSearch('${searchMap}', function(result, status) {
			    // 정상적으로 검색이 완료됐으면 
				if (status === kakao.maps.services.Status.OK) {
					// 검색 좌표 생성
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					// 결과값으로 받은 위치를 마커로 표시
					var marker = new kakao.maps.Marker({
				       	map: map,
				   		position: coords
					});
					// 검색한 장소 정보에 넣기
					var infowindow = new kakao.maps.InfoWindow({
				    	content: '<div style="width:150px;text-align:center;padding:6px 0;">${searchMap}</div>'
					});
					infowindow.open(map, marker);
					<c:forEach var="map" items="${mapinfo}">
						var markerPosition  = new kakao.maps.LatLng(${map.lat}, ${map.lng}); 
						var marker = new kakao.maps.Marker({
							position: markerPosition
						});
						marker.setMap(map);
						var iwContent = '<div style="padding:5px;">${map.name}<br/><a href="/spot/campingspot?num=${map.num}">바로가기</a></div>',
						    iwPosition = new kakao.maps.LatLng(${map.lat}, ${map.lng});
						var infowindow = new kakao.maps.InfoWindow({
						    position : iwPosition, 
						    content : iwContent 
						});
						infowindow.open(map, marker);
					</c:forEach>
					map.setCenter(coords);
				} 
			});    
		</script>
	</body>
</html>