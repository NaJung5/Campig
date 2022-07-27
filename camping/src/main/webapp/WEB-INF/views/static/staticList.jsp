<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h1>StaticList</h1>



<br/>장비 카테고리별 순위 <br/>
<c:forEach var="catStatic" items="${catStatic}" varStatus="statusNm">
	${catName[statusNm.index]} : ${catStatic.staticValue} <br/>
</c:forEach>

<br/>장비 필터별 순위 <br/>
<c:forEach var="EqFilStatic" items="${EqFilStatic}">
${EqFilStatic.staticName} : ${EqFilStatic.staticValue} <br/>
</c:forEach>


<br/>장비 즐겨찾기 순위 <br/>
<c:forEach var="EqFavStatic" items="${EqFavStatic}">
${EqFavStatic.staticName} : ${EqFavStatic.staticValue} <br/>
</c:forEach>

<br/>캠핑장 조회수 순위 <br/>
<c:forEach var="SpReadStatic" items="${SpReadStatic}">
${SpReadStatic.staticName} : ${SpReadStatic.staticValue} <br/>
</c:forEach>

<br/>캠핑장 환경 순위 <br/>
<c:forEach var="SpEnvStatic" items="${SpEnvStatic}">
${SpEnvStatic.staticName} : ${SpEnvStatic.staticValue} <br/>
</c:forEach>

<br/>캠핑장 지역 순위 <br/>
<c:forEach var="SpRegStatic" items="${SpRegStatic}">
${SpRegStatic.staticName} : ${SpRegStatic.staticValue} <br/>
</c:forEach>

<br/>캠핑장 시설 순위 <br/>
<c:forEach var="SpFacStatic" items="${SpFacStatic}">
${SpFacStatic.staticName} : ${SpFacStatic.staticValue} <br/>
</c:forEach>


<br/>캠핑장 계절 순위 <br/>
<c:forEach var="SpSeasonStatic" items="${SpSeasonStatic}">
${SpSeasonStatic.staticName} : ${SpSeasonStatic.staticValue} <br/>
</c:forEach>

<br/>캠핑장 즐겨찾기 순위 <br/>
<c:forEach var="SpFavStatic" items="${SpFavStatic}">
${SpFavStatic.staticName} : ${SpFavStatic.staticValue} <br/>
</c:forEach>

<br/>페이지별 접속 순위 <br/>
<c:forEach var="PageStatic" items="${PageStatic}">
${PageStatic.staticName} : ${PageStatic.staticValue} <br/>
</c:forEach>



<br/>지난 일주일 간 가입자수 <br/>

지난 일주일 간 가입자수 : ${signUp1Week} <br/>

<br/>성비<br/>

전체 가입자수 : ${all} <br/>
남성가입자수 : ${mencnt}<br/>
여성가입자수 :${womencnt}<br/>
남성% : ${men}% <br/>
여성% : ${women}% <br/>

<br/>연령<br/>

10 대 :  ${age10}명 <br/>
20 대 :  ${age20}명 <br/>
30 대 :  ${age30}명 <br/>
40 대 :  ${age40}명 <br/>
50 대 :  ${age50}명 <br/>

<br/>게시판별 조회 순위 <br/>
<c:forEach var="BoardStatic" items="${BoardStatic}">
${BoardStatic.staticName} : ${BoardStatic.staticValue} <br/>
</c:forEach>


<br/>시간대별 홈 접속현황 <br/>
<c:forEach var="PageTimeStatic" items="${PageTimeStatic}">
${PageTimeStatic.staticName} : ${PageTimeStatic.staticValue} <br/>
</c:forEach>

<br/>게시판 새글 작성 수  <br/>
오늘  :  ${newboard0} 
-1일 :  ${newboard1}
-2일 : 	${newboard2}
-3일 :	${newboard3}
-4일 :	${newboard4}
-5일 :	${newboard5}
-6일 :	${newboard6}
-7일 :	${newboard7}

<br/>홈체이지 일별 방문자수 <br/>
오늘  :  ${pageday0 } 
-1일 :  ${pageday1  }
-2일 : 	${pageday2 }
-3일 :	${pageday3 }
-4일 :	${pageday4 }
-5일 :	${pageday5 }
-6일 :	${pageday6 }
-7일 :	${pageday7 }















