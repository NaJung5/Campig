<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script language="JavaScript" src="/resources/js/script.js" charset="UTF-8"></script>


<%@include file="../headNavBar.jsp"%>
<%@include file="equipCategory.jsp" %>



<div  class="col-6 col-12-small">
<c:if test="${category == 1 }">
	<table border="2" width="1600" cellpadding="0" cellspacing="0">
		<form action="/equip/list" name="filfrm">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="5">검색필터</td>
			</tr>



			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=아이두젠')}">
					<td  width="180">
						<input type="checkbox" id = "아이두젠" value = "아이두젠" name="bran" checked="checked" >
						<label for = "아이두젠"> : 아이두젠 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=아이두젠')}">
					<td  width="180">
							<input type="checkbox" id = "아이두젠" value = "아이두젠"  name="bran"  >
							<label for = "아이두젠"> : 아이두젠 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
							<input type="checkbox" id = "코베아" value = "코베아"  name="bran"  >
							<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td  width="180">
						<input type="checkbox" id = "네이처하이크" value = "네이처하이크" name="bran" checked="checked" >
						<label for = "네이처하이크"> : 네이처하이크</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td  width="180">
							<input type="checkbox" id = "네이처하이크" value = "네이처하이크"  name="bran"  >
							<label for = "네이처하이크"> : 네이처하이크 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=비에프엘')}">
					<td  width="180">
						<input type="checkbox" id = "비에프엘" value = "비에프엘" name="bran" checked="checked" >
						<label for = "비에프엘"> : 비에프엘</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=비에프엘')}">
					<td  width="180">
							<input type="checkbox" id = "비에프엘" value = "비에프엘"  name="bran"  >
							<label for = "비에프엘"> : 비에프엘 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=캐빈텐트')}">
					<td  width="180">
						<input type="checkbox" id = "캐빈텐트" value = "캐빈텐트" name="fil1" checked="checked" >
						<label for = "캐빈텐트"> : 캐빈텐트</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=캐빈텐트')}">
					<td  width="180">
							<input type="checkbox" id = "캐빈텐트" value = "캐빈텐트"  name="fil1"  >
							<label for = "캐빈텐트"> : 캐빈텐트 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=돔텐트')}">
					<td  width="180">
						<input type="checkbox" id = "돔텐트" value = "돔텐트" name="fil1" checked="checked" >
						<label for = "돔텐트"> : 돔텐트</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=돔텐트')}">
					<td  width="180">
							<input type="checkbox" id = "돔텐트" value = "돔텐트"  name="fil1"  >
							<label for = "돔텐트"> : 돔텐트 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=그늘막텐트')}">
					<td  width="180">
						<input type="checkbox" id = "그늘막텐트" value = "그늘막텐트" name="fil1" checked="checked" >
						<label for = "그늘막텐트"> : 그늘막텐트</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=그늘막텐트')}">
					<td  width="180">
						<input type="checkbox" id = "그늘막텐트" value = "그늘막텐트"  name="fil1"  >
						<label for = "그늘막텐트"> : 그늘막텐트 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=터널형텐트')}">
					<td  width="180">
						<input type="checkbox" id = "터널형텐트" value = "터널형텐트" name="fil1" checked="checked" >
						<label for = "터널형텐트"> : 터널형텐트</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=터널형텐트')}">
					<td  width="180">
						<input type="checkbox" id = "터널형텐트" value = "터널형텐트"  name="fil1"  >
						<label for = "터널형텐트"> : 터널형텐트 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">사용인원</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=1')}">
					<td  width="180">
						<input type="checkbox" id = "1" value = "1" name="fil7" checked="checked" >
						<label for = "1"> : 1~2인용</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=1')}">
					<td  width="180">
							<input type="checkbox" id = "1" value = "1"  name="fil7"  >
							<label for = "1"> : 1~2인용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=3')}">
					<td  width="180">
						<input type="checkbox" id = "3" value = "3" name="fil7" checked="checked" >
						<label for = "3"> : 3~4인용</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=3')}">
					<td  width="180">
							<input type="checkbox" id = "3" value = "3"  name="fil7"  >
							<label for = "3"> : 3~4인용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=6')}">
					<td  width="180">
						<input type="checkbox" id = "6" value = "6" name="fil7" checked="checked" >
						<label for = "6"> : 6인이상</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=6')}">
					<td  width="180">
							<input type="checkbox" id = "6" value = "6"  name="fil7"  >
							<label for = "6"> : 6인이상 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">내수압</td>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=1000')}">
					<td  width="180">
						<input type="checkbox" id = "1000" value = "1000" name="fil8" checked="checked" >
						<label for = "1000"> : 1000mm 이하</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=1000')}">
					<td  width="180">
						<input type="checkbox" id = "1000" value = "1000"  name="fil8"  >
						<label for = "1000"> : 1000mm 이하 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=1001')}">
					<td  width="180">
						<input type="checkbox" id = "1001" value = "1001" name="fil8" checked="checked" >
						<label for = "1001"> : 1000mm~2000mm </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=1001')}">
					<td  width="180">
						<input type="checkbox" id = "1001" value = "1001"  name="fil8"  >
						<label for = "1001"> : 1000mm~2000mm </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=2001')}">
					<td  width="180">
						<input type="checkbox" id = "2001" value = "2001" name="fil8" checked="checked" >
						<label for = "2001"> : 2000mm~3000mm </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=2001')}">
					<td  width="180">
						<input type="checkbox" id = "2001" value = "2001"  name="fil8"  >
						<label for = "2001"> : 2000mm~3000mm </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=3001')}">
					<td  width="180">
						<input type="checkbox" id = "3001" value = "3001" name="fil8" checked="checked" >
						<label for = "3001"> : 3000mm 이상</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=3001')}">
					<td  width="180">
						<input type="checkbox" id = "3001" value = "3001"  name="fil8"  >
						<label for = "3001"> :3000mm 이상</label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
			</tr>

		</form>

	</table>







	</br>
	</br>

</c:if>


