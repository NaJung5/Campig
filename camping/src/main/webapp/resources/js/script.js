function fil_reset(){
	var bran = document.getElementsByName('bran');
	var fil1 = document.getElementsByName('fil1');
	var fil2 = document.getElementsByName('fil2');
	var fil3 = document.getElementsByName('fil3');
	var fil4 = document.getElementsByName('fil4');
	var fil5 = document.getElementsByName('fil5');
	var fil6 = document.getElementsByName('fil6');
	var fil7 = document.getElementsByName('fil7');
	var fil8 = document.getElementsByName('fil8');
	var fil9 = document.getElementsByName('fil9');
	var fil10 = document.getElementsByName('fil10');
	var fil11 = document.getElementsByName('fil11');
	var fil12 = document.getElementsByName('fil12');
    for (var i = 0; i < bran.length; i++) {
        bran[i].checked = false;
    }
    
    for (var i = 0; i < fil1.length; i++) {
        fil1[i].checked = false;
    }
    
    for (var i = 0; i < fil2.length; i++) {
        fil2[i].checked = false;
    }
    
    for (var i = 0; i < fil3.length; i++) {
        fil3[i].checked = false;
    }
    
    for (var i = 0; i < fil4.length; i++) {
        fil4[i].checked = false;
    }
    
    for (var i = 0; i < fil5.length; i++) {
        fil5[i].checked = false;
    }
    
    for (var i = 0; i < fil6.length; i++) {
        fil6[i].checked = false;
    }
    
    for (var i = 0; i < fil7.length; i++) {
        fil7[i].checked = false;
    }
    
    for (var i = 0; i < fil8.length; i++) {
        fil8[i].checked = false;
    }
    
    for (var i = 0; i < fil9.length; i++) {
        fil9[i].checked = false;
    }
    
    for (var i = 0; i < fil10.length; i++) {
        fil10[i].checked = false;
    }
    
    for (var i = 0; i < fil11.length; i++) {
        fil11[i].checked = false;
    }
    for (var i = 0; i < fil12.length; i++) {
        fil12[i].checked = false;
    }
}

function changeCat(){
	var catSelect = document.getElementById("selectBox");
	var selectVal = catSelect.options[catSelect.selectedIndex].value;
	var selectText = catSelect.options[catSelect.selectedIndex].text;
	alert(selectText);
	if(selectVal == 1){
		document.frm1.style.display="block";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 2){
		document.frm1.style.display="none";
		document.frm2.style.display="block";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 3){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="block";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 4){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="block";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 5){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="block";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 6){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="block";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 7){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="block";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 8){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="block";
		document.frm9.style.display="none";
		document.frm10.style.display="none";
	}if(selectVal == 9){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="block";
		document.frm10.style.display="none";
	}if(selectVal == 10){
		document.frm1.style.display="none";
		document.frm2.style.display="none";
		document.frm3.style.display="none";
		document.frm4.style.display="none";
		document.frm5.style.display="none";
		document.frm6.style.display="none";
		document.frm7.style.display="none";
		document.frm8.style.display="none";
		document.frm9.style.display="none";
		document.frm10.style.display="block";
	}
}

function changeBrand_1(){
	
	var brandSelect =  document.getElementById("brand_sel_1");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_1').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_1').style.display="none";
		
	}
}	

function changeFil1_1(){

	var fil1Select =  document.getElementById("fil1_sel_1");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_1').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_1').style.display="none";
	}
}	


function changeBrand_2(){
	
	var brandSelect =  document.getElementById("brand_sel_2");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_2').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_2').style.display="none";
		
	}
}	

function changeFil1_2(){

	var fil1Select =  document.getElementById("fil1_sel_2");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_2').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_2').style.display="none";
	}
}	

function changeFil2_2(){

	var fil2Select =  document.getElementById("fil2_sel_2");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_2').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_2').style.display="none";
	}
}	


function changeBrand_3(){
	
	var brandSelect =  document.getElementById("brand_sel_3");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_3').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_3').style.display="none";
		
	}
}	

function changeFil1_3(){

	var fil1Select =  document.getElementById("fil1_sel_3");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_3').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_3').style.display="none";
	}
}	

function changeFil2_3(){

	var fil2Select =  document.getElementById("fil2_sel_3");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_3').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_3').style.display="none";
	}
}	

function changeFil3_3(){

	var fil3Select =  document.getElementById("fil3_sel_3");
	var fil3Val = fil3Select.options[fil3Select.selectedIndex].value;
	if(fil3Val == 'fil3direct_sel'){ 
		document.getElementById('fil3direct_txt_3').style.display="block";
	}else{
		document.getElementById('fil3direct_txt_3').style.display="none";
	}
}	
	
	
function changeBrand_4(){
	
	var brandSelect =  document.getElementById("brand_sel_4");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_4').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_4').style.display="none";
		
	}
}	

function changeFil1_4(){

	var fil1Select =  document.getElementById("fil1_sel_4");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_4').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_4').style.display="none";
	}
}	

function changeFil2_4(){

	var fil2Select =  document.getElementById("fil2_sel_4");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_4').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_4').style.display="none";
	}
}	

