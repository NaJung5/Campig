<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <script language="JavaScript" src="/resources/js/script.js" charset="UTF-8"></script>
  <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
    <tr> 
    <td colspan="2" height="39" align="center" >
       <font size="+1" ><b>장비등록</b></font></td>
    </tr>
	
	 <td colspan="2" height="39" align="center" >
       <font size="+1" ><b>상품카테고리</b></font>
       <form>
       <select name="cat" id="selectBox" onchange="changeCat()">
		    <option value="1">텐트</option>
		    <option value="2">타프</option>
		    <option value="3">매트</option>
		    <option value="4">침낭침구</option>
		    <option value="5">가구</option>
		    <option value="6">물통</option>
		    <option value="7">조리도구</option>
		    <option value="8">취사도구</option>
		    <option value="9">연료</option>
		    <option value="10">랜턴,라이트</option>
		    
		</select>
		</form>
       </td>
    </tr>
    </table>
    
     <form  name="frm1"  action="/equip/insertPro"  method="post" style="display:block;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_1" onchange="changeBrand_1()">
		    <option value="아이두젠">아이두젠</option>
		    <option value="코베아">코베아</option>
		    <option value="네이처하이크">네이처하이크</option>
		    <option value="비에프엘">비에프엘</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_1" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_1" onchange="changeFil1_1()">
		    <option value="캐빈텐트">캐빈텐트</option>
		    <option value="돔텐트">돔텐트</option>
		    <option value="그늘막텐트">그늘막텐트</option>
		    <option value="터널형텐트">터널형텐트</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_1" style="display:none;" >
        
      </td>
    </tr>
    <tr> 
      <td width="200">사용인원</td>
      <td width="400"> 
        <input type="text" name="fil7" size="40" maxlength="500">인용
      </td>
    </tr>
        <tr> 
      <td width="200">내수압</td>
      <td width="400"> 
        <input type="text" name="fil8" size="40" maxlength="500">mm
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="1">
  
  </form>
	
	
  	<form  name="frm2" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_2" onchange="changeBrand_2()">
		    <option value="비에프엘">비에프엘</option>
		    <option value="아이두젠">아이두젠</option>
		    <option value="코베아">코베아</option>
		    <option value="콜맨">콜맨</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_2" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_2" onchange="changeFil1_2()">
		    <option value="스킨">스킨</option>
		    <option value="스킨+폴">스킨+폴</option>
		    <option value="파라솔">파라솔</option>
		    <option value="스크린">스크린</option>
		    <option value="사이드월">사이드월</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_2" style="display:none;" >
        
      </td>
    </tr>
	
	   <tr> 
      <td width="200">내수압</td>
      <td width="400"> 
        <input type="text" name="fil8" size="40" maxlength="500">mm
      </td>
    </tr>
    
     <tr> 
      <td width="200">재질</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_2" onchange="changeFil2_2()">
		    <option value="폴리에스테르">폴리에스테르</option>
		    <option value="나일론">나일론</option>
		    <option value="블랙코팅">블랙코팅</option>
		    <option value="면">면</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_2" style="display:none;" >
        
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="2">
  
  </form>
  
  
  <form  name="frm3" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_3" onchange="changeBrand_3()">
		    <option value="인텍스">인텍스</option>
		    <option value="네이처하이크">네이처하이크</option>
		    <option value="씨투써미트">씨투써미트</option>
		    <option value="코베아">코베아</option>
		    <option value="파크론">파크론</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_3" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_3" onchange="changeFil1_3()">
		    <option value="에어매트">에어매트</option>
		    <option value="엠보싱매트">엠보싱매트</option>
		    <option value="피크닉매트">피크닉매트</option>
		    <option value="에어소파">에어소파</option>
		    <option value="에어펌프">에어펌프</option>
		    <option value="돗자리">돗자리</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_3" style="display:none;" >
        
      </td>
    </tr>
	
	  <tr> 
      <td width="200">사용인원</td>
      <td width="400"> 
        <input type="text" name="fil7" size="40" maxlength="500">인용
      </td>
    </tr>
    
     <tr> 
      <td width="200">사용장소</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_3" onchange="changeFil2_3()">
		    <option value="아웃도어용">아웃도어용</option>
		    <option value="텐트내부용">텐트내부용</option>
		    <option value="내부+아웃도어용">내부+아웃도어용</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_3" style="display:none;" >
        
      </td>
    </tr>
    
    <tr> 
      <td width="200">보관형태</td>
      <td width="400"> 
       <select name="fil3" id="fil3_sel_3" onchange="changeFil3_3()">
		    <option value="접이식">접이식</option>
		    <option value="말이식">말이식</option>
		    <option value="fil3direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil3"  id="fil3direct_txt_3" style="display:none;" >
        
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="3">
  
  </form>
  
  <form  name="frm4" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_4" onchange="changeBrand_4()">
		    <option value="반고">반고</option>
		    <option value="씨투써미트">씨투써미트</option>
		    <option value="네이처하이크">네이처하이크</option>
		    <option value="코베아">코베아</option>
		    <option value="메사">메사</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_4" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_4" onchange="changeFil1_4()">
		    <option value="침낭">침낭</option>
		    <option value="배개">배개</option>
		    <option value="라이너">라이너</option>
		    <option value="담요">담요</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_4" style="display:none;" >
        
      </td>
    </tr>
	
	  <tr> 
      <td width="200">형태</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_4" onchange="changeFil2_4()">
		    <option value="사각">사각</option>
		    <option value="머미(미이라형)">머미(미이라형)</option>
		    <option value="사각(후드형)">사각(후드형)</option>
		    <option value="입는형">입는형</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_4" style="display:none;" >
        
      </td>
    </tr>
    
	  <tr> 
      <td width="200">사용장소</td>
      <td width="400"> 
       <select name="fil3" id="fil3_sel_4" onchange="changeFil3_4()">
		    <option value="여름용">여름용</option>
		    <option value="사계절용">사계절용</option>
		    <option value="봄,가을용">봄,가을용</option>
		    <option value="겨울용">겨울용</option>
		    <option value="fil3direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil3"  id="fil3direct_txt_4" style="display:none;" >
        
      </td>
    </tr>
    
    <tr> 
      <td width="200">충전재</td>
      <td width="400"> 
       <select name="fil4" id="fil4_sel_4" onchange="changefil4_4()">
		    <option value="폴리에스테르">폴리에스테르</option>
		    <option value="홀로파이버">홀로파이버</option>
		    <option value="거위털">거위털</option>
		    <option value="오리털">오리털</option>
		    <option value="마이크로화이바">마이크로화이바</option>
		    <option value="fil4direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil4"  id="fil4direct_txt_4" style="display:none;" >
        
      </td>
    </tr>
    
     <tr> 
      <td width="200">내한온도</td>
      <td width="400"> 
        <input type="text" name="fil11" size="40" maxlength="500">도
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="4">
  
  </form>
    
    
  <form  name="frm5" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_5" onchange="changeBrand_5()">
		    <option value="카즈미">카즈미</option>
		    <option value="콜맨">콜맨</option>
		    <option value="코베아">코베아</option>
		    <option value="네이처하이크">네이처하이크</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_5" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_5" onchange="changeFil1_5()">
		    <option value="의자">의자</option>
		    <option value="침대">침대</option>
		    <option value="테이블">테이블</option>
		    <option value="가구">가구</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_5" style="display:none;" >
        
      </td>
    </tr>
	
	  <tr> 
      <td width="200">재질</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_5" onchange="changeFil2_5()">
		    <option value="알루미늄">알루미늄</option>
		    <option value="스틸">스틸</option>
		    <option value="두랄루민">두랄루민</option>
		    <option value="나무">나무</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_5" style="display:none;" >
        
      </td>
    </tr>
    
     <tr> 
      <td width="200">내하중</td>
      <td width="400"> 
        <input type="text" name="fil12" size="40" maxlength="500">KG
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="5">
  
  </form>


 <form  name="frm6" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_6" onchange="changeBrand_6()">
		    <option value="콜맨">콜맨</option>
		    <option value="스탠리">스탠리</option>
		    <option value="코스모스">코스모스</option>
		    <option value="다이와">다이와</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_6" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_6" onchange="changeFil1_6()">
		    <option value="물통">물통</option>
		    <option value="아이스박스">아이스박스</option>
		    <option value="웨건">웨건</option>
		    <option value="쿨러백">쿨러백</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_6" style="display:none;" >
        
      </td>
    </tr>
	
	  <tr> 
      <td width="200">재질</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_6" onchange="changeFil2_6()">
		    <option value="스테인리스">스테인리스</option>
		    <option value="스틸">스틸</option>
		    <option value="알루미늄">알루미늄</option>
		    <option value="플라스틱">플라스틱</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_6" style="display:none;" >
        
      </td>
    </tr>
    
     <tr> 
      <td width="200">용량</td>
      <td width="400"> 
        <input type="text" name="fil9" size="40" maxlength="500">L
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="6">
  
  </form>
    

      <form  name="frm7" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_7" onchange="changeBrand_7()">
		    <option value="스노우피크">스노우피크</option>
		    <option value="코베아">코베아</option>
		    <option value="캠핑문">캠핑문</option>
		    <option value="노마드">노마드</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_7" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_7" onchange="changeFil1_7()">
		    <option value="코펠">코펠</option>
		    <option value="컵">컵</option>
		    <option value="팬">팬</option>
		    <option value="취사용품">취사용품</option>
		    <option value="식기">식기</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_7" style="display:none;" >
        
      </td>
    </tr>
	
	  <tr> 
      <td width="200">재질</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_7" onchange="changeFil2_7()">
		    <option value="스테인리스">스테인리스</option>
		    <option value="스틸">스틸</option>
		    <option value="알루미늄">알루미늄</option>
		    <option value="플라스틱">플라스틱</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_7" style="display:none;" >
        
      </td>
    </tr>
    
     <tr> 
      <td width="200">사용인원</td>
      <td width="400"> 
        <input type="text" name="fil7" size="40" maxlength="500">인용
      </td>
    </tr>
    
    <tr> 
      <td width="200">세트유무</td>
      <td width="400"> 
       <select name="fil3" id="fil3_sel_7">
		    <option value="유">유</option>
		    <option value="무">무</option>
		</select>
        
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="7">
  
  </form>
  
  
    <form  name="frm8" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_8" onchange="changeBrand_8()">
		    <option value="코베아">코베아</option>
		    <option value="지라프">지라프</option>
		    <option value="꾸버스">꾸버스</option>
		    <option value="노마드">노마드</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_8" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_8" onchange="changeFil1_8()">
		    <option value="화로">화로</option>
		    <option value="토치">토치</option>
		    <option value="가스레인지">가스레인지</option>
		    <option value="가스그릴">가스그릴</option>
		    <option value="버너">버너</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_8" style="display:none;" >
        
      </td>
    </tr>
	
    
     <tr> 
      <td width="200">화구</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_8" onchange="changeFil2_8()">
		    <option value="1">1구</option>
		    <option value="2">2구</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_8" style="display:none;" >
        
      </td>
    </tr>
    
    <tr> 
      <td width="200">사용연료</td>
      <td width="400"> 
       <select name="fil3" id="fil3_sel_8" onchange="changeFil3_8()">
		    <option value="장작">장작</option>
		    <option value="가스">가스</option>
		    <option value="숯">숯</option>
		    <option value="fil3direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil3"  id="fil3direct_txt_8" style="display:none;" >
        
      </td>
    </tr>
    
    <tr> 
      <td width="200">세트유무</td>
      <td width="400"> 
       <select name="fil4" id="fil4_sel_7">
		    <option value="유">유</option>
		    <option value="무">무</option>
		</select>
        
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="8">
  
  </form>
  
  
      <form  name="frm9" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_9" onchange="changeBrand_9()">
		    <option value="꾸버스">꾸버스</option>
		    <option value="코베아">코베아</option>
		    <option value="숯깨비">숯깨비</option>
		    <option value="맥선">맥선</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_9" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_9" onchange="changeFil1_9()">
		    <option value="가스">가스</option>
		    <option value="이소가스">이소가스</option>
		    <option value="장작">장작</option>
		    <option value="숯">숯</option>
		    <option value="등유">등유</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_9" style="display:none;" >
        
      </td>
    </tr>

    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="9">
  
  </form>
  
  
   <form  name="frm10" action="/equip/insertPro" method="post" style="display:none;" >
     
     <table width="600" border="1" cellspacing="0" cellpadding="3" align="center" >
  	  <tr> 
      <td width="200"> 상품명</td>
      <td width="400"> 
        <input type="text" name="title" size="40" maxlength="100">
        
      </td>
    </tr>
    <tr> 
      <td width="200"> 상품가격</td>
      <td width="400" > 
        <input type="text" name="price" size="10" maxlength="100"> 원
      </td>
    <tr>  
      <td width="200">상품제원</td>
      <td width="400"> 
        <input type="text" name="content" size="60" maxlength="1000">
      </td>
    </tr>
    
 
    <tr> 
      <td width="200">이미지주소(url)</td>
      <td width="400"> 
        <input type="text" name="image" size="40" maxlength="500">
      </td>
    </tr>
    <tr> 
      <td width="200">상품주소(url)</td>
      <td width="400"> 
        <input type="text" name="url_name" size="40" maxlength="500">
      </td>
    </tr>
     <tr> 
      <td width="200">사용법영상주소(url)</td>
      <td width="400"> 
        <input type="text" name="manual" size="40" maxlength="500">
      </td>
    </tr>
    
    <tr> 
      <td width="200">제조사</td>
      <td width="400"> 
       <select name="brand" id="brand_sel_10" onchange="changeBrand_10()">
		    <option value="프리즘">프리즘</option>
		    <option value="우신벨로프">우신벨로프</option>
		    <option value="동화상사">동화상사</option>
		    <option value="데스트">데스트</option>
		    <option value="branddirect_sel">직접입력</option>
		</select>
		<input type="text" name="brand"  id="branddirect_txt_10" style="display:none;" >
        
      </td>
    </tr>
 
     <tr> 
      <td width="200">종류</td>
      <td width="400"> 
       <select name="fil1" id="fil1_sel_10" onchange="changeFil1_10()">
		    <option value="손전등">손전등</option>
		    <option value="헤드랜턴">헤드랜턴</option>
		    <option value="실내등">실내등</option>
		    <option value="작업등">작업등</option>
		    <option value="fil1direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil1"  id="fil1direct_txt_10" style="display:none;" >
        
      </td>
    </tr>
	
	  <tr> 
      <td width="200">배터리</td>
      <td width="400"> 
       <select name="fil2" id="fil2_sel_10" onchange="changeFil2_10()">
		    <option value="충전식">충전식</option>
		    <option value="건전지">건전지</option>
		    <option value="fil2direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil2"  id="fil2direct_txt_10" style="display:none;" >
        
      </td>
    </tr>
    
      <tr> 
      <td width="200">밝기</td>
      <td width="400"> 
        <input type="text" name="fil10" size="40" maxlength="500">루멘
      </td>
    </tr>
    
	  <tr> 
      <td width="200">충전연료</td>
      <td width="400"> 
       <select name="fil3" id="fil3_sel_10" onchange="changeFil3_10()">
		    <option value="전기">전기</option>
		    <option value="가스">가스</option>
		    <option value="fil3direct_sel">직접입력</option>
		</select>
		<input type="text" name="fil3"  id="fil3direct_txt_10" style="display:none;" >
        
      </td>
    </tr>
    
    <tr> 
      <td colspan="2" align="center" bgcolor="${value_c}"> 
          <input type="submit" name="confirm" value="등   록" >
          <input type="reset" name="reset" value="다시입력">
      </td>
    </tr>
  </table>
  
  <input type="hidden" name="category" value="10">
  
  </form>
  
  