<c:if test="${category == 2 }">

	<table border="2" width="1600" cellpadding="0" cellspacing="0">
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=비에프엘')}">
					<td  width="180">
						<input type="checkbox" id = "비에프엘" value = "비에프엘" name="bran" checked="checked" >
						<label for = "비에프엘"> : 비에프엘 </label>
					</td >
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=비에프엘')}">
					<td  width="180">
						<input type="checkbox" id = "비에프엘" value = "비에프엘"  name="bran"  >
						<label for = "비에프엘"> : 비에프엘 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=아이두젠')}">
					<td  width="180">
						<input type="checkbox" id = "아이두젠" value = "아이두젠" name="bran" checked="checked" >
						<label for = "아이두젠"> : 아이두젠</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=아이두젠')}">
					<td  width="180">
						<input type="checkbox" id = "아이두젠" value = "아이두젠" name="bran"  >
						<label for = "아이두젠"> : 아이두젠</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran"  >
						<label for = "코베아"> : 코베아</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=콜맨')}">
					<td  width="180">
						<input type="checkbox" id = "콜맨" value = "콜맨" name="bran" checked="checked" >
						<label for = "콜맨"> : 콜맨</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=콜맨')}">
					<td  width="180">
						<input type="checkbox" id = "콜맨" value = "콜맨" name="bran"  >
						<label for = "콜맨"> : 콜맨</label>
					</td>
				</c:if>
			</tr>

			<tr height="50">

				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=스킨')}">
					<td  width="180">
						<input type="checkbox" id = "스킨" value = "스킨" name="fil1" checked="checked" >
						<label for = "스킨"> : 스킨</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=스킨')}">
					<td  width="180">
						<input type="checkbox" id = "스킨" value = "스킨" name="fil1"  >
						<label for = "스킨"> : 스킨</label>
					</td>
					
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=스킨+폴')}">
					<td  width="180">
						<input type="checkbox" id = "스킨+폴" value = "스킨+폴" name="fil1" checked="checked" >
						<label for = "스킨+폴"> : 스킨+폴</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=스킨+폴')}">
					<td  width="180">
						<input type="checkbox" id = "스킨+폴" value = "스킨+폴" name="fil1" >
						<label for = "스킨+폴"> : 스킨+폴</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=파라솔')}">
					<td  width="180">
						<input type="checkbox" id = "파라솔" value = "파라솔" name="fil1" checked="checked" >
						<label for = "파라솔"> : 파라솔</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=파라솔')}">
					<td  width="180">
						<input type="checkbox" id = "파라솔" value = "파라솔" name="fil1"  >
						<label for = "파라솔"> : 파라솔</label>
					</td>
					
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=스크린')}">
					<td  width="180">
						<input type="checkbox" id = "스크린" value = "스크린" name="fil1" checked="checked" >
						<label for = "스크린"> : 스크린</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=스크린')}">
					<td  width="180">
						<input type="checkbox" id = "스크린" value = "스크린" name="fil1"  >
						<label for = "스크린"> : 스크린</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=사이드월')}">
					<td  width="180">
						<input type="checkbox" id = "사이드월" value = "사이드월" name="fil1" checked="checked" >
						<label for = "사이드월"> : 사이드월</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=사이드월')}">
					<td  width="280">
						<input type="checkbox" id = "사이드월" value = "사이드월" name="fil1"  >
						<label for = "사이드월"> : 사이드월</label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="180">내수압</td>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=1000')}">
					<td  width="180">
						<input type="checkbox" id = "1000" value = "1000" name="fil8" checked="checked" >
						<label for = "1000"> : 1000mm 이하</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=1000')}">
					<td  width="180">
						<input type="checkbox" id = "1000" value = "1000"  name="fil8"  >
						<label for = "1000"> : 1000mm 이하 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=1001')}">
					<td  width="180">
						<input type="checkbox" id = "1001" value = "1001" name="fil8" checked="checked" >
						<label for = "1001"> : 1000mm~2000mm </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=1001')}">
					<td  width="180">
						<input type="checkbox" id = "1001" value = "1001"  name="fil8"  >
						<label for = "1001"> : 1000mm~2000mm </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=2001')}">
					<td  width="180">
						<input type="checkbox" id = "2001" value = "2001" name="fil8" checked="checked" >
						<label for = "2001"> : 2000mm~3000mm </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=2001')}">
					<td>
						<input type="checkbox" id = "2001" value = "2001"  name="fil8"  >
						<label for = "2001"> : 2000mm~3000mm </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil8=3001')}">
					<td  width="180">
						<input type="checkbox" id = "3001" value = "3001" name="fil8" checked="checked" >
						<label for = "3001"> : 3000mm 이상</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil8=3001')}">
					<td  width="180">
						<input type="checkbox" id = "3001" value = "3001"  name="fil8"  >
						<label for = "3001"> :3000mm 이상</label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">재질</td>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=폴리에스테르')}">
					<td  width="180">
						<input type="checkbox" id = "폴리에스테르" value = "폴리에스테르" name="fil2" checked="checked" >
						<label for = "폴리에스테르"> : 폴리에스테르 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=폴리에스테르')}">
					<td  width="180">
						<input type="checkbox" id = "폴리에스테르" value = "폴리에스테르"  name="fil2"  >
						<label for = "폴리에스테르"> : 폴리에스테르 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=나일론')}">
					<td  width="180">
						<input type="checkbox" id = "나일론" value = "나일론" name="fil2" checked="checked" >
						<label for = "나일론"> : 나일론 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=나일론')}">
					<td  width="180">
						<input type="checkbox" id = "나일론" value = "나일론"  name="fil2"  >
						<label for = "나일론"> : 나일론 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=블랙코팅')}">
					<td  width="180">
						<input type="checkbox" id = "블랙코팅" value = "블랙코팅" name="fil2" checked="checked" >
						<label for = "블랙코팅"> : 블랙코팅 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=블랙코팅')}">
					<td  width="180">
						<input type="checkbox" id = "블랙코팅" value = "블랙코팅"  name="fil2"  >
						<label for = "블랙코팅"> : 블랙코팅 </label>
					</td>>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=면')}">
					<td  width="180">
						<input type="checkbox" id = "면" value = "면" name="fil2" checked="checked" >
						<label for = "면"> : 면 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=면')}">
					<td  width="180">
						<input type="checkbox" id = "면" value = "면"  name="fil2"  >
						<label for = "면"> : 면 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
			</tr>

		</form>

	</table>
	



	</br>
	</br>

</c:if>


<c:if test="${category == 3 }">

	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=인텍스')}">
					<td  width="180">
						<input type="checkbox" id = "인텍스" value = "인텍스" name="bran" checked="checked" >
						<label for = "인텍스"> : 인텍스 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=인텍스')}">
					<td width="180">
						<input type="checkbox" id = "인텍스" value = "인텍스"  name="bran"  >
						<label for = "인텍스"> : 인텍스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td width="180">
						<input type="checkbox" id = "네이처하이크" value = "네이처하이크" name="bran" checked="checked" >
						<label for = "네이처하이크"> : 네이처하이크 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td>
						<input type="checkbox" id = "네이처하이크" value = "네이처하이크"  name="bran"  >
						<label for = "네이처하이크"> : 네이처하이크 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=씨투써미트')}">
					<td  width="180">
						<input type="checkbox" id = "씨투써미트" value = "씨투써미트" name="bran" checked="checked" >
						<label for = "씨투써미트"> : 씨투써미트 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=씨투써미트')}">
					<td  width="180">
						<input type="checkbox" id = "씨투써미트" value = "씨투써미트"  name="bran"  >
						<label for = "씨투써미트"> : 씨투써미트 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아"  name="bran"  >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=파크론')}">
					<td  width="180">
						<input type="checkbox" id = "파크론" value = "파크론" name="bran" checked="checked" >
						<label for = "파크론"> : 파크론 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=파크론')}">
					<td  width="180">
						<input type="checkbox" id = "파크론" value = "파크론"  name="bran"  >
						<label for = "파크론"> : 파크론 </label>
					</td>
				</c:if>



			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=에어매트')}">
					<td  width="180">
						<input type="checkbox" id = "에어매트" value = "에어매트" name="fil1" checked="checked" >
						<label for = "에어매트"> : 에어매트 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=에어매트')}">
					<td  width="180">
						<input type="checkbox" id = "에어매트" value = "에어매트"  name="fil1"  >
						<label for = "에어매트"> : 에어매트 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=엠보싱매트')}">
					<td  width="180">
						<input type="checkbox" id = "엠보싱매트" value = "엠보싱매트" name="fil1" checked="checked" >
						<label for = "엠보싱매트"> : 엠보싱매트 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=엠보싱매트')}">
					<td  width="180">
						<input type="checkbox" id = "엠보싱매트" value = "엠보싱매트"  name="fil1"  >
						<label for = "엠보싱매트"> : 엠보싱매트 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=피크닉매트')}">
					<td  width="180">
						<input type="checkbox" id = "피크닉매트" value = "피크닉매트" name="fil1" checked="checked" >
						<label for = "피크닉매트"> : 피크닉매트 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=피크닉매트')}">
					<td  width="180">
						<input type="checkbox" id = "피크닉매트" value = "피크닉매트"  name="fil1"  >
						<label for = "피크닉매트"> : 피크닉매트 </label>
					</td>d>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=에어소파')}">
					<td  width="180">
						<input type="checkbox" id = "에어소파" value = "에어소파" name="fil1" checked="checked" >
						<label for = "에어소파"> : 에어소파 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=에어소파')}">
					<td  width="180">
						<input type="checkbox" id = "에어소파" value = "에어소파"  name="fil1"  >
						<label for = "에어소파"> : 에어소파 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=에어펌프')}">
					<td  width="180">
						<input type="checkbox" id = "에어펌프" value = "에어펌프" name="fil1" checked="checked" >
						<label for = "에어펌프"> : 에어펌프 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=에어펌프')}">
					<td  width="180">
						<input type="checkbox" id = "에어펌프" value = "에어펌프"  name="fil1"  >
						<label for = "에어펌프"> : 에어펌프 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=돗자리')}">
					<td  width="180">
						<input type="checkbox" id = "돗자리" value = "돗자리" name="fil1" checked="checked" >
						<label for = "돗자리"> : 돗자리 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=돗자리')}">
					<td  width="180">
						<input type="checkbox" id = "돗자리" value = "돗자리"  name="fil1"  >
						<label for = "돗자리"> : 돗자리 </label>
					</td>>
				</c:if>
			</tr>


			<tr height="50">
				<td  width="180">사용인원</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=1')}">
					<td  width="180">
						<input type="checkbox" id = "1" value = "1" name="fil7" checked="checked" >
						<label for = "1"> : 1~2인용</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=1')}">
					<td  width="180">
							<input type="checkbox" id = "1" value = "1"  name="fil7"  >
							<label for = "1"> : 1~2인용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=3')}">
					<td  width="180">
						<input type="checkbox" id = "3" value = "3" name="fil7" checked="checked" >
						<label for = "3"> : 3~4인용</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=3')}">
					<td  width="180">
							<input type="checkbox" id = "3" value = "3"  name="fil7"  >
							<label for = "3"> : 3~4인용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=6')}">
					<td  width="180">
						<input type="checkbox" id = "6" value = "6" name="fil7" checked="checked" >
						<label for = "6"> : 6인이상</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=6')}">
					<td  width="180">
							<input type="checkbox" id = "6" value = "6"  name="fil7"  >
							<label for = "6"> : 6인이상 </label>
					</td>
				</c:if>


			</tr>

			<tr height="50">
				<td  width="180">사용장소</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=아웃도어용')}">
					<td  width="180">
						<input type="checkbox" id = "아웃도어용" value = "아웃도어용" name="fil2" checked="checked" >
						<label for = "아웃도어용"> : 아웃도어용 </label>
					</td>
					
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=아웃도어용')}">
					<td  width="180">
						<input type="checkbox" id = "아웃도어용" value = "아웃도어용"  name="fil2"  >
						<label for = "아웃도어용"> : 아웃도어용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=텐트내부용')}">
					<td  width="180">
						<input type="checkbox" id = "텐트내부용" value = "텐트내부용" name="fil2" checked="checked" >
						<label for = "텐트내부용"> : 텐트내부용 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=텐트내부용')}">
					<td  width="180">
						<input type="checkbox" id = "텐트내부용" value = "텐트내부용"  name="fil2"  >
						<label for = "텐트내부용"> : 텐트내부용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=내부+아웃도어용')}">
					<td  width="180">
						<input type="checkbox" id = "내부+아웃도어용" value = "내부+아웃도어용" name="fil2" checked="checked" >
						<label for = "내부+아웃도어용"> : 내부+아웃도어용 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=내부+아웃도어용')}">
					<td  width="180">
						<input type="checkbox" id = "내부+아웃도어용" value = "내부+아웃도어용"  name="fil2"  >
						<label for = "내부+아웃도어용"> : 내부+아웃도어용 </label>
					</td>>
				</c:if>



			</tr>

			<tr height="50">
				<td  width="180">보관형태</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=접이식')}">
					<td  width="180">
						<input type="checkbox" id = "접이식" value = "접이식" name="fil3" checked="checked" >
						<label for = "접이식"> : 접이식 </label>
					</td>
					
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=접이식')}">
					<td  width="180">
						<input type="checkbox" id = "접이식" value = "접이식"  name="fil3"  >
						<label for = "접이식"> : 접이식 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=말이식')}">
					<td  width="180">
						<input type="checkbox" id = "말이식" value = "말이식" name="fil3" checked="checked" >
						<label for = "말이식"> : 말이식 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=말이식')}">
					<td  width="180">
						<input type="checkbox" id = "말이식" value = "말이식"  name="fil3"  >
						<label for = "말이식"> : 말이식 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
		 		<td  width="1600" colspan="6">
				상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td> 
			</tr>

		</form>

	</table>

	</br>
	</br>
