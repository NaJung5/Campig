<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">

		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>캠핑장 등록</title>
		<link rel="stylesheet" href="/resources/vendors/feather/feather.css">
		<link rel="stylesheet" href="/resources/vendors/mdi/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="/resources/vendors/ti-icons/css/themify-icons.css">
		<link rel="stylesheet" href="/resources/vendors/typicons/typicons.css">
		<link rel="stylesheet" href="/resources/vendors/simple-line-icons/css/simple-line-icons.css">
		<link rel="stylesheet" href="/resources/vendors/css/vendor.bundle.base.css">
		<link rel="stylesheet" href="/resources/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
		<link rel="stylesheet" href="/resources/js/select.dataTables.min.css">
		<link rel="stylesheet" href="/resources/css/vertical-layout-light/style.css">
		<link rel="shortcut icon" href="/resources/images/favicon.png" />
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

		<div class="container-scroller"> 
			<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
				<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
					<div class="me-3">
						<button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
							<span class="icon-menu"></span>
						</button>
			        </div>
			        <div>
						<a class="navbar-brand brand-logo" href="../adMain/main">
							<img src="/resources/images/logo.svg" alt="logo" />
						</a>
						<a class="navbar-brand brand-logo-mini" href="../adMain/main">
							<img src="/resources/images/logo-mini.svg" alt="logo" />
						</a>
					</div>
				</div>
				<div class="navbar-menu-wrapper d-flex align-items-top"> 
		        	<ul class="navbar-nav">
						<li class="nav-item font-weight-semibold d-none d-lg-block ms-0">
							<h2 class="text-black fw-bold">${adId}님 환영합니다</h2>
							<h3 class="welcome-sub-text">관리자 페이지입니다</h3>
						</li>
		        	</ul>
		        	<ul class="navbar-nav ms-auto">
						<li class="nav-item dropdown d-none d-lg-block">
		            		<div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="messageDropdown"></div>
		              		<div class="dropdown-divider"></div>
		        		<li class="nav-item">
			            	<form name="idSerch" action="#" onsubmit="" class="search-form">
								<i class="icon-search"></i>
									<input type="text" name="idSerch" class="form-control" placeholder="Search Here" title="Search here"/>
									<input type="submit" value="검색"/>
							</form>
		          		</li>
		        		<li class="nav-item dropdown d-none d-lg-block user-dropdown">
		            		<a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
		              			<img class="img-xs rounded-circle" src="/resources/images/faces/face8.jpg" alt="Profile image"> 
		              		</a>
			            	<div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
			            		<div class="dropdown-header text-center">
			                		<img class="img-md rounded-circle" src="/resources/images/faces/face8.jpg" alt="Profile image">
			                		<p class="mb-1 mt-3 font-weight-semibold">${adId}</p>
			                		<p class="fw-light text-muted mb-0">${adId}@gmail.com</p>
			              		</div>
					            <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-account-outline text-primary me-2"></i> My Profile <span class="badge badge-pill badge-danger">1</span></a>
					            <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-message-text-outline text-primary me-2"></i> Messages</a>
					            <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-calendar-check-outline text-primary me-2"></i> Activity</a>
					            <a class="dropdown-item"><i class="dropdown-item-icon mdi mdi-help-circle-outline text-primary me-2"></i> FAQ</a>
					            <a class="dropdown-item" href="/member/adLogout"><i class="dropdown-item-icon mdi mdi-power text-primary me-2"></i>Sign Out</a>
			           		</div>
		          		</li>
		       		</ul>
		        	<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
		        		<span class="mdi mdi-menu"></span>
		        	</button>
		    	</div>
		    </nav>
		    <div class="container-fluid page-body-wrapper">
				<nav class="sidebar sidebar-offcanvas" id="sidebar">
					<ul class="nav">
						<li class="nav-item">
							<a class="nav-link" href="/adMain/main">
							<i class="mdi mdi-grid-large menu-icon"></i>
								<span class="menu-title">Dashboard</span>
		            		</a>
		          		</li>
		         		<li class="nav-item nav-category">관리</li>
		        		<li class="nav-item">
		            		<a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
		             			<i class="menu-icon mdi mdi-floor-plan"></i>
				        	    	<span class="menu-title">바로가기</span>
		              			<i class="menu-arrow"></i> 
		            		</a>
			            	<div class="collapse" id="ui-basic">
			              		<ul class="nav flex-column sub-menu">
			                		<li class="nav-item"> <a class="nav-link" href="/adMem/list">회원관리</a></li>
			                		<li class="nav-item"> <a class="nav-link" href="/adSpot/list">캠핑장비</a></li>
			                		<li class="nav-item"> <a class="nav-link" href="/adSpot/list">캠핑장</a></li>
			                		<li class="nav-item"> <a class="nav-link" href="">게시글</a></li>
			              		</ul>
			            	</div>
		          		</li>
		         	</ul>
		    	</nav>
	  		<div class="main-panel">
	       		<div class="content-wrapper">
	        		<div class="row">                        
				        <div class="col-lg-12 grid-margin stretch-card">
				            <div class="card">
				                <div class="card-body">
				                	<h4 class="card-title">캠핑장 리스트</h4>
				                	<div class="table-responsive pt-3">
										<form action="/adSpot/insertpro" method="post" >
											<table class="table table-dark" >
												<tr>
													<td>이름 :	<input type="text" name="name" /></td>
												</tr>	
												<tr>
													<td>연락처 :	<input type="text" name="phone" /></td>
												</tr>	
												<tr>
													<td>주소 : 
														<input type="text" id="postcode" name="postcode" />
														<button type="button" class="btn btn-inverse-info btn-fw" onclick="daumPostcode()">우편번호찾기</button>
														<input type="text" id="address" name="addrs" />
														<input type="text" id="detailAddress" name="addrs" />
														<input type="hidden" name="lng" id="lng" value="" />
														<input type="hidden" name="lat" id="lat" value="" />
													</td>		
												</tr>	
												<tr>
													<td>사진	:	<input type="text" name="image" /></td>
												</tr>	
												<tr>
													<td>홈페이지 :	<input type="text" name="page" /></td>
												</tr>
												<tr>
													<td>태그	:	<input type="text" name="tag" /></td>
												</tr>
												<tr>
													<td>지역 : 
														<input type="checkbox"  name="searchCheck" value="a" id = "a"/>
														<label for = "a">서울</label>
														<input type="checkbox"  name="searchCheck" value="b" id = "b"/>
														<label for = "b">인천</label>
														<input type="checkbox"  name="searchCheck" value="c" id = "c"/>
														<label for = "c">대전</label>
														<input type="checkbox"  name="searchCheck" value="d" id = "d"/>
														<label for = "d">대구</label>
														<input type="checkbox"  name="searchCheck" value="e" id = "e"/>
														<label for = "e">울산</label>
														<input type="checkbox"  name="searchCheck" value="f" id = "f"/>
														<label for = "f">부산</label>
														<input type="checkbox"  name="searchCheck" value="g" id = "g"/>
														<label for = "g">경기도</label>
														<input type="checkbox"  name="searchCheck" value="h" id = "h"/>				
														<label for = "h">강원도</label> 
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
													<td>시설 : 
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
													<td>환경 : 
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
													<td>운영 : 
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
													<td>형태 : 
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
													<td>계절 : 
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
													<td>영업일	
														<input type="checkbox"  name="searchCheck" value="V" id = "V"/>
														<label for = "V">평일</label>
														<input type="checkbox"  name="searchCheck" value="W" id = "W"/>
														<label for = "W">주말</label>
													</td>
												</tr>												
												<tr>
													<td><button type="submit" class="btn btn-inverse-success btn-fw">등록</button></td>
												</tr>
											</table>
										</form>
				                	</div>
	                			</div>
	              			</div>
						</div>
					</div>
		        	<footer class="footer">
		        		<div class="d-sm-flex justify-content-center justify-content-sm-between">
		            		<span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash.</span>
		            		<span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Copyright © 2021. All rights reserved.</span>
		          		</div>
		        	</footer>
		    	</div>
		    </div>
		    </div>
		</div>
		<script src="/resources/vendors/js/vendor.bundle.base.js"></script>
		<script src="/resources/vendors/chart.js/Chart.min.js"></script>
		<script src="/resources/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="/resources/vendors/progressbar.js/progressbar.min.js"></script>
		<script src="/resources/js/off-canvas.js"></script>
		<script src="/resources/js/hoverable-collapse.js"></script>
		<script src="/resources/js/template.js"></script>
		<script src="/resources/js/settings.js"></script>
		<script src="/resources/js/todolist.js"></script>
		<script src="/resources/js/Chart.roundedBarCharts.js"></script>
	</body>
</html>