function changeFil3_4(){

	var fil3Select =  document.getElementById("fil3_sel_4");
	var fil3Val = fil3Select.options[fil3Select.selectedIndex].value;
	if(fil3Val == 'fil3direct_sel'){ 
		document.getElementById('fil3direct_txt_4').style.display="block";
	}else{
		document.getElementById('fil3direct_txt_4').style.display="none";
	}
}	

function changefil4_4(){

	var fil4Select =  document.getElementById("fil4_sel_4");
	var fil4Val = fil4Select.options[fil4Select.selectedIndex].value;
	if(fil4Val == 'fil4direct_sel'){ 
		document.getElementById('fil4direct_txt_4').style.display="block";
	}else{
		document.getElementById('fil4direct_txt_4').style.display="none";
	}
}	

function changeBrand_5(){
	
	var brandSelect =  document.getElementById("brand_sel_5");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_5').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_5').style.display="none";
		
	}
}	

function changeFil1_5(){

	var fil1Select =  document.getElementById("fil1_sel_5");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_5').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_5').style.display="none";
	}
}	

function changeFil2_5(){

	var fil2Select =  document.getElementById("fil2_sel_5");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_5').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_5').style.display="none";
	}
}	

function changeBrand_6(){
	
	var brandSelect =  document.getElementById("brand_sel_6");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_6').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_6').style.display="none";
		
	}
}	

function changeFil1_6(){

	var fil1Select =  document.getElementById("fil1_sel_6");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_6').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_6').style.display="none";
	}
}	

function changeFil2_6(){

	var fil2Select =  document.getElementById("fil2_sel_6");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_6').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_6').style.display="none";
	}
}	
	

function changeBrand_7(){
	
	var brandSelect =  document.getElementById("brand_sel_7");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_7').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_7').style.display="none";
		
	}
}	

function changeFil1_7(){

	var fil1Select =  document.getElementById("fil1_sel_7");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_7').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_7').style.display="none";
	}
}	

function changeFil2_7(){

	var fil2Select =  document.getElementById("fil2_sel_7");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_7').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_7').style.display="none";
	}
}	

function changeBrand_8(){
	
	var brandSelect =  document.getElementById("brand_sel_8");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_8').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_8').style.display="none";
		
	}
}	

function changeFil1_8(){

	var fil1Select =  document.getElementById("fil1_sel_8");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_8').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_8').style.display="none";
	}
}	

function changeFil2_8(){

	var fil2Select =  document.getElementById("fil2_sel_8");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_8').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_8').style.display="none";
	}
}	

function changeFil3_8(){

	var fil3Select =  document.getElementById("fil3_sel_8");
	var fil3Val = fil3Select.options[fil3Select.selectedIndex].value;
	if(fil3Val == 'fil3direct_sel'){ 
		document.getElementById('fil3direct_txt_8').style.display="block";
	}else{
		document.getElementById('fil3direct_txt_8').style.display="none";
	}
}	

function changeBrand_9(){
	
	var brandSelect =  document.getElementById("brand_sel_9");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_9').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_9').style.display="none";
		
	}
}	

function changeFil1_9(){

	var fil1Select =  document.getElementById("fil1_sel_9");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_9').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_9').style.display="none";
	}
}	


function changeBrand_10(){
	
	var brandSelect =  document.getElementById("brand_sel_10");
	var brandVal = brandSelect.options[brandSelect.selectedIndex].value;
	if(brandVal == 'branddirect_sel'){ 
		document.getElementById('branddirect_txt_10').style.display="block";
		
	}else{
		document.getElementById('branddirect_txt_10').style.display="none";
		
	}
}	

function changeFil1_10(){

	var fil1Select =  document.getElementById("fil1_sel_10");
	var fil1Val = fil1Select.options[fil1Select.selectedIndex].value;
	if(fil1Val == 'fil1direct_sel'){ 
		document.getElementById('fil1direct_txt_10').style.display="block";
	}else{
		document.getElementById('fil1direct_txt_10').style.display="none";
	}
}	

function changeFil2_10(){

	var fil2Select =  document.getElementById("fil2_sel_10");
	var fil2Val = fil2Select.options[fil2Select.selectedIndex].value;
	if(fil2Val == 'fil2direct_sel'){ 
		document.getElementById('fil2direct_txt_10').style.display="block";
	}else{
		document.getElementById('fil2direct_txt_10').style.display="none";
	}
}	

function changeFil3_10(){

	var fil3Select =  document.getElementById("fil3_sel_10");
	var fil3Val = fil3Select.options[fil3Select.selectedIndex].value;
	if(fil3Val == 'fil3direct_sel'){ 
		document.getElementById('fil3direct_txt_10').style.display="block";
	}else{
		document.getElementById('fil3direct_txt_10').style.display="none";
	}
	
	
function favorite(){

	alert("aa")
	}
	
	function writeSave(){
	
	if(document.writeform.title.value=="") {
	  alert("제목을 입력해주세요.");
	  document.writeform.title.focus();
	  return false;
	}
	
	if(document.writeform.content.value=="") {
	  alert("내용을 입력해주세요.");
	  document.writeform.content.focus();
	  return false;
	}
 } 
    
function writeCheck(){
	
	if(document.writeform.content.value=="") {
	  alert("내용을 입력해주세요.");
	  document.writeform.content.focus();
	  return false;
	}
 }
	
	
}	