</c:if>

<c:if test="${category == 4 }">

	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=반고')}">
					<td  width="180">
						<input type="checkbox" id = "반고" value = "반고" name="bran" checked="checked" >
						<label for = "반고"> : 반고 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=반고')}">
					<td  width="180">
						<input type="checkbox" id = "반고" value = "반고"  name="bran"  >
						<label for = "반고"> : 반고 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=씨투써미트')}">
					<td  width="180">
						<input type="checkbox" id = "씨투써미트" value = "씨투써미트" name="bran" checked="checked" >
						<label for = "씨투써미트"> : 씨투써미트 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=씨투써미트')}">
					<td  width="180">
						<input type="checkbox" id = "씨투써미트" value = "씨투써미트"  name="bran"  >
						<label for = "씨투써미트"> : 씨투써미트 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td  width="180">
						<input type="checkbox" id = "네이처하이크" value = "네이처하이크" name="bran" checked="checked" >
						<label for = "네이처하이크"> : 네이처하이크 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td  width="180">
						<input type="checkbox" id = "네이처하이크" value = "네이처하이크"  name="bran"  >
						<label for = "네이처하이크"> : 네이처하이크 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아"  name="bran"  >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=메사')}">
					<td  width="180">
						<input type="checkbox" id = "메사" value = "메사" name="bran" checked="checked" >
						<label for = "메사"> : 메사 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=메사')}">
					<td  width="180">
						<input type="checkbox" id = "메사" value = "메사"  name="bran"  >
						<label for = "메사"> : 메사 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=침낭')}">
					<td  width="180">
						<input type="checkbox" id = "침낭" value = "침낭" name="fil1" checked="checked" >
						<label for = "침낭"> : 침낭 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=침낭')}">
					<td  width="180">
						<input type="checkbox" id = "침낭" value = "침낭"  name="fil1"  >
						<label for = "침낭"> : 침낭 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=배개')}">
					<td  width="180">
						<input type="checkbox" id = "배개" value = "배개" name="fil1" checked="checked" >
						<label for = "배개"> : 배개 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=배개')}">
					<td  width="180">
						<input type="checkbox" id = "배개" value = "배개"  name="fil1"  >
						<label for = "배개"> : 배개 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=라이너')}">
					<td  width="180">
						<input type="checkbox" id = "라이너" value = "라이너" name="fil1" checked="checked" >
						<label for = "라이너"> : 라이너 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=라이너')}">
					<td  width="180">
						<input type="checkbox" id = "라이너" value = "라이너"  name="fil1"  >
						<label for = "라이너"> : 라이너 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=담요')}">
					<td  width="180">
						<input type="checkbox" id = "담요" value = "담요" name="fil1" checked="checked" >
						<label for = "담요"> : 담요 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=담요')}">
					<td  width="180">
						<input type="checkbox" id = "담요" value = "담요"  name="fil1"  >
						<label for = "담요"> : 담요 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">형태</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=사각')}">
					<td  width="180">
						<input type="checkbox" id = "사각" value = "사각" name="fil2" checked="checked" >
						<label for = "사각"> : 사각 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=사각')}">
					<td  width="180">
						<input type="checkbox" id = "사각" value = "사각"  name="fil2"  >
						<label for = "사각"> : 사각 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=머미(미이라형)')}">
					<td  width="180">
						<input type="checkbox" id = "머미(미이라형)" value = "머미(미이라형)" name="fil2" checked="checked" >
						<label for = "머미(미이라형)"> : 머미(미이라형) </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=머미(미이라형)')}">
					<td  width="180">
						<input type="checkbox" id = "머미(미이라형)" value = "머미(미이라형)"  name="fil2"  >
						<label for = "머미(미이라형)"> : 머미(미이라형) </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=사각(후드형)')}">
					<td  width="180">
						<input type="checkbox" id = "사각(후드형) " value = "사각(후드형) " name="fil2" checked="checked" >
						<label for = "사각(후드형) "> : 사각(후드형)  </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=사각(후드형)')}">
					<td  width="180">
						<input type="checkbox" id = "사각(후드형) " value = "사각(후드형) "  name="fil2"  >
						<label for = "사각(후드형) "> : 사각(후드형)  </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=입는형')}">
					<td  width="180">
						<input type="checkbox" id = "입는형" value = "입는형" name="fil2" checked="checked" >
						<label for = "입는형"> : 입는형 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=입는형')}">
					<td  width="180">
						<input type="checkbox" id = "입는형" value = "입는형"  name="fil2"  >
						<label for = "입는형"> : 입는형 </label>
					</td>
				</c:if>
			</tr>


			<tr height="50">
				<td  width="180">사용계절</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=여름용')}">
					<td  width="180">
						<input type="checkbox" id = "여름용" value = "여름용" name="fil3" checked="checked" >
						<label for = "여름용"> : 여름용 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=여름용')}">
					<td  width="180">
						<input type="checkbox" id = "여름용" value = "여름용"  name="fil3"  >
						<label for = "여름용"> : 여름용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=사계절용')}">
					<td  width="180">
						<input type="checkbox" id = "사계절용" value = "사계절용" name="fil3" checked="checked" >
						<label for = "사계절용"> : 사계절용 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=사계절용')}">
					<td  width="180">
						<input type="checkbox" id = "사계절용" value = "사계절용"  name="fil3"  >
						<label for = "사계절용"> : 사계절용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=봄,가을용')}">
					<td  width="180">
						<input type="checkbox" id = "봄,가을용" value = "봄,가을용" name="fil3" checked="checked" >
						<label for = "봄,가을용"> : 봄,가을용 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=봄,가을용')}">
					<td  width="180">
						<input type="checkbox" id = "봄,가을용" value = "봄,가을용"  name="fil3"  >
						<label for = "봄,가을용"> : 봄,가을용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=겨울용')}">
					<td  width="180">
						<input type="checkbox" id = "겨울용" value = "겨울용" name="fil3" checked="checked" >
						<label for = "겨울용"> : 겨울용 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=겨울용')}">
					<td  width="180">
						<input type="checkbox" id = "겨울용" value = "겨울용"  name="fil3"  >
						<label for = "겨울용"> : 겨울용 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="180">충전재</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil4=폴리에스테르')}">
					<td  width="180">
						<input type="checkbox" id = "폴리에스테르" value = "폴리에스테르" name="fil4" checked="checked" >
						<label for = "폴리에스테르"> : 폴리에스테르 </label>
					</td>>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil4=폴리에스테르')}">
					<td  width="180">
						<input type="checkbox" id = "폴리에스테르" value = "폴리에스테르"  name="fil4"  >
						<label for = "폴리에스테르"> : 폴리에스테르 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil4=홀로파이버')}">
					<td  width="180">
						<input type="checkbox" id = "홀로파이버" value = "홀로파이버" name="fil4" checked="checked" >
						<label for = "홀로파이버"> : 홀로파이버 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil4=홀로파이버')}">
					<td  width="180">
						<input type="checkbox" id = "홀로파이버" value = "홀로파이버"  name="fil4"  >
						<label for = "홀로파이버"> : 홀로파이버 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil4=거위털')}">
					<td  width="180">
						<input type="checkbox" id = "거위털" value = "거위털" name="fil4" checked="checked" >
						<label for = "거위털"> : 거위털 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil4=거위털')}">
					<td  width="180">
						<input type="checkbox" id = "거위털" value = "거위털"  name="fil4"  >
						<label for = "거위털"> : 거위털 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil4=오리털')}">
					<td  width="180">
						<input type="checkbox" id = "오리털" value = "오리털" name="fil4" checked="checked" >
						<label for = "오리털"> : 오리털 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil4=오리털')}">
					<td  width="180">
						<input type="checkbox" id = "오리털" value = "오리털"  name="fil4"  >
						<label for = "오리털"> : 오리털 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil4=마이크로화이바')}">
					<td  width="180">
						<input type="checkbox" id = "마이크로화이바" value = "마이크로화이바" name="fil4" checked="checked" >
						<label for = "마이크로화이바"> : 마이크로화이바 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil4=마이크로화이바')}">
					<td  width="180">
						<input type="checkbox" id = "마이크로화이바" value = "마이크로화이바"  name="fil4"  >
						<label for = "마이크로화이바"> : 마이크로화이바 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="180">내한온도</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil11=-50')}">
					<td  width="180">
						<input type="checkbox" id = "-69도 ~ -50도" value = "-50" name="fil11" checked="checked" >
						<label for = "-69도 ~ -50도"> : -69도 ~ -50도 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil11=-50')}">
					<td  width="180">
						<input type="checkbox" id = "-69도 ~ -50도" value = "-50"  name="fil11"  >
						<label for = "-69도 ~ -50도"> : -69도 ~ -50도 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil11=-30')}">
					<td  width="180">
						<input type="checkbox" id = "-49도 ~ -30도" value = "-30" name="fil11" checked="checked" >
						<label for = "-49도 ~ -30도"> : -49도 ~ -30도</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil11=-30')}">
					<td  width="180">
						<input type="checkbox" id = "-49도 ~ -30도" value = "-30"  name="fil11"  >
						<label for = "-49도 ~ -30도"> : -49도 ~ -30도</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil11=-10')}">
					<td  width="180">
						<input type="checkbox" id = "-29도 ~ -10도" value = "-10" name="fil11" checked="checked" >
						<label for = "-29도 ~ -10도"> : -29도 ~ -10도</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil11=-10')}">
					<td  width="180">
						<input type="checkbox" id = "-29도 ~ -10도" value = "-10"  name="fil11"  >
						<label for = "-29도 ~ -10도"> : -29도 ~ -10도</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil11=0')}">
					<td  width="180">
						<input type="checkbox" id = "-10도 이상 " value = "0" name="fil11" checked="checked" >
						<label for = "-10도 이상 "> : -10도 이상 </label>
					</td>
					
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil11=0')}">
					<td  width="180">
						<input type="checkbox" id = "-10도 이상 " value = "0"  name="fil11"  >
						<label for = "-10도 이상 "> : -10도 이상 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
			</tr>

		</form>

	</table>

	</br>
	</br>
