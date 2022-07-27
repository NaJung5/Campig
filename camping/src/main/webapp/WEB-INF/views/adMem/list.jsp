<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html lang="en">

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>관리자 페이지</title>
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
		            	<form name="idSerch" action="/adMem/idSerch" onsubmit="" class="search-form">
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
			                	<h4 class="card-title">Inverse table</h4>
			                	<p class="card-description">Add class <code>.table-dark</code></p>
			                	<div class="table-responsive pt-3">
			                    	<table class="table table-dark" >
										<tr>
											<th>아이디</th>
											<th>별명</th>
											<th>주소</th>	
											<th>성별</th>
											<th>이메일</th>
											<th>비밀번호 찾기 질문</th>
											<th>질문 답</th>
											<th>가입일자</th>
											<th>로그인시간</th>
											<th>상태</th>
											<th>삭제</th>		
										</tr>
										<c:if test="${count == 0}">
											<div>내역이 없습니다</div>
										</c:if>
										<c:if test="${count >0}">
											<c:forEach var="mem" items="${list}">
												<tr>
													<td>${mem.id}</td>
													<td>${mem.nickname}</td>
													<td>${mem.adrs}</td>
													<c:if test = "${mem.gender == 0}">
														<td>남자</td>
													</c:if>
													<c:if test = "${mem.gender == 1}">
														<td>여자</td>
													</c:if>
													<td>${mem.mail1}@${mem.mail2}</td>
													<c:if test = "${mem.question == 1}">
														<td>보물 1호</td>
													</c:if>
													<c:if test = "${mem.question == 2}">
														<td>부모님 성함</td>
													</c:if>
													<c:if test = "${mem.question == 3}">
														<td>친한친구 이름</td>
													</c:if>
													<td>${mem.ans}</td>
													<td><fmt:formatDate value="${mem.reg}" pattern="yyyy년MM월dd일" /></td>
													<td><fmt:formatDate value="${mem.logintime }" pattern="yyyy년MM월dd일" /></td>
													<c:if test = "${mem.status == 0 }">
														<td>탈퇴</td>
													</c:if>
													<c:if test = "${mem.status == 1 }">
														<td>가입</td>
													</c:if>
													<c:if test = "${mem.status == 2 }">
														<td>관리자</td>
													</c:if>
													<td>
													<c:if test = "${mem.status != 2 }">
														<form action="/adMem/update" method="post" >
															<select name="status" >
																<option value="0" <c:if test="${mem.status==0}" >selected="selected"</c:if>>복구</option>
																<option value="1" <c:if test="${mem.status==1}" >selected="selected"</c:if>>삭제</option>
															</select>
															<input type="hidden" name="id" value="${mem.id}" />
															<input type="hidden" name="status" value="${mem.status}" />
															<input type="submit" value="적용" />
														</form>
													</c:if>	
													</td>
												</tr>	
											</c:forEach>
										</c:if>	
			                    	</table>
									<c:if test="${count > 0}">
										<c:if test="${startPage>10}">
											<a href="/adMem/list?pageNum=${startPage-10}" >[이전]</a>
										</c:if>
										<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
											<a href="/adMem/list?pageNum=${i}" >[${i}]</a>
										</c:forEach>
										<c:if test="${endPage < pageCount}">
											<a href="/adMem/list?pageNum=${startPage+10}" >[다음]</a>
										</c:if>
									</c:if>
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
