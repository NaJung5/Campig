<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
	  <!-- Required meta tags -->
	  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <title>관리자 페이지</title>
	  <!-- plugins:css -->
	  <link rel="stylesheet" href="/resources/vendors/feather/feather.css">
	  <link rel="stylesheet" href="/resources/vendors/mdi/css/materialdesignicons.min.css">
	  <link rel="stylesheet" href="/resources/vendors/ti-icons/css/themify-icons.css">
	  <link rel="stylesheet" href="/resources/vendors/typicons/typicons.css">
	  <link rel="stylesheet" href="/resources/vendors/simple-line-icons/css/simple-line-icons.css">
	  <link rel="stylesheet" href="/resources/vendors/css/vendor.bundle.base.css">
	  <!-- endinject -->
	  <!-- Plugin css for this page -->
	  <link rel="stylesheet" href="/resources/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
	  <link rel="stylesheet" href="/resources/js/select.dataTables.min.css">
	  <!-- End plugin css for this page -->
	  <!-- inject:css -->
	  <link rel="stylesheet" href="/resources/css/vertical-layout-light/style.css">
	  <!-- endinject -->
	  <link rel="shortcut icon" href="/resources/images/favicon.png" />
	</head>
	<body>
		<c:if test="${sessionScope.adId == null}">
			<script>
				alert("잘못된 접근입니다");
				window.location = "/member/loginForm";
			</script>
		</c:if>
		
		<div class="container-scroller"> 
	    <!-- partial:partials/_navbar.html -->
	    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
	      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
	        <div class="me-3">
	          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
	            <span class="icon-menu"></span>
	          </button>
	        </div>
	        <div>
	        <!-- 절대주소로 매핑 변경 할 것 -->
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
	            <a class="nav-link dropdown-bordered dropdown-toggle dropdown-toggle-split" id="messageDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false"> Select Category </a>
	            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="messageDropdown">
	              <a class="dropdown-item py-3" >
	                <p class="mb-0 font-weight-medium float-left">Select category</p>
	              </a>
	              <div class="dropdown-divider"></div>
	              <a class="dropdown-item preview-item">
	                <div class="preview-item-content flex-grow py-2">
	                  <p class="preview-subject ellipsis font-weight-medium text-dark"> Bootstrap Bundle </p>
	                  <p class="fw-light small-text mb-0">This is a Bundle featuring 16 unique dashboards</p>
	                </div>
	              </a>
	              <a class="dropdown-item preview-item">
	                <div class="preview-item-content flex-grow py-2">
	                  <p class="preview-subject ellipsis font-weight-medium text-dark">Angular Bundle</p>
	                  <p class="fw-light small-text mb-0">Everything you’ll ever need for your Angular projects</p>
	                </div>
	              </a>
	              <a class="dropdown-item preview-item">
	                <div class="preview-item-content flex-grow py-2">
	                  <p class="preview-subject ellipsis font-weight-medium text-dark">VUE Bundle</p>
	                  <p class="fw-light small-text mb-0">Bundle of 6 Premium Vue Admin Dashboard</p>
	                </div>
	              </a>
	              <a class="dropdown-item preview-item">
	                <div class="preview-item-content flex-grow py-2">
	                  <p class="preview-subject ellipsis font-weight-medium text-dark">React Bundle</p>
	                  <p class="fw-light small-text mb-0">Bundle of 8 Premium React Admin Dashboard</p>
	                </div>
	              </a>
	            </div>
	          </li>
	          <li class="nav-item d-none d-lg-block">
	            <div id="datepicker-popup" class="input-group date datepicker navbar-date-picker">
	              <span class="input-group-addon input-group-prepend border-right">
	                <span class="icon-calendar input-group-text calendar-icon"></span>
	              </span>
	              <input type="text" class="form-control">
	            </div>
	          </li>
	          <li class="nav-item">
	            <form class="search-form" action="#">
	              <i class="icon-search"></i>
	              <input type="search" class="form-control" placeholder="Search Here" title="Search here">
	            </form>
	          </li>
	          <li class="nav-item dropdown">
	            <a class="nav-link count-indicator" id="notificationDropdown" href="#" data-bs-toggle="dropdown">
	              <i class="icon-mail icon-lg"></i>
	            </a>
	            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="notificationDropdown">
	              <a class="dropdown-item py-3 border-bottom">
	                <p class="mb-0 font-weight-medium float-left">You have 4 new notifications </p>
	                <span class="badge badge-pill badge-primary float-right">View all</span>
	              </a>
	              <a class="dropdown-item preview-item py-3">
	                <div class="preview-thumbnail">
	                  <i class="mdi mdi-alert m-auto text-primary"></i>
	                </div>
	                <div class="preview-item-content">
	                  <h6 class="preview-subject fw-normal text-dark mb-1">Application Error</h6>
	                  <p class="fw-light small-text mb-0"> Just now </p>
	                </div>
	              </a>
	              <a class="dropdown-item preview-item py-3">
	                <div class="preview-thumbnail">
	                  <i class="mdi mdi-settings m-auto text-primary"></i>
	                </div>
	                <div class="preview-item-content">
	                  <h6 class="preview-subject fw-normal text-dark mb-1">Settings</h6>
	                  <p class="fw-light small-text mb-0"> Private message </p>
	                </div>
	              </a>
	              <a class="dropdown-item preview-item py-3">
	                <div class="preview-thumbnail">
	                  <i class="mdi mdi-airballoon m-auto text-primary"></i>
	                </div>
	                <div class="preview-item-content">
	                  <h6 class="preview-subject fw-normal text-dark mb-1">New user registration</h6>
	                  <p class="fw-light small-text mb-0"> 2 days ago </p>
	                </div>
	              </a>
	            </div>
	          </li>
	          <li class="nav-item dropdown"> 
	            <a class="nav-link count-indicator" id="countDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
	              <i class="icon-bell"></i>
	              <span class="count"></span>
	            </a>
	            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0" aria-labelledby="countDropdown">
	              <a class="dropdown-item py-3">
	                <p class="mb-0 font-weight-medium float-left">You have 7 unread mails </p>
	                <span class="badge badge-pill badge-primary float-right">View all</span>
	              </a>
	              <div class="dropdown-divider"></div>
	              <a class="dropdown-item preview-item">
	                <div class="preview-thumbnail">
	                  <img src="/resources/images/faces/face10.jpg" alt="image" class="img-sm profile-pic">
	                </div>
	                <div class="preview-item-content flex-grow py-2">
	                  <p class="preview-subject ellipsis font-weight-medium text-dark">Marian Garner </p>
	                  <p class="fw-light small-text mb-0"> The meeting is cancelled </p>
	                </div>
	              </a>
	              <a class="dropdown-item preview-item">
	                <div class="preview-thumbnail">
	                  <img src="/resources/images/faces/face12.jpg" alt="image" class="img-sm profile-pic">
	                </div>
	                <div class="preview-item-content flex-grow py-2">
	                  <p class="preview-subject ellipsis font-weight-medium text-dark">David Grey </p>
	                  <p class="fw-light small-text mb-0"> The meeting is cancelled </p>
	                </div>
	              </a>
	              <a class="dropdown-item preview-item">
	                <div class="preview-thumbnail">
	                  <img src="/resources/images/faces/face1.jpg" alt="image" class="img-sm profile-pic">
	                </div>
	                <div class="preview-item-content flex-grow py-2">
	                  <p class="preview-subject ellipsis font-weight-medium text-dark">Travis Jenkins </p>
	                  <p class="fw-light small-text mb-0"> The meeting is cancelled </p>
	                </div>
	              </a>
	            </div>
	          </li>
	          <li class="nav-item dropdown d-none d-lg-block user-dropdown">
	            <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
	              <img class="img-xs rounded-circle" src="/resources/images/faces/face8.jpg" alt="Profile image"> </a>
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
	    <!-- partial -->
	    <div class="container-fluid page-body-wrapper">
	      <!-- partial -->
	      <!-- partial:partials/_sidebar.html -->
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
	      <!-- partial -->
	      <div class="main-panel">
	        <div class="content-wrapper">
	          <div class="row">
	            <div class="col-sm-12">
	              <div class="home-tab">
	                <div class="d-sm-flex align-items-center justify-content-between border-bottom">
	                  <ul class="nav nav-tabs" role="tablist">
	                    <!-- 캠핑장 데이터 검색 데이터 캠핑장비 데이터 회원 데이터 따로 뷰 만들기 href에 넣고 테스트 혹은 이 부분만 변하게 남겨두고 딴거는 그대로 -->
	                    <li class="nav-item">
	                      <a class="nav-link active ps-0" id="home-tab" data-bs-toggle="tab" href="#overview" role="tab" aria-controls="overview" aria-selected="true">Overview</a>
	                    </li>
	                    <li class="nav-item">
	                      <a class="nav-link" id="account-tab" data-bs-toggle="tab" href="#account" role="tab" aria-selected="false">회원 통계</a>
	                    </li>
	                    <li class="nav-item">
	                      <a class="nav-link" id="equipment-tab" data-bs-toggle="tab" href="#equipment" role="tab" aria-selected="false">장비통계</a>
	                    </li>
	                    <li class="nav-item">
	                      <a class="nav-link"  id="spot-tab" data-bs-toggle="tab" href="#spot" role="tab" aria-selected="false">캠핑장통계</a>
	                    </li>
	                  </ul>
	                  <div>
	                    <div class="btn-wrapper">
	                      <a href="#" class="btn btn-otline-dark align-items-center"><i class="icon-share"></i> Share</a>
	                      <a href="#" class="btn btn-otline-dark"><i class="icon-printer"></i> Print</a>
	                      <a href="#" class="btn btn-primary text-white me-0"><i class="icon-download"></i> Export</a>
	                    </div>
	                  </div>
	                </div>
	                <div class="tab-content tab-content-basic">
	                  <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview"> 
	                    <div class="row">
	                      <div class="col-sm-12">
	                        <div class="statistics-details d-flex align-items-center justify-content-between">
	                          	<!-- 일별 회원가입수 / 일별 방문자수 / 게시판 새글 횟수 /   -->
	                          <div>
	                            <p class="statistics-title">금일 방문자수</p>
	                            <h3 class="rate-percentage">${todayCome}</h3>
	                            <c:if test="${increaseCome>=0}">
	                            	<p class="text-success d-flex"><i class="mdi mdi-menu-up"></i><span>${increaseCome}</span></p>
	                            </c:if>
	                            <c:if test="${increaseCome<0}">
	                            	<p class="text-danger d-flex"><i class="mdi mdi-menu-down"></i><span>${increaseCome}</span></p>
	                            </c:if>
	                          </div>
	                          <div class="d-none d-md-block">
	                            <p class="statistics-title">금일 가입자수</p>
	                            <h3 class="rate-percentage">${todaySignin}</h3>
	                            <c:if test="${increaseSignin>=0}">
	                            	<p class="text-success d-flex"><i class="mdi mdi-menu-up"></i><span>${increaseSignin}</span></p>
	                            </c:if>
	                            <c:if test="${increaseSignin<0}">
	                            	<p class="text-danger d-flex"><i class="mdi mdi-menu-down"></i><span>${increaseSignin}</span></p>
	                            </c:if>
	                          </div>
	                          <div class="d-none d-md-block">
	                            <p class="statistics-title">금일 게시글수</p>
	                            <h3 class="rate-percentage">${todayNewBoard}</h3>
	                            <c:if test="${increasePost>=0}">
	                            	<p class="text-success d-flex"><i class="mdi mdi-menu-up"></i><span>${increasePost}</span></p>
	                            </c:if>
	                            <c:if test="${increasePost<0}">
	                            	<p class="text-danger d-flex"><i class="mdi mdi-menu-down"></i><span>${increasePost}</span></p>
	                            </c:if>
	                          </div>
	                        </div>
	                      </div>
	                    </div> 
	                    <div class="row">
	                      <div class="col-lg-8 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 col-lg-4 col-lg-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                            <!-- (선그래프) 요일별 방문자  -->
	                            <!-- (막대그래프) 장비 / 장 / 게시글 -->
	                            <!-- (원그래프) 회원 성비 / 연령비율 -->
	                            <!-- 가장 많이 활동한 회원 -->
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                   <h4 class="card-title card-title-dash">시간별 접속자 현황</h4>
	                                  </div>
	                                  <div id="performance-line-legend"></div>
	                                </div>
	                                <div class="chartjs-wrapper mt-5">
	                                  <canvas id="performaneLine"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">많이 들어가는 페이지</h4>
	                                   <p class="card-subtitle card-subtitle-dash">설명란</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between">
	                                    <h2 class="me-2 fw-bold">요약</h2>
	                                    <h4 class="me-2">부제목</h4><h4 class="text-success">부제목2</h4>
	                                  </div>
	                                  <div class="me-3"><div id="page-Chart-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="pageChart"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">인기 장비순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">즐겨찾기에 가장 많이 들어가있는 품목</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between"><h2 class="me-2 fw-bold">요약</h2><h4 class="me-2">부제목</h4><h4 class="text-success">부제목</h4></div>
	                                  <div class="me-3"><div id="equipFavorite-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="equipFavorite"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">인기 캠핑장 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">즐겨찾기에 가장 많이 들어가있는 기반</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between">
	                                    <h2 class="me-2 fw-bold">요약</h2>
	                                    <h4 class="me-2">부제목</h4><h4 class="text-success">부제목2</h4>
	                                  </div>
	                                  <div class="me-3"><div id="spotFavorite-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="spotFavorite"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">인기 게시글 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">조회수기반</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between">
	                                    <h2 class="me-2 fw-bold">요약</h2>
	                                    <h4 class="me-2">부제목</h4><h4 class="text-success">부제목2</h4>
	                                  </div>
	                                  <div class="me-3"><div id="postTopView-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="postTopView"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
	                  </div>
	                  <div class="tab-pane fade" id="account">
	                  	<div class="row">
	                  	  <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="row">
	                                  <div class="col-lg-12">
	                                    <div class="d-flex justify-content-between align-items-center mb-3">
	                                      <h4 class="card-title card-title-dash">가입자 연령대</h4>
	                                    </div>
	                                    	<canvas class="my-auto" id="ageRatio" height="200"></canvas>
	                                    <div id="ageRatio-chart-legend" class="mt-5 text-center"></div>
	                                  </div>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="row">
	                                  <div class="col-lg-12">
	                                    <div class="d-flex justify-content-between align-items-center mb-3">
	                                      <h4 class="card-title card-title-dash">가입자 성비</h4>
	                                    </div>
	                                    	<canvas class="my-auto" id="genderRatio" height="200"></canvas>
	                                    <div id="genderRatio-chart-legend" class="mt-5 text-center"></div>
	                                  </div>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                    </div> 
	                  </div>
					  <div class="tab-pane fade" id="equipment">
					  	<div class="row">
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">인기 장비순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">즐겨찾기에 가장 많이 들어가있는 품목</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between"><h2 class="me-2 fw-bold">요약</h2><h4 class="me-2">부제목</h4><h4 class="text-success">부제목</h4></div>
	                                  <div class="me-3"><div id="equipFavorite-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="equipFavorite"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">인기 캠핑장 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">즐겨찾기에 가장 많이 들어가있는 기반</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between">
	                                    <h2 class="me-2 fw-bold">요약</h2>
	                                    <h4 class="me-2">부제목</h4><h4 class="text-success">부제목2</h4>
	                                  </div>
	                                  <div class="me-3"><div id="spotFavorite-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="spotFavorite"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">인기 게시글 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">조회수기반</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between">
	                                    <h2 class="me-2 fw-bold">요약</h2>
	                                    <h4 class="me-2">부제목</h4><h4 class="text-success">부제목2</h4>
	                                  </div>
	                                  <div class="me-3"><div id="postTopView-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="postTopView"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
					  </div>
					  <div class="tab-pane fade" id="spot">
					  	<div class="row">
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">캠핑장 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">캠핑장 조회수 기반</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between"><h2 class="me-2 fw-bold">요약</h2><h4 class="me-2">부제목</h4><h4 class="text-success">부제목</h4></div>
	                                  <div class="me-3"><div id="spotTopView-chart-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="spotTopView"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">캠핑장 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">캠핑장 평점 기반</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between"><h2 class="me-2 fw-bold">요약</h2><h4 class="me-2">부제목</h4><h4 class="text-success">부제목</h4></div>
	                                  <div class="me-3"><div id="spotTopScore-chart-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="spotTopScore"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="row">
	                                  <div class="col-lg-12">
	                                    <div class="d-flex justify-content-between align-items-center mb-3">
	                                      <h4 class="card-title card-title-dash">선호 계절</h4>
	                                    </div>
	                                    	<canvas class="my-auto" id="seasonRatio" height="200"></canvas>
	                                    <div id="seasonRatio-chart-legend" class="mt-5 text-center"></div>
	                                  </div>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">캠핑장 시설 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">가장 많이 검색된 시설</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between"><h2 class="me-2 fw-bold">요약</h2><h4 class="me-2">부제목</h4><h4 class="text-success">부제목</h4></div>
	                                  <div class="me-3"><div id="spotFacility-chart-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="spotFacility"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">캠핑장 환경 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">가장 많이 검색된 환경</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between">
	                                    <h2 class="me-2 fw-bold">요약</h2>
	                                    <h4 class="me-2">부제목</h4><h4 class="text-success">부제목2</h4>
	                                  </div>
	                                  <div class="me-3"><div id="spotEnvir-chart-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="spotEnvir"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                      <div class="col-lg-4 d-flex flex-column">
	                        <div class="row flex-grow">
	                          <div class="col-12 grid-margin stretch-card">
	                            <div class="card card-rounded">
	                              <div class="card-body">
	                                <div class="d-sm-flex justify-content-between align-items-start">
	                                  <div>
	                                    <h4 class="card-title card-title-dash">캠핑장 지역 순위</h4>
	                                   <p class="card-subtitle card-subtitle-dash">가장 많이 검색된 캠핑장</p>
	                                  </div>
	                                </div>
	                                <div class="d-sm-flex align-items-center mt-1 justify-content-between">
	                                  <div class="d-sm-flex align-items-center mt-4 justify-content-between">
	                                    <h2 class="me-2 fw-bold">요약</h2>
	                                    <h4 class="me-2">부제목</h4><h4 class="text-success">부제목2</h4>
	                                  </div>
	                                  <div class="me-3"><div id="spotRegion-chart-legend"></div></div>
	                                </div>
	                                <div class="chartjs-bar-wrapper mt-3">
	                                  <canvas id="spotRegion"></canvas>
	                                </div>
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                      </div>
	                    </div>
	                  </div>  
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	        <!-- content-wrapper ends -->
	        <!-- partial:partials/_footer.html -->
	        <footer class="footer">
	          <div class="d-sm-flex justify-content-center justify-content-sm-between">
	            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash.</span>
	            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Copyright © 2021. All rights reserved.</span>
	          </div>
	        </footer>
	        <!-- partial -->
	      </div>
	      <!-- main-panel ends -->
	    </div>
	    <!-- page-body-wrapper ends -->
	  </div>
	  <!-- container-scroller -->
	
	  <!-- plugins:js -->
	  <script src="/resources/vendors/js/vendor.bundle.base.js"></script>
	  <!-- endinject -->
	  <!-- Plugin js for this page -->
	  <script src="/resources/vendors/chart.js/Chart.min.js"></script>
	  <script src="/resources/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
	  <script src="/resources/vendors/progressbar.js/progressbar.min.js"></script>
	
	  <!-- End plugin js for this page -->
	  <!-- inject:js -->
	  <script src="/resources/js/off-canvas.js"></script>
	  <script src="/resources/js/hoverable-collapse.js"></script>
	  <script src="/resources/js/template.js"></script>
	  <script src="/resources/js/settings.js"></script>
	  <script src="/resources/js/todolist.js"></script>
	  <!-- endinject -->
	  <!-- Custom js for this page-->
	  
	 <!-- <script src="/resources/js/dashboard.js"></script> --> 
	 <script>
	 (function($) {
		  'use strict';
		  $(function() {
		    if ($("#performaneLine").length) {
		      var graphGradient = document.getElementById("performaneLine").getContext('2d');
		      var graphGradient2 = document.getElementById("performaneLine").getContext('2d');
		      var saleGradientBg = graphGradient.createLinearGradient(5, 0, 5, 100);
		      saleGradientBg.addColorStop(0, 'rgba(26, 115, 232, 0.18)');
		      saleGradientBg.addColorStop(1, 'rgba(26, 115, 232, 0.02)');
		      var saleGradientBg2 = graphGradient2.createLinearGradient(100, 0, 50, 150);
		      saleGradientBg2.addColorStop(0, 'rgba(0, 208, 255, 0.19)');
		      saleGradientBg2.addColorStop(1, 'rgba(0, 208, 255, 0.03)');
		      var salesTopData = {
		          labels: ["01","02", "03", "04", "05","06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		          datasets: [{
		              label: 'count',
		              data: [
		            	  <c:forEach  var="time" items="${timelist}">
			          	  	${time.staticValue},
			          	  </c:forEach>
		            	  ],
		              backgroundColor: saleGradientBg,
		              borderColor: [
		                  '#1F3BB3',
		              ],
		              borderWidth: 1.5,
		              fill: true, // 3: no fill
		              pointBorderWidth: 1,
		              pointRadius: [4, 4, 4, 4, 4,4, 4, 4, 4, 4,4, 4, 4, 4, 4, 4, 4,4, 4, 4, 4, 4,4, 4],
		              pointHoverRadius: [2, 2, 2, 2, 2,2, 2, 2, 2, 2,2, 2, 2, 2, 2, 2, 2,2, 2, 2, 2, 2,2, 2],
		              pointBackgroundColor: ['#1F3BB3)', '#1F3BB3', '#1F3BB3', '#1F3BB3','#1F3BB3)', '#1F3BB3', '#1F3BB3', '#1F3BB3','#1F3BB3)', '#1F3BB3', '#1F3BB3', '#1F3BB3','#1F3BB3)', '#1F3BB3', '#1F3BB3', '#1F3BB3','#1F3BB3)', '#1F3BB3', '#1F3BB3', '#1F3BB3','#1F3BB3)', '#1F3BB3', '#1F3BB3', '#1F3BB3'],
		              pointBorderColor: ['#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff','#fff',],
		          }]
		      };
		      var salesTopOptions = {
		        responsive: true,
		        maintainAspectRatio: false,
		          scales: {
		              yAxes: [{
		                  gridLines: {
		                      display: true,
		                      drawBorder: false,
		                      color:"#F0F0F0",
		                      zeroLineColor: '#F0F0F0',
		                  },
		                  ticks: {
		                    beginAtZero: false,
		                    autoSkip: true,
		                    maxTicksLimit: 4,
		                    fontSize: 10,
		                    color:"#6B778C"
		                  }
		              }],
		              xAxes: [{
		                gridLines: {
		                    display: false,
		                    drawBorder: false,
		                },
		                ticks: {
		                  beginAtZero: false,
		                  autoSkip: true,
		                  maxTicksLimit: 7,
		                  fontSize: 10,
		                  color:"#6B778C"
		                }
		            }],
		          },
		          legend:false,
		          legendCallback: function (chart) {
		            var text = [];
		            text.push('<div class="chartjs-legend"><ul>');
		            for (var i = 0; i < chart.data.datasets.length; i++) {
		              console.log(chart.data.datasets[i]); // see what's inside the obj.
		              text.push('<li>');
		              text.push('<span style="background-color:' + chart.data.datasets[i].borderColor + '">' + '</span>');
		              text.push(chart.data.datasets[i].label);
		              text.push('</li>');
		            }
		            text.push('</ul></div>');
		            return text.join("");
		          },
		          
		          elements: {
		              line: {
		                  tension: 0.4,
		              }
		          },
		          tooltips: {
		              backgroundColor: 'rgba(31, 59, 179, 1)',
		          }
		      }
		      var salesTop = new Chart(graphGradient, {
		          type: 'line',
		          data: salesTopData,
		          options: salesTopOptions
		      });
		      document.getElementById('performance-line-legend').innerHTML = salesTop.generateLegend();
		    }
		    
		    if ($("#pageChart").length) {
				var pageChart = document.getElementById("pageChart").getContext('2d');
				var pageChartData = {
			    labels: [
				      	  <c:forEach var="eqFav" items="${PageStatic}">
			           		  "${eqFav.staticName}",
			           	  </c:forEach>
			    		],
			   	datasets: [{
			    	label: 'total',
			    	data: [
			      			<c:forEach var="eqFav" items="${PageStatic}">
			         			${eqFav.staticValue},
			            	</c:forEach>
						],
					backgroundColor: "#52CDFF",
					borderColor: [
			        			'#52CDFF',
								],
					borderWidth: 0,
			        fill: true, // 3: no fill
			 			}]
			      };
			  
			  	var pageChartOptions = {
			        responsive: true,
			        maintainAspectRatio: false,
					scales: {
			              yAxes: [{
			                  gridLines: {
			                      display: true,
			                      drawBorder: false,
			                      color:"#F0F0F0",
			                      zeroLineColor: '#F0F0F0',
			                  },
			                  ticks: {
			                    beginAtZero: true,
			                    autoSkip: true,
			                    maxTicksLimit: 5,
			                    fontSize: 10,
			                    color:"#6B778C"
			                  }
			              }],
			              xAxes: [{
			                stacked: true,
			                barPercentage: 0.35,
			                gridLines: {
			                    display: false,
			                    drawBorder: false,
			                },
			                ticks: {
			                  beginAtZero: false,
			                  autoSkip: true,
			                  maxTicksLimit: 12,
			                  fontSize: 10,
			                  color:"#6B778C"
			                }
			            }],
			          },
			        legend:false,
			        legendCallback: function (chart) {
			       		var text = [];
			        	text.push('<div class="chartjs-legend"><ul>');
			        	for (var i = 0; i < chart.data.datasets.length; i++) {
			        		console.log(chart.data.datasets[i]); // see what's inside the obj.
							text.push('<li class="text-muted text-small">');
							text.push('<span style="background-color:' + chart.data.datasets[i].borderColor + '">' + '</span>');
							text.push(chart.data.datasets[i].label);
							text.push('</li>');
						}
			        text.push('</ul></div>');
			        return text.join("");
			  		},
					elements: {
			        	line: {
			        		tension: 0.4,
						}
					},
			        tooltips: {
			        	backgroundColor: 'rgba(31, 59, 179, 1)',
					}
				}
				var page = new Chart(pageChart, {
			    	type: 'bar',
					data: pageChartData,
					options: pageChartOptions
				});
			    document.getElementById('page-Chart-legend').innerHTML = page.generateLegend();
			}
		    
		    if ($("#equipFavorite").length) {
		      var equipFavoriteChart = document.getElementById("equipFavorite").getContext('2d');
		      var equipFavoriteData = {
		          labels: [
			        	  <c:forEach var="eqFav" items="${EqFavStatic}">
		            		  "${eqFav.staticName}",
		            	  </c:forEach>
		          		],
		          datasets: [{
		              label: 'total',
		              data: [
		            	  <c:forEach var="eqFav" items="${EqFavStatic}">
		            		  ${eqFav.staticValue},
		            	  </c:forEach>
		            	  ],
		              backgroundColor: "#52CDFF",
		              borderColor: [
		                  '#52CDFF',
		              ],
		              borderWidth: 0,
		              fill: true, // 3: no fill
		              
		          }]
		      };
		  
		      var equipFavoriteOptions = {
		        responsive: true,
		        maintainAspectRatio: false,
		          scales: {
		              yAxes: [{
		                  gridLines: {
		                      display: true,
		                      drawBorder: false,
		                      color:"#F0F0F0",
		                      zeroLineColor: '#F0F0F0',
		                  },
		                  ticks: {
		                    beginAtZero: true,
		                    autoSkip: true,
		                    maxTicksLimit: 5,
		                    fontSize: 10,
		                    color:"#6B778C"
		                  }
		              }],
		              xAxes: [{
		                stacked: true,
		                barPercentage: 0.35,
		                gridLines: {
		                    display: false,
		                    drawBorder: false,
		                },
		                ticks: {
		                  beginAtZero: false,
		                  autoSkip: true,
		                  maxTicksLimit: 12,
		                  fontSize: 10,
		                  color:"#6B778C"
		                }
		            }],
		          },
		          legend:false,
		          legendCallback: function (chart) {
		            var text = [];
		            text.push('<div class="chartjs-legend"><ul>');
		            for (var i = 0; i < chart.data.datasets.length; i++) {
		              console.log(chart.data.datasets[i]); // see what's inside the obj.
		              text.push('<li class="text-muted text-small">');
		              text.push('<span style="background-color:' + chart.data.datasets[i].borderColor + '">' + '</span>');
		              text.push(chart.data.datasets[i].label);
		              text.push('</li>');
		            }
		            text.push('</ul></div>');
		            return text.join("");
		          },
		          
		          elements: {
		              line: {
		                  tension: 0.4,
		              }
		          },
		          tooltips: {
		              backgroundColor: 'rgba(31, 59, 179, 1)',
		          }
		      }
		      var equipFavorite = new Chart(equipFavoriteChart, {
		          type: 'bar',
		          data: equipFavoriteData,
		          options: equipFavoriteOptions
		      });
		      document.getElementById('equipFavorite-legend').innerHTML = equipFavorite.generateLegend();
		    }
		    
		    if ($("#spotFavorite").length) {
		      var spotFavoriteChart = document.getElementById("spotFavorite").getContext('2d');
		      var spotFavoriteData = {
		          labels: [
		        	  <c:forEach var="spotFav" items="${SpFavStatic}">
	            		  "${spotFav.staticName}",
	            	  </c:forEach>
		        	  ],
		          datasets: [{
		              label: 'total',
		              data: [
		            	  <c:forEach var="spotFav" items="${SpFavStatic}">
		            		   ${spotFav.staticValue},
		            	  </c:forEach>
		            	  ],
		              backgroundColor: "#1F3BB3",
		              borderColor: [
		                  '#1F3BB3',
		              ],
		              borderWidth: 0,
		              fill: true, // 3: no fill
		          }]
		      };
		  
		      var spotFavoriteOptions = {
		        responsive: true,
		        maintainAspectRatio: false,
		          scales: {
		              yAxes: [{
		                  gridLines: {
		                      display: true,
		                      drawBorder: false,
		                      color:"#F0F0F0",
		                      zeroLineColor: '#F0F0F0',
		                  },
		                  ticks: {
		                    beginAtZero: true,
		                    autoSkip: true,
		                    maxTicksLimit: 5,
		                    fontSize: 10,
		                    color:"#6B778C"
		                  }
		              }],
		              xAxes: [{
		                stacked: true,
		                barPercentage: 0.35,
		                gridLines: {
		                    display: false,
		                    drawBorder: false,
		                },
		                ticks: {
		                  beginAtZero: false,
		                  autoSkip: true,
		                  maxTicksLimit: 12,
		                  fontSize: 10,
		                  color:"#6B778C"
		                }
		            }],
		          },
		          legend:false,
		          legendCallback: function (chart) {
		            var text = [];
		            text.push('<div class="chartjs-legend"><ul>');
		            for (var i = 0; i < chart.data.datasets.length; i++) {
		              console.log(chart.data.datasets[i]); // see what's inside the obj.
		              text.push('<li class="text-muted text-small">');
		              text.push('<span style="background-color:' + chart.data.datasets[i].borderColor + '">' + '</span>');
		              text.push(chart.data.datasets[i].label);
		              text.push('</li>');
		            }
		            text.push('</ul></div>');
		            return text.join("");
		          },
		          
		          elements: {
		              line: {
		                  tension: 0.4,
		              }
		          },
		          tooltips: {
		              backgroundColor: 'rgba(31, 59, 179, 1)',
		          }
		      }
		      var spotFavorite = new Chart(spotFavoriteChart, {
		          type: 'bar',
		          data: spotFavoriteData,
		          options: spotFavoriteOptions
		      });
		      document.getElementById('spotFavorite-legend').innerHTML = spotFavorite.generateLegend();
		    }
		    
		    if ($("#postTopView").length) {
		      var postTopViewChart = document.getElementById("postTopView").getContext('2d');
		      var postTopViewData = {
		          labels: [
		        	  <c:forEach var="boardTopView" items="${BoardStatic}">
		        	  	"${boardTopView.staticName}",
		        	  </c:forEach>
		        	  	],
		          datasets: [{
		              label: 'total',
		              data: [
		            	  <c:forEach var="boardTopView" items="${BoardStatic}">
		            	  	${boardTopView.staticValue},
		            	  </c:forEach>
		            	  ],
		              backgroundColor: "#52CDFF",
		              borderColor: [
		                  '#52CDFF',
		              ],
		              borderWidth: 0,
		              fill: true, // 3: no fill
		              
		          }]
		      };
		  
		      var postTopViewOptions = {
		        responsive: true,
		        maintainAspectRatio: false,
		          scales: {
		              yAxes: [{
		                  gridLines: {
		                      display: true,
		                      drawBorder: false,
		                      color:"#F0F0F0",
		                      zeroLineColor: '#F0F0F0',
		                  },
		                  ticks: {
		                    beginAtZero: true,
		                    autoSkip: true,
		                    maxTicksLimit: 5,
		                    fontSize: 10,
		                    color:"#6B778C"
		                  }
		              }],
		              xAxes: [{
		                stacked: true,
		                barPercentage: 0.35,
		                gridLines: {
		                    display: false,
		                    drawBorder: false,
		                },
		                ticks: {
		                  beginAtZero: false,
		                  autoSkip: true,
		                  maxTicksLimit: 12,
		                  fontSize: 10,
		                  color:"#6B778C"
		                }
		            }],
		          },
		          legend:false,
		          legendCallback: function (chart) {
		            var text = [];
		            text.push('<div class="chartjs-legend"><ul>');
		            for (var i = 0; i < chart.data.datasets.length; i++) {
		              console.log(chart.data.datasets[i]); // see what's inside the obj.
		              text.push('<li class="text-muted text-small">');
		              text.push('<span style="background-color:' + chart.data.datasets[i].borderColor + '">' + '</span>');
		              text.push(chart.data.datasets[i].label);
			              text.push('</li>');
		            }
		            text.push('</ul></div>');
		            return text.join("");
	          	  },
			          
		          elements: {
		              line: {
		                  tension: 0.4,
		              }
		          },
		          tooltips: {
		              backgroundColor: 'rgba(31, 59, 179, 1)',
		          }
		      }
		      var postTopView = new Chart(postTopViewChart, {
		          type: 'bar',
		          data: postTopViewData,
		          options: postTopViewOptions
		      });
		      document.getElementById('postTopView-legend').innerHTML = postTopView.generateLegend();
		    }
		    
		    if ($("#ageRatio").length) {
		      var doughnutChartCanvas = $("#ageRatio").get(0).getContext("2d");
		      var doughnutPieData = {
		        datasets: [{
		          data: [${age10}, ${age20}, ${age30}, ${age40},${age50}],
		          backgroundColor: [
		            "#1F3BB3",
		            "#FDD0C7",
		            "#52CDFF",
		            "#81DADA",
		            "#FFE146"
		          ],
		          borderColor: [
		            "#1F3BB3",
		            "#FDD0C7",
		            "#52CDFF",
		            "#81DADA",
		            "#FFE146"
		          ],
		        }],
		  
		        // These labels appear in the legend and in the tooltips when hovering different arcs
		        labels: [
		          '10대',
		          '20대',
		          '30대',
		          '40대',
		          '50대'
		        ]
		      };
		      var doughnutPieOptions = {
		        cutoutPercentage: 50,
		        animationEasing: "easeOutBounce",
		        animateRotate: true,
		        animateScale: false,
		        responsive: true,
		        maintainAspectRatio: true,
		        showScale: true,
		        legend: false,
		        legendCallback: function (chart) {
		          var text = [];
		          text.push('<div class="chartjs-legend"><ul class="justify-content-center">');
		          for (var i = 0; i < chart.data.datasets[0].data.length; i++) {
		            text.push('<li><span style="background-color:' + chart.data.datasets[0].backgroundColor[i] + '">');
		            text.push('</span>');
		            if (chart.data.labels[i]) {
		              text.push(chart.data.labels[i]);
		            }
		            text.push('</li>');
		          }
		          text.push('</div></ul>');
		          return text.join("");
		        },
		        
		        layout: {
		          padding: {
		            left: 0,
		            right: 0,
		            top: 0,
		            bottom: 0
		          }
		        },
		        tooltips: {
		          callbacks: {
		            title: function(tooltipItem, data) {
		              return data['labels'][tooltipItem[0]['index']];
		            },
		            label: function(tooltipItem, data) {
		              return data['datasets'][0]['data'][tooltipItem['index']];
		            }
		          },
		            
		          backgroundColor: '#fff',
		          titleFontSize: 14,
		          titleFontColor: '#0B0F32',
		          bodyFontColor: '#737F8B',
		          bodyFontSize: 11,
		          displayColors: false
		        }
		      };
		      var doughnutChart = new Chart(doughnutChartCanvas, {
		        type: 'doughnut',
		        data: doughnutPieData,
		        options: doughnutPieOptions
		      });
		      document.getElementById('ageRatio-chart-legend').innerHTML = doughnutChart.generateLegend();
		    }
		    
		    if ($("#genderRatio").length) {
		    	var doughnutChartCanvas = $("#genderRatio").get(0).getContext("2d");
			      var doughnutPieData = {
			        datasets: [{
			          data: [${memCount}, ${womemCount}],
			          backgroundColor: [
			            "#1F3BB3",
			            "#FDD0C7"
			          ],
			          borderColor: [
			            "#1F3BB3",
			            "#FDD0C7"
			          ],
			        }],
			  
			        // These labels appear in the legend and in the tooltips when hovering different arcs
			        labels: [
			          '남성',
			          '여성'
			        ]
			      };
			      var doughnutPieOptions = {
			        cutoutPercentage: 50,
			        animationEasing: "easeOutBounce",
			        animateRotate: true,
			        animateScale: false,
			        responsive: true,
			        maintainAspectRatio: true,
			        showScale: true,
			        legend: false,
			        legendCallback: function (chart) {
			          var text = [];
			          text.push('<div class="chartjs-legend"><ul class="justify-content-center">');
			          for (var i = 0; i < chart.data.datasets[0].data.length; i++) {
			            text.push('<li><span style="background-color:' + chart.data.datasets[0].backgroundColor[i] + '">');
			            text.push('</span>');
			            if (chart.data.labels[i]) {
			              text.push(chart.data.labels[i]);
			            }
			            text.push('</li>');
			          }
			          text.push('</div></ul>');
			          return text.join("");
			        },
			        
			        layout: {
			          padding: {
			            left: 0,
			            right: 0,
			            top: 0,
			            bottom: 0
			          }
			        },
			        tooltips: {
			          callbacks: {
			            title: function(tooltipItem, data) {
			              return data['labels'][tooltipItem[0]['index']];
			            },
			            label: function(tooltipItem, data) {
			              return data['datasets'][0]['data'][tooltipItem['index']];
			            }
			          },
			            
			          backgroundColor: '#fff',
			          titleFontSize: 14,
			          titleFontColor: '#0B0F32',
			          bodyFontColor: '#737F8B',
			          bodyFontSize: 11,
			          displayColors: false
			        }
			      };
			      var doughnutChart = new Chart(doughnutChartCanvas, {
			        type: 'doughnut',
			        data: doughnutPieData,
			        options: doughnutPieOptions
			      });
			      document.getElementById('genderRatio-chart-legend').innerHTML = doughnutChart.generateLegend();
		    }
		    if ($("#equipCategory").length) {
			      var postTopViewChart = document.getElementById("equipCategory").getContext('2d');
			      var postTopViewData = {
			          labels: [
			        	  <c:forEach var="boardTopView" items="${BoardStatic}">
			        	  	"${boardTopView.staticName}",
			        	  </c:forEach>
			        	  	],
			          datasets: [{
			              label: 'total',
			              data: [
			            	  <c:forEach var="boardTopView" items="${BoardStatic}">
			            	  	${boardTopView.staticValue},
			            	  </c:forEach>
			            	  ],
			              backgroundColor: "#52CDFF",
			              borderColor: [
			                  '#52CDFF',
			              ],
			              borderWidth: 0,
			              fill: true, // 3: no fill
			              
			          }]
			      };
			  
			      var postTopViewOptions = {
			        responsive: true,
			        maintainAspectRatio: false,
			          scales: {
			              yAxes: [{
			                  gridLines: {
			                      display: true,
			                      drawBorder: false,
			                      color:"#F0F0F0",
			                      zeroLineColor: '#F0F0F0',
			                  },
			                  ticks: {
			                    beginAtZero: true,
			                    autoSkip: true,
			                    maxTicksLimit: 5,
			                    fontSize: 10,
			                    color:"#6B778C"
			                  }
			              }],
			              xAxes: [{
			                stacked: true,
			                barPercentage: 0.35,
			                gridLines: {
			                    display: false,
			                    drawBorder: false,
			                },
			                ticks: {
			                  beginAtZero: false,
			                  autoSkip: true,
			                  maxTicksLimit: 12,
			                  fontSize: 10,
			                  color:"#6B778C"
			                }
			            }],
			          },
			          legend:false,
			          legendCallback: function (chart) {
			            var text = [];
			            text.push('<div class="chartjs-legend"><ul>');
			            for (var i = 0; i < chart.data.datasets.length; i++) {
			              console.log(chart.data.datasets[i]); // see what's inside the obj.
			              text.push('<li class="text-muted text-small">');
			              text.push('<span style="background-color:' + chart.data.datasets[i].borderColor + '">' + '</span>');
			              text.push(chart.data.datasets[i].label);
				              text.push('</li>');
			            }
			            text.push('</ul></div>');
			            return text.join("");
		          	  },
				          
			          elements: {
			              line: {
			                  tension: 0.4,
			              }
			          },
			          tooltips: {
			              backgroundColor: 'rgba(31, 59, 179, 1)',
			          }
			      }
			      var postTopView = new Chart(postTopViewChart, {
			          type: 'bar',
			          data: postTopViewData,
			          options: postTopViewOptions
			      });
			      document.getElementById('equipCategory-legend').innerHTML = postTopView.generateLegend();
			    }

		    
		    
		  });
		})(jQuery);
	 </script>
	  <script src="/resources/js/Chart.roundedBarCharts.js"></script>
	  <!-- End custom js for this page-->
	</body>
</html>