</c:if>



<c:if test="${category == 5 }">

	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=카즈미')}">
					<td  width="180">
						<input type="checkbox" id = "카즈미" value = "카즈미" name="bran" checked="checked" >
						<label for = "카즈미"> : 즈미</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=카즈미')}">
					<td  width="180">
						<input type="checkbox" id = "카즈미" value = "카즈미"  name="bran"  >
						<label for = "카즈미"> : 카즈미</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=콜맨')}">
					<td  width="180">
						<input type="checkbox" id = "콜맨" value = "콜맨" name="bran" checked="checked" >
						<label for = "콜맨"> : 콜맨</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=콜맨')}">
					<td  width="180">
						<input type="checkbox" id = "콜맨" value = "콜맨"  name="bran"  >
						<label for = "콜맨"> : 콜맨</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아"  name="bran"  >
						<label for = "코베아"> : 코베아</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td  width="180">
						<input type="checkbox" id = "네이처하이크" value = "네이처하이크" name="bran" checked="checked" >
						<label for = "네이처하이크"> : 네이처하이크</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=네이처하이크')}">
					<td  width="180">
						<input type="checkbox" id = "네이처하이크" value = "네이처하이크"  name="bran"  >
						<label for = "네이처하이크"> : 네이처하이크</label>
					</td>
				</c:if>



			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=의자')}">
					<td  width="180">
						<input type="checkbox" id = "의자" value = "의자" name="fil1" checked="checked" >
						<label for = "의자"> : 의자</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=의자')}">
					<td  width="180">
						<input type="checkbox" id = "의자" value = "의자"  name="fil1"  >
						<label for = "의자"> : 의자</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=침대')}">
					<td  width="180">
						<input type="checkbox" id = "침대" value = "침대" name="fil1" checked="checked" >
						<label for = "침대"> : 침대</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=침대')}">
					<td  width="180">
						<input type="checkbox" id = "침대" value = "침대"  name="fil1"  >
						<label for = "침대"> : 침대</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=테이블')}">
					<td  width="180">
						<input type="checkbox" id = "테이블" value = "테이블" name="fil1" checked="checked" >
						<label for = "테이블"> : 테이블</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=테이블')}">
					<td  width="180">
						<input type="checkbox" id = "테이블" value = "테이블"  name="fil1"  >
						<label for = "테이블"> : 테이블</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=가구')}">
					<td  width="180">
						<input type="checkbox" id = "가구" value = "가구" name="fil1" checked="checked" >
						<label for = "가구"> : 가구</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=가구')}">
					<td  width="180">
						<input type="checkbox" id = "가구" value = "가구"  name="fil1"  >
						<label for = "가구"> : 가구</label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">재질</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=알루미늄')}">
					<td  width="180">
						<input type="checkbox" id = "알루미늄" value = "알루미늄" name="fil2" checked="checked" >
						<label for = "알루미늄"> : 알루미늄</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=알루미늄')}">
					<td  width="180">
						<input type="checkbox" id = "알루미늄" value = "알루미늄"  name="fil2"  >
						<label for = "알루미늄"> : 알루미늄</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=스틸')}">
					<td  width="180">
						<input type="checkbox" id = "스틸" value = "스틸" name="fil2" checked="checked" >
						<label for = "스틸"> : 스틸</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=스틸')}">
					<td  width="180">
						<input type="checkbox" id = "스틸" value = "스틸"  name="fil2"  >
						<label for = "스틸"> : 스틸</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=두랄루민')}">
					<td  width="180">
						<input type="checkbox" id = "두랄루민" value = "두랄루민" name="fil2" checked="checked" >
						<label for = "두랄루민"> : 두랄루민</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=두랄루민')}">
					<td  width="180">
						<input type="checkbox" id = "두랄루민" value = "두랄루민"  name="fil2"  >
						<label for = "두랄루민"> : 두랄루민</label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=나무')}">
					<td  width="180">
						<input type="checkbox" id = "나무" value = "나무" name="fil2" checked="checked" >
						<label for = "나무"> : 나무</label>
					</td>
					
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=나무')}">
					<td  width="180">
						<input type="checkbox" id = "나무" value = "나무"  name="fil2"  >
						<label for = "나무"> : 나무</label>
					</td>
				</c:if>

			</tr>


			<tr height="50">
				<td  width="180">내하중</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil12=100')}">
					<td  width="180">
						<input type="checkbox" id = "100KG 이하" value = "100" name="fil12" checked="checked" >
						<label for = "100KG 이하"> : 100KG 이하</label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil12=100')}">
					<td  width="180">
						<input type="checkbox" id = "100KG 이하" value = "100"  name="fil12"  >
						<label for = "100KG 이하"> : 100KG 이하</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil12=120')}">
					<td  width="180">
						<input type="checkbox" id = "100KG~120KG" value = "120" name="fil12" checked="checked" >
						<label for = "120KG"> : 100KG~120KG</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil12=120')}">
					<td  width="180">
						<input type="checkbox" id = "100KG~120KG" value = "120"  name="fil12"  >
						<label for = "120KG"> : 100KG~120KG</label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil12=121')}">
					<<td  width="180">
						<input type="checkbox" id = "120KG 이상" value = "121" name="fil12" checked="checked" >
						<label for = "121"> : 120KG 이상</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil12=121')}">
					<td  width="180">
						<input type="checkbox" id = "120KG 이상" value = "121"  name="fil12"  >
						<label for = "121"> : 120KG 이상</label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
			</tr>

		</form>

	</table>
	</br>
	</br>
