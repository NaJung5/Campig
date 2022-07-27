<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Camping Home</title>
</head>
<body>
<%@include file="headNavBar.jsp"%>
<c:if test="${memId == null && adId == null}"> 
	<script>
		String referer = request.getHeader("referer");
		function focusIt(){      
			document.inform.id.focus();
		}
		function checkIt(){
			inputForm=eval("document.inform");
				if(!inputForm.id.value){
					lert("아이디를 입력하세요..");
				 	inputForm.id.focus();
				 	return false;
		}
				if(!inputForm.passwd.value){
					alert("비밀번호를 입력하세요");
					inputForm.passwd.focus();
					return false;
				}
		}
		function log(){
			String referer = request.getHeader("Referer");
			window.location="/member/signUpForm?referer=referer";
		}
	</script>
<form name="inform" method="post" action="/member/loginForm"  onSubmit="return checkIt();">
  		<table>
	       	<tr>
	          	<td >
	            	<input type="submit" name="Submit" value="로그인">
	            	<input type="button"  value="회원가입" onclick="window.location='/member/signUpForm'">      
	          	</td>
	          			
	        </tr>
        </table>
	</form>
</c:if>
<c:if test="${memId != null}">
	<table>
       	<tr> 
         	<td >메인입니다.</td>
      	</tr>
		<tr>
           	<td >
             	${sessionScope.memId} 님이 방문하셨습니다
            </td>
        </tr>
		<tr>
            <td> 	
             	<form  method="post" action="/member/logoutForm">  
             		<input type="submit"  value="로그아웃">
             		<input type="button" value="회원정보변경" onclick="window.location='/member/myPage?id=${memId}'">
             		<input type="button" value="장비홈" onclick="window.location='/equip/main?id=${memId}'">
             		<input type="button" value="게시판 목록" onclick="window.location='/board/notice?category=7'">
             		<input type="button" value="캠핑장 찾기" onclick="window.location='/spot/info'">
             		<input type="button" value="체크리스트작성" onclick="window.location='/prod/check?id=${memId}'">
             	</form>
         	</td>
		</tr>
     </table>
</c:if>	
<c:if test="${adId != null}">
	<table>
       	<tr> 
         	<td >메인입니다.</td>
      	</tr>
		<tr>
           	<td >
             	관리자 ${sessionScope.adId} 님이 접속하셨습니다.
            </td>
        </tr>
		<tr>
            <td> 	
             	<form  method="post" action="/member/adLogout">  
             		<input type="submit"  value="로그아웃">
             		<input type="button" value="관리자 메뉴" onclick="window.location='/adMain/main'">
             	</form>
         	</td>
		</tr>
     </table>
</c:if>     
<%@include file="footer.jsp"%>     
</body>
</html>