</c:if>




<c:if test="${category == 6 }">

	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=콜맨')}">
					<td  width="180">
						<input type="checkbox" id = "콜맨" value = "콜맨" name="bran" checked="checked" >
						<label for = "콜맨"> : 콜맨 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=콜맨')}">
					<td  width="180">
						<input type="checkbox" id = "콜맨" value = "콜맨"  name="bran"  >
						<label for = "콜맨"> : 콜맨 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=스탠리')}">
					<<td  width="180">
						<input type="checkbox" id = "스탠리" value = "스탠리" name="bran" checked="checked" >
						<label for = "스탠리"> : 스탠리 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=스탠리')}">
					<td  width="180">
						<input type="checkbox" id = "스탠리" value = "스탠리"  name="bran"  >
						<label for = "스탠리"> : 스탠리 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코스모스')}">
					<td  width="180">
						<input type="checkbox" id = "코스모스" value = "코스모스" name="bran" checked="checked" >
						<label for = "코스모스"> : 코스모스 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코스모스')}">
					<td  width="180">
						<input type="checkbox" id = "코스모스" value = "코스모스"  name="bran"  >
						<label for = "코스모스"> : 코스모스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=다이와')}">
					<td  width="180">
						<input type="checkbox" id = "다이와" value = "다이와" name="bran" checked="checked" >
						<label for = "다이와"> : 다이와 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=다이와')}">
					<td  width="180">
						<input type="checkbox" id = "다이와" value = "다이와"  name="bran"  >
						<label for = "다이와"> : 다이와 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=물통')}">
					<td  width="180">
						<input type="checkbox" id = "물통" value = "물통" name="fil1" checked="checked" >
						<label for = "물통"> : 물통 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=물통')}">
					<td  width="180">
						<input type="checkbox" id = "물통" value = "물통"  name="fil1"  >
						<label for = "물통"> : 물통 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=아이스박스')}">
					<td  width="180">
						<input type="checkbox" id = "아이스박스" value = "아이스박스" name="fil1" checked="checked" >
						<label for = "아이스박스"> : 아이스박스 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=아이스박스')}">
					<td  width="180">
						<input type="checkbox" id = "아이스박스" value = "아이스박스"  name="fil1"  >
						<label for = "아이스박스"> : 아이스박스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=웨건')}">
					<td  width="180">
						<input type="checkbox" id = "웨건" value = "웨건" name="fil1" checked="checked" >
						<label for = "웨건"> : 웨건 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=웨건')}">
					<td  width="180">
						<input type="checkbox" id = "웨건" value = "웨건"  name="fil1"  >
						<label for = "웨건"> : 웨건 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=쿨러백')}">
					<td  width="180">
						<input type="checkbox" id = "쿨러백" value = "쿨러백" name="fil1" checked="checked" >
						<label for = "쿨러백"> : 쿨러백 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=쿨러백')}">
					<td  width="180">
						<input type="checkbox" id = "쿨러백" value = "쿨러백"  name="fil1"  >
						<label for = "쿨러백"> : 쿨러백 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">용량</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil9=10')}">
					<td  width="180">
						<input type="checkbox" id = "10" value = "10" name="fil9" checked="checked" >
						<label for = "10"> : 10L이하 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil9=10')}">
					<td  width="180">
						<input type="checkbox" id = "10" value = "10"  name="fil9"  >
						<label for = "10"> : 10L이하 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil9=20')}">
					<td  width="180">
						<input type="checkbox" id = "20" value = "20" name="fil9" checked="checked" >
						<label for = "20"> : 10L~20L </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil9=20')}">
					<td  width="180">
						<input type="checkbox" id = "20" value = "20"  name="fil9"  >
						<label for = "20"> : 10L~20L </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil9=40')}">
					<<td  width="180">
						<input type="checkbox" id = "40" value = "40" name="fil9" checked="checked" >
						<label for = "40"> : 20L~40L </label>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil9=40')}">
					<td  width="180">
						<input type="checkbox" id = "40" value = "40"  name="fil9"  >
						<label for = "40"> : 20L~40L </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil9=41')}">
					<td  width="180">
						<input type="checkbox" id = "41" value = "41" name="fil9" checked="checked" >
						<label for = "41"> : 40L이상 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil9=41')}">
					<td  width="180">
						<input type="checkbox" id = "41" value = "41"  name="fil9"  >
						<label for = "41"> : 40L이상 </label>
					</td>
				</c:if>
			</tr>


			<tr height="50">
				<td  width="180">재질</td>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=스테인리스')}">
					<td  width="180">
						<input type="checkbox" id = "스테인리스" value = "스테인리스" name="fil2" checked="checked" >
						<label for = "스테인리스"> : 스테인리스 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=스테인리스')}">
					<td  width="180">
						<input type="checkbox" id = "스테인리스" value = "스테인리스"  name="fil2"  >
						<label for = "스테인리스"> : 스테인리스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=스틸')}">
					<td  width="180">
						<input type="checkbox" id = "스틸" value = "스틸" name="fil2" checked="checked" >
						<label for = "스틸"> : 스틸 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=스틸')}">
					<td  width="180">
						<input type="checkbox" id = "스틸" value = "스틸"  name="fil2"  >
						<label for = "스틸"> : 스틸 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=알루미늄')}">
					<td  width="180">
						<input type="checkbox" id = "알루미늄" value = "알루미늄" name="fil2" checked="checked" >
						<label for = "알루미늄"> : 알루미늄 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=알루미늄')}">
					<td  width="180">
						<input type="checkbox" id = "알루미늄" value = "알루미늄"  name="fil2"  >
						<label for = "알루미늄"> : 알루미늄 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=플라스틱')}">
					<td  width="180">
						<input type="checkbox" id = "플라스틱" value = "플라스틱" name="fil2" checked="checked" >
						<label for = "플라스틱"> : 플라스틱 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=플라스틱')}">
					<td  width="180">
						<input type="checkbox" id = "플라스틱" value = "플라스틱"  name="fil2"  >
						<label for = "플라스틱"> : 플라스틱 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
					 
			</tr>

		</form>

	</table>
	</br>
	</br>
</c:if>


<c:if test="${category == 7 }">

	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=스노우피크')}">
					<td  width="180">
						<input type="checkbox" id = "스노우피크" value = "스노우피크" name="bran" checked="checked" >
						<label for = "스노우피크"> : 스노우피크 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, '스노우피크')}">
					<td  width="180">
						<input type="checkbox" id = "스노우피크" value = "스노우피크"  name="bran"  >
						<label for = "스노우피크"> : 스노우피크 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아"  name="bran"  >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=캠핑문')}">
					<<td  width="180">
						<input type="checkbox" id = "캠핑문" value = "캠핑문" name="bran" checked="checked" >
						<label for = "캠핑문"> : 캠핑문 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=캠핑문')}">
					<<td  width="180">
						<input type="checkbox" id = "캠핑문" value = "캠핑문"  name="bran"  >
						<label for = "캠핑문"> : 캠핑문 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=노마드')}">
					<td  width="180">
						<input type="checkbox" id = "노마드" value = "노마드" name="bran" checked="checked" >
						<label for = "노마드"> : 노마드 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=노마드')}">
					<td  width="180">
						<input type="checkbox" id = "노마드" value = "노마드"  name="bran"  >
						<label for = "노마드"> : 노마드 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=코펠')}">
					<td  width="180">
						<input type="checkbox" id = "코펠" value = "코펠" name="fil1" checked="checked" >
						<label for = "코펠"> : 코펠 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=코펠')}">
					<td  width="180">
						<input type="checkbox" id = "코펠" value = "코펠"  name="fil1"  >
						<label for = "코펠"> : 코펠 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=컵')}">
					<td  width="180">
						<input type="checkbox" id = "컵" value = "컵" name="fil1" checked="checked" >
						<label for = "컵"> : 컵 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=컵')}">
					<td  width="180">
						<input type="checkbox" id = "컵" value = "컵"  name="fil1"  >
						<label for = "컵"> : 컵 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=팬')}">
					<td  width="180">
						<input type="checkbox" id = "팬" value = "팬" name="fil1" checked="checked" >
						<label for = "팬"> : 팬 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=팬')}">
					<td  width="180">
						<input type="checkbox" id = "팬" value = "팬"  name="fil1"  >
						<label for = "팬"> : 팬 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=취사용품')}">
					<td  width="180">
						<input type="checkbox" id = "취사용품" value = "취사용품" name="fil1" checked="checked" >
						<label for = "취사용품"> : 취사용품 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=취사용품')}">
					<td  width="180">
						<input type="checkbox" id = "취사용품" value = "취사용품"  name="fil1"  >
						<label for = "취사용품"> : 취사용품 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=식기')}">
					<td  width="180">
						<input type="checkbox" id = "식기" value = "식기" name="fil1" checked="checked" >
						<label for = "식기"> : 식기 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=식기')}">
					<td  width="180">
						<input type="checkbox" id = "식기" value = "식기"  name="fil1"  >
						<label for = "식기"> : 식기 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">사용인원</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=1')}">
					<td  width="180">
						<input type="checkbox" id = "1" value = "1" name="fil7" checked="checked" >
						<label for = "1"> : 1~2인용</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=1')}">
					<td  width="180">
							<input type="checkbox" id = "1" value = "1"  name="fil7"  >
							<label for = "1"> : 1~2인용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=3')}">
					<td  width="180">
						<input type="checkbox" id = "3" value = "3" name="fil7" checked="checked" >
						<label for = "3"> : 3~4인용</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=3')}">
					<td  width="180">
							<input type="checkbox" id = "3" value = "3"  name="fil7"  >
							<label for = "3"> : 3~4인용 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil7=6')}">
					<td  width="180">
						<input type="checkbox" id = "6" value = "6" name="fil7" checked="checked" >
						<label for = "6"> : 6인이상</label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil7=6')}">
					<td  width="180">
							<input type="checkbox" id = "6" value = "6"  name="fil7"  >
							<label for = "6"> : 6인이상 </label>
					</td>
				</c:if>


			</tr>


			<tr height="50">
				<td  width="180">재질</td>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=스테인리스')}">
					<td  width="180">
						<input type="checkbox" id = "스테인리스" value = "스테인리스" name="fil2" checked="checked" >
						<label for = "스테인리스"> : 스테인리스 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=스테인리스')}">
					<td  width="180">
						<input type="checkbox" id = "스테인리스" value = "스테인리스"  name="fil2"  >
						<label for = "스테인리스"> : 스테인리스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=스틸')}">
					<td  width="180">
						<input type="checkbox" id = "스틸" value = "스틸" name="fil2" checked="checked" >
						<label for = "스틸"> : 스틸 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=스틸')}">
					<td  width="180">
						<input type="checkbox" id = "스틸" value = "스틸"  name="fil2"  >
						<label for = "스틸"> : 스틸 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=알루미늄')}">
					<td  width="180">
						<input type="checkbox" id = "알루미늄" value = "알루미늄" name="fil2" checked="checked" >
						<label for = "알루미늄"> : 알루미늄 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=알루미늄')}">
					<td  width="180">
						<input type="checkbox" id = "알루미늄" value = "알루미늄"  name="fil2"  >
						<label for = "알루미늄"> : 알루미늄 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=플라스틱')}">
					<td  width="180">
						<input type="checkbox" id = "플라스틱" value = "플라스틱" name="fil2" checked="checked" >
						<label for = "플라스틱"> : 플라스틱 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=플라스틱')}">
					<td  width="180">
						<input type="checkbox" id = "플라스틱" value = "플라스틱"  name="fil2"  >
						<label for = "플라스틱"> : 플라스틱 </label>
					</td>
				</c:if>
			</tr>


			</tr>

			<tr height="50">
				<td  width="180">세트유무</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=유')}">
					<td  width="180">
						<input type="checkbox" id = "유" value = "유" name="fil3" checked="checked" >
						<label for = "유"> : 유 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=유')}">
					<td  width="180">
						<input type="checkbox" id = "유" value = "유"  name="fil3"  >
						<label for = "유"> : 유 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=무')}">
					<td  width="180">
						<input type="checkbox" id = "무" value = "무" name="fil3" checked="checked" >
						<label for = "무"> : 무 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=무')}">
					<td  width="180">
						<input type="checkbox" id = "무" value = "무"  name="fil3"  >
						<label for = "무"> : 무 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
				상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
			</tr>

		</form>

	</table>
	</br>
	</br>
</c:if>


<c:if test="${category == 8 }">

	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아"  name="bran"  >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=지라프')}">
					<td  width="180">
						<input type="checkbox" id = "지라프" value = "지라프" name="bran" checked="checked" >
						<label for = "지라프"> : 지라프 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=지라프')}">
					<td  width="180">
						<input type="checkbox" id = "지라프" value = "지라프"  name="bran"  >
						<label for = "지라프"> : 지라프 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=꾸버스')}">
					<<td  width="180">
						<input type="checkbox" id = "꾸버스" value = "꾸버스" name="bran" checked="checked" >
						<label for = "꾸버스"> : 꾸버스 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=꾸버스')}">
					<td  width="180">
						<input type="checkbox" id = "꾸버스" value = "꾸버스"  name="bran"  >
						<label for = "꾸버스"> : 꾸버스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=노마드')}">
					<td  width="180">
						<input type="checkbox" id = "노마드" value = "노마드" name="bran" checked="checked" >
						<label for = "노마드"> : 노마드 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=노마드')}">
					<td  width="180">
						<input type="checkbox" id = "노마드" value = "노마드"  name="bran"  >
						<label for = "노마드"> : 노마드 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=화로')}">
					<td  width="180">
						<input type="checkbox" id = "화로" value = "화로" name="fil1" checked="checked" >
						<label for = "화로"> : 화로 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=화로')}">
					<td  width="180">
						<input type="checkbox" id = "화로" value = "화로"  name="fil1"  >
						<label for = "화로"> : 화로 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=토치')}">
					<td  width="180">
						<input type="checkbox" id = "토치" value = "토치" name="fil1" checked="checked" >
						<label for = "토치"> : 토치 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=토치')}">
					<td  width="180">
						<input type="checkbox" id = "토치" value = "토치"  name="fil1"  >
						<label for = "토치"> : 토치 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=가스레인지')}">
					<td  width="180">
						<input type="checkbox" id = "가스레인지" value = "가스레인지" name="fil1" checked="checked" >
						<label for = "가스레인지"> : 가스레인지 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=가스레인지')}">
					<td  width="180">
						<input type="checkbox" id = "가스레인지" value = "가스레인지"  name="fil1"  >
						<label for = "가스레인지"> : 가스레인지 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=가스그릴')}">
					<td  width="180">
						<input type="checkbox" id = "가스그릴" value = "가스그릴" name="fil1" checked="checked" >
						<label for = "가스그릴"> : 가스그릴 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=가스그릴')}">
					<td  width="180">
						<input type="checkbox" id = "가스그릴" value = "가스그릴"  name="fil1"  >
						<label for = "가스그릴"> : 가스그릴 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=버너')}">
					<td  width="180">
						<input type="checkbox" id = "버너" value = "버너" name="fil1" checked="checked" >
						<label for = "버너"> : 버너 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=버너')}">
					<td  width="180">
						<input type="checkbox" id = "버너" value = "버너"  name="fil1"  >
						<label for = "버너"> : 버너 </label>
					</td>
				</c:if>


			</tr>

			<tr height="50">
				<td  width="180">화구</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=1')}">
					<td  width="180">
						<input type="checkbox" id = "1" value = "1" name="fil2" checked="checked" >
						<label for = "1"> : 1구 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=1')}">
					<td  width="180">
						<input type="checkbox" id = "1" value = "1"  name="fil2"  >
						<label for = "1"> : 1구 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=2')}">
					<td  width="180">
						<input type="checkbox" id = "2" value = "2" name="fil2" checked="checked" >
						<label for = "2"> : 2구 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=2')}">
					<td  width="180">
						<input type="checkbox" id = "2" value = "2"  name="fil2"  >
						<label for = "2"> : 2구 </label>
					</td>
				</c:if>


			</tr>


			<tr height="50">
				<td  width="180">사용연료</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=장작')}">
					<td  width="180">
						<input type="checkbox" id = "장작" value = "장작" name="fil3" checked="checked" >
						<label for = "장작"> : 장작 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=장작')}">
					<td  width="180">
						<input type="checkbox" id = "장작" value = "장작"  name="fil3"  >
						<label for = "장작"> : 장작 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=가스')}">
					<td  width="180">
						<input type="checkbox" id = "가스" value = "가스" name="fil3" checked="checked" >
						<label for = "가스"> : 가스 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=가스')}">
					<td  width="180">
						<input type="checkbox" id = "가스" value = "가스"  name="fil3"  >
						<label for = "가스"> : 가스 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=숯')}">
					<td  width="180">
						<input type="checkbox" id = "숯" value = "숯" name="fil3" checked="checked" >
						<label for = "숯"> : 숯 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=숯')}">
					<td  width="180">
						<input type="checkbox" id = "숯" value = "숯"  name="fil3"  >
						<label for = "숯"> : 숯 </label>
					</td>
				</c:if>


			</tr>

			<tr height="50">
				<td  width="180">추가세트</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil4=유')}">
					<td  width="180">
						<input type="checkbox" id = "유" value = "유" name="fil4" checked="checked" >
						<label for = "유"> : 유 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil4=유')}">
					<td  width="180">
						<input type="checkbox" id = "유" value = "유"  name="fil4"  >
						<label for = "유"> : 유 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil4=무')}">
					<td  width="180">
						<input type="checkbox" id = "무" value = "무" name="fil4" checked="checked" >
						<label for = "무"> : 무 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil4=무')}">
					<td  width="180">
						<input type="checkbox" id = "무" value = "무"  name="fil4"  >
						<label for = "무"> : 무 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
			</tr>

		</form>

	</table>
	</br>
	</br>
</c:if>

<c:if test="${category == 9 }">
	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=꾸버스')}">
					<td  width="180">
						<input type="checkbox" id = "꾸버스" value = "꾸버스" name="bran" checked="checked" >
						<label for = "꾸버스"> : 꾸버스 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=꾸버스')}">
					<td  width="180">
						<input type="checkbox" id = "꾸버스" value = "꾸버스"  name="bran"  >
						<label for = "꾸버스"> : 꾸버스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아" name="bran" checked="checked" >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=코베아')}">
					<td  width="180">
						<input type="checkbox" id = "코베아" value = "코베아"  name="bran"  >
						<label for = "코베아"> : 코베아 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=숯깨비')}">
					<td  width="180">
						<input type="checkbox" id = "숯깨비" value = "숯깨비" name="bran" checked="checked" >
						<label for = "숯깨비"> : 숯깨비 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=숯깨비')}">
					<td  width="180">
						<input type="checkbox" id = "숯깨비" value = "숯깨비"  name="bran"  >
						<label for = "숯깨비"> : 숯깨비 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=맥선')}">
					<td  width="180">
						<input type="checkbox" id = "맥선" value = "맥선" name="bran" checked="checked" >
						<label for = "맥선"> : 맥선 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=맥선')}">
					<td  width="180">
						<input type="checkbox" id = "맥선" value = "맥선"  name="bran"  >
						<label for = "맥선"> : 맥선 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=가스')}">
					<td  width="180">
						<input type="checkbox" id = "가스" value = "가스" name="fil1" checked="checked" >
						<label for = "가스"> : 가스 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=가스')}">
					<td  width="180">
						<input type="checkbox" id = "가스" value = "가스"  name="fil1"  >
						<label for = "가스"> : 가스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=이소가스')}">
					<td  width="180">
						<input type="checkbox" id = "이소가스" value = "이소가스" name="fil1" checked="checked" >
						<label for = "이소가스"> : 이소가스 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=이소가스')}">
					<td  width="180">
						<input type="checkbox" id = "이소가스" value = "이소가스"  name="fil1"  >
						<label for = "이소가스"> : 이소가스 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=장작')}">
					<td  width="180">
						<input type="checkbox" id = "장작" value = "장작" name="fil1" checked="checked" >
						<label for = "장작"> : 장작 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=장작')}">
					<td  width="180">
						<input type="checkbox" id = "장작" value = "장작"  name="fil1"  >
						<label for = "장작"> : 장작 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=숯')}">
					<td  width="180">
						<input type="checkbox" id = "숯" value = "숯" name="fil1" checked="checked" >
						<label for = "숯"> : 숯 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=숯')}">
					<td  width="180">
						<input type="checkbox" id = "숯" value = "숯"  name="fil1"  >
						<label for = "숯"> : 숯 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=등유')}">
					<td  width="180">
						<input type="checkbox" id = "등유" value = "등유" name="fil1" checked="checked" >
						<label for = "등유"> : 등유 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=등유')}">
					<td  width="180">
						<input type="checkbox" id = "등유" value = "등유"  name="fil1"  >
						<label for = "등유"> : 등유 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
			</tr>

		</form>

	</table>

	</br>
	</br>
</c:if>


<c:if test="${category == 10 }">
	<table border="2" width="1600" cellpadding="0" cellspacing="0"
		>
		<form action="/equip/list">
			<input type="hidden" name="cat" value="${category}">
			<input type="hidden" name="id" value="${memId}">
			<tr height="50">
				<td  width="1600" colspan="6">검색필터</td>
			</tr>


			<tr height="50">
				<td  width="180">브랜드</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=프리즘')}">
					<td  width="180">
						<input type="checkbox" id = "프리즘" value = "프리즘" name="bran" checked="checked" >
						<label for = "프리즘"> : 프리즘 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=프리즘')}">
					<td  width="180">
						<input type="checkbox" id = "프리즘" value = "프리즘"  name="bran"  >
						<label for = "프리즘"> : 프리즘 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=우신벨로프')}">
					<td  width="180">
						<input type="checkbox" id = "우신벨로프" value = "우신벨로프" name="bran" checked="checked" >
						<label for = "우신벨로프"> : 우신벨로프 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=우신벨로프')}">
					<td  width="180">
						<input type="checkbox" id = "우신벨로프" value = "우신벨로프"  name="bran"  >
						<label for = "우신벨로프"> : 우신벨로프 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=동화상사')}">
					<td  width="180">
						<input type="checkbox" id = "동화상사" value = "동화상사" name="bran" checked="checked" >
						<label for = "동화상사"> : 동화상사 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=동화상사')}">
					<td  width="180">
						<input type="checkbox" id = "동화상사" value = "동화상사"  name="bran"  >
						<label for = "동화상사"> : 동화상사 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'bran=데스트')}">
					<td  width="180">
						<input type="checkbox" id = "데스트" value = "데스트" name="bran" checked="checked" >
						<label for = "데스트"> : 데스트 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'bran=데스트')}">
					
					<td  width="180">
						<input type="checkbox" id = "데스트" value = "데스트"  name="bran"  >
						<label for = "데스트"> : 데스트 </label>
					</td>
				</c:if>

			</tr>

			<tr height="50">
				<td  width="180">종류</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=손전등')}">
					<td  width="180">
						<input type="checkbox" id = "손전등" value = "손전등" name="fil1" checked="checked" >
						<label for = "손전등"> : 손전등 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=손전등')}">
					<td  width="180">
						<input type="checkbox" id = "손전등" value = "손전등"  name="fil1"  >
						<label for = "손전등"> : 손전등 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=헤드랜턴')}">
					<td  width="180">
						<input type="checkbox" id = "헤드랜턴" value = "헤드랜턴" name="fil1" checked="checked" >
						<label for = "헤드랜턴"> : 헤드랜턴 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=헤드랜턴')}">
					<td  width="180">
						<input type="checkbox" id = "헤드랜턴" value = "헤드랜턴"  name="fil1"  >
						<label for = "헤드랜턴"> : 헤드랜턴 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=실내등')}">
					<td  width="180">
						<input type="checkbox" id = "실내등" value = "실내등" name="fil1" checked="checked" >
						<label for = "실내등"> : 실내등 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=실내등')}">
					<td  width="180">
						<input type="checkbox" id = "실내등" value = "실내등"  name="fil1"  >
						<label for = "실내등"> : 실내등 </label>
					</td>
				</c:if>
				
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil1=작업등')}">
					<td  width="180">
						<input type="checkbox" id = "작업등" value = "작업등" name="fil1" checked="checked" >
						<label for = "작업등"> : 작업등 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil1=작업등')}">
					<td  width="180">
						<input type="checkbox" id = "작업등" value = "작업등"  name="fil1"  >
						<label for = "작업등"> : 작업등 </label>
					</td>
				</c:if>



			</tr>

			<tr height="50">
				<td  width="180">배터리</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=충전식')}">
					<td  width="180">
						<input type="checkbox" id = "충전식" value = "충전식" name="fil2" checked="checked" >
						<label for = "충전식"> : 충전식 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil2=충전식')}">
					<<td  width="180">
						<input type="checkbox" id = "충전식" value = "충전식"  name="fil2"  >
						<label for = "충전식"> : 충전식 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil2=건전지')}">
					<td  width="180">
						<input type="checkbox" id = "건전지" value = "건전지" name="fil2" checked="checked" >
						<label for = "건전지"> : 건전지 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, '건전지')}">
					<td  width="180">
						<input type="checkbox" id = "건전지" value = "건전지"  name="fil2"  >
						<label for = "건전지"> : 건전지 </label>
					</td>
				</c:if>

				
			</tr>


			<tr height="50">
				<td  width="180">밝기</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil10=1000')}">
					<td  width="180">
						<input type="checkbox" id = "1000" value = "1000" name="fil10" checked="checked" >
						<label for = "1000"> : 1000루멘이하 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil10=1000')}">
					<td  width="180">
						<input type="checkbox" id = "1000" value = "1000"  name="fil10"  >
						<label for = "1000"> : 1000루멘이하 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil10=2000')}">
					<td  width="180">
						<input type="checkbox" id = "2000" value = "2000" name="fil10" checked="checked" >
						<label for = "2000"> : 1000루멘~2000루멘 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil10=2000')}">
					<td  width="180">
						<input type="checkbox" id = "2000" value = "2000"  name="fil10"  >
						<label for = "2000"> : 1000루멘~2000루멘 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil10=2001')}">
					<td  width="180">
						<input type="checkbox" id = "2001" value = "2001" name="fil10" checked="checked" >
						<label for = "2001"> : 2000루멘이상 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil10=2001')}">
					<td  width="180">
						<input type="checkbox" id = "2001" value = "2001"  name="fil10"  >
						<label for = "2001"> : 2000루멘이상 </label>
					</td>
				</c:if>

		

			</tr>

			<tr height="50">
				<td  width="180">충전연료</td>
				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=전기')}">
					<td  width="180">
						<input type="checkbox" id = "전기" value = "전기" name="fil3" checked="checked" >
						<label for = "전기"> : 전기 </label>
					</td>
				</c:if>
				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=전기')}">
					<td  width="180">
						<input type="checkbox" id = "전기" value = "전기"  name="fil3"  >
						<label for = "전기"> : 전기 </label>
					</td>
				</c:if>

				<c:if test="${fn:containsIgnoreCase(filpara, 'fil3=가스')}">
					<td  width="180">
						<input type="checkbox" id = "가스" value = "가스" name="fil3" checked="checked" >
						<label for = "가스"> : 가스 </label>
					</td>
				</c:if>

				<c:if test="${!fn:containsIgnoreCase(filpara, 'fil3=가스')}">
					<td  width="180">
						<input type="checkbox" id = "가스" value = "가스"  name="fil3"  >
						<label for = "가스"> : 가스 </label>
					</td>
				</c:if>
			</tr>

			<tr height="50">
				<td  width="1600" colspan="5">
					상품명 : <input type="text" name="title" value="">
				
					<input type="submit" value="검색"> 
					<input type='button' onclick="fil_reset()" value="필터리셋" /> 
				</td>
			</tr>

		</form>

	</table>

	</br>
	</br>
</c:if>



<table border="1" width="1800" cellpadding="0" cellspacing="0"
	>
	<tr height="30" bgcolor="${value_c}">
		<td  width="200">사진</td>
		<td  width="300">장비명</td>
		<td  width="100">가격</td>
		<td  width="100">즐겨찾기</td>
		<td  width="50">별점</td>
		<td  width="150">등록일</td>
	</tr>

	<c:forEach var="equip" items="${EquipList}" varStatus="status">

		<tr height="10">

			<td ><a href="${equip.url_name}"><img
					src="${equip.image}" width="200" height="150"></a></td>

			<td ><a href="${equip.url_name}">${equip.title}</a>
				/ ${equip.num}</td>
			 
			<td >${equip.price}원</td>

			<td >
			
			<c:if test="${memId != null}">
			 	<c:if test="${ifFavorite[status.index] == 1}">
			 	<input type="button" value="즐겨찾기해제" onclick="window.location='/equip/favorite?num=${equip.num}&status=0&uri=${uri3}'">
			 	</c:if>
			 	
			 	<c:if test="${ifFavorite[status.index] == 0}">
			 	<input type="button" value="즐겨찾기" onclick="window.location='/equip/favorite?num=${equip.num}&status=0&uri=${uri3}'">
			 	</c:if>
		 	</c:if>
		 	<c:if test="${memId == null}">
		 		<input type="button" value="즐겨찾기" onclick="window.location='/home'">
			</c:if>
			
			</td>
	
			<td >${equip.score}</td>

			<td >${equip.reg}</td>

		</tr>

	</c:forEach>

</table>

<table border="1" width="1800" cellpadding="0" cellspacing="0"
	>

	<tr height="50">
		<td >현재페이지 : ${currentPage}</td>
	</tr>


	<tr height="50">




		<td ><c:if test="${count > 0}">
				<c:set var="pageCount"
					value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}" />
				<fmt:parseNumber var="result" value="${currentPage/10.01}"
					integerOnly="true" />
				<c:set var="startPage" value="${result*10+1}" />
				<c:set var="pageBlock" value="${10}" />
				<c:set var="endPage" value="${startPage + pageBlock-1}" />
				<c:if test="${endPage > pageCount}">
					<c:set var="endPage" value="${pageCount}" />
				</c:if>

				<c:if test="${startPage > 10}">
					<a
						href="/equip/list?id=${memId}&pageNum=${startPage - 10}&cat=${category}${filpara}">[이전]</a>
				</c:if>

				<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
					<a href="/equip/list?id=${memId}&pageNum=${i}&cat=${category}${filpara}">[${i}]</a>
				</c:forEach>

				<c:if test="${endPage < pageCount}">
					<a
						href="/equip/list?id=${memId}&pageNum=${startPage + 10}&cat=${category}${filpara}">[다음]</a>
				</c:if>
			</c:if></td>
	<tr>
</table>
</div>
<h2>currentPage : ${currentPage}</h2>
<h2>startPage : ${startPage}</h2>
<h2>endPage : ${endPage}</h2>
<h2>result : ${result}</h2>


<%@include file="../footer.jsp" %>