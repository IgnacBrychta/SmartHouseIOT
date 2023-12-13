
function RefreshCam(ipcamimg, elementid, url, t, d) {var o=document.getElementById(elementid);if(o){o.setAttribute("src",eval(ipcamimg+'.src'));if(o.parentNode.parentNode.style.visibility!='hidden')setTimeout(ipcamimg+".src = \""+url+d+Math.random()+"\"", t);}}
function SetBg(name, imag) {var obj = document.getElementById(name); obj.style.backgroundImage = imag == '' ? '' : 'url("IMAGES/'+imag+'")';}
function SetCond(obj, val) {if(obj != val) obj = val;}
function GetColor(val) {var tmp = '000000'+parseInt(parseInt(((val << 16) & 0xFF0000) | (val & 0xFF00) | ((val >> 16) & 0xFF))).toString(16); return '#'+tmp.substr(tmp.length-6,6);}
function GetDateByFormat(e,a){for(var s=e.split(/([YMDhms]+)/),t=a.split(/([0-9]+)/),r="",n="0",c="0",p="0",h="0",I="0",b="0",i=1;i<Math.min(s.length,t.length);i+=2)switch(s[i].charAt(0)){case"Y":r=parseInt(t[i]);break;case"M":n=parseInt(t[i]);break;case"D":c=parseInt(t[i]);break;case"h":p=parseInt(t[i]);break;case"m":h=parseInt(t[i]);break;case"s":I=parseInt(t[i]);break;case"z":b=t[i]}return b=parseInt((b+"00").slice(0,4)),"-"==t[0]&&(p*=-1,h*=-1,I*=-1,b*=-1),new Date(r,n,c,p,h,I,b)}
function CheckValueLimits(value,type,format,mmin,mmax) {switch(type) {case 0:value = parseFloat(value);mnin  = parseFloat(mmin);mmax  = parseFloat(mmax);break;case 1:value = parseInt(value, 16);mnin  = parseInt(mmin, 16);mmax  = parseInt(mmax, 16);break;case 2:value = GetDateByFormat(format, value);mmin  = GetDateByFormat(format, mmin);mmax  = GetDateByFormat(format, mmax);break;}return value >= mmin && value <= mmax;}
var xmlhttpGET  = null;
var xmlhttpPOST = null;
var gNewLoc='';function GetXML(e,t){if(window.XMLHttpRequest){xmlhttpGET=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpGET=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpGET!=null){xmlhttpGET.onreadystatechange=onResponse;if(t){xmlhttpGET.open("POST",e,true);xmlhttpGET.setRequestHeader("Content-type","application/x-www-form-urlencoded")}else{xmlhttpGET.open("GET",e,true)}xmlhttpGET.setRequestHeader("x-tecomat","data");xmlhttpGET.send(t)}else{alert("Your browser does not support XMLHTTP.")}}
function PostXML(e,t,l){if(window.XMLHttpRequest){xmlhttpPOST=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpPOST=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpPOST!=null){gNewLoc=l;xmlhttpPOST.onreadystatechange=onPostResponse;xmlhttpPOST.open("POST",e,true);xmlhttpPOST.setRequestHeader("Content-type","application/x-www-form-urlencoded");xmlhttpPOST.send(t)}else{alert("Your browser does not support XMLHTTP.")}}

var g_postInProgress=false;
var UpdateFileSubmit;
function TUpdateFileSubmit(div, name, size) {this.mDiv = div; this.mName = name; this.mSize = size; this.mNum = 0;this.refresh = function() {var sp = ['|','/','-','\\'];this.mDiv.innerHTML=this.mName+' '+sp[this.mNum%4]+' '+ this.mSize;this.mNum++;setTimeout("UpdateFileSubmit.refresh()", 500);};this.refresh();}
function postFileSubmit(sourceForm, colour, warning) {if(sourceForm[0].value) {if(!warning || confirm(warning)) {g_postInProgress = true;for( var x = 0; sourceForm.childNodes[x]; x++ ){if(sourceForm.childNodes[x].style) {if(sourceForm.childNodes[x].style.display == 'none') {sourceForm.childNodes[x].style.display = 'block';if(sourceForm[0].files) {UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].files[0].name,sourceForm[0].files[0].size+'B',0);}else{UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].value.replace(/.*(\/|\\)/, ''),'');}} else sourceForm.childNodes[x].style.display = 'none';}}sourceForm.submit();}else{sourceForm[0].value=''}}}
function SetInputEdited(i, e){var keynum;if(window.event){keynum=e.keyCode;}else if(e.which){keynum=e.which;}InputFocused[i-1]=1;if(keynum!=9&&keynum!=11&&keynum!=16&&keynum !=17){if(keynum==27){InputEdited[i-1]=0; }else{InputEdited[i-1]=1;document.getElementById('INPUT'+i).style.color='#FF0000';}}}
var InputEdited=[];var InputFocused=[];var gCI=[];var gLCI=[]; var gIC=[];var gWatchDog = 0; var gTemp;
function UpdateValue(input, x, color) {
if(input.value != x.getAttribute('VALUE')) input.value = x.getAttribute('VALUE');
if(input.style.color != color) input.style.color = color;
}
function onPostResponse() {
if(!xmlhttpPOST) return;
if(xmlhttpPOST.readyState != 4) return;
if(!xmlhttpPOST.status) return;
if(xmlhttpPOST.status != 200){
alert('Problem posting XML data ' + xmlhttpPOST.statusText + '(' + xmlhttpPOST.status + ')');
}else{if(gNewLoc)document.location.href=gNewLoc;}
}
function msetref(){if(typeof(Storage)!=='undefined'){if(sessionStorage.getItem('__crpg')!=document.location.href)sessionStorage.setItem('__prpg',sessionStorage.getItem('__crpg'));sessionStorage.setItem('__crpg',document.location.href);}}
window.addEventListener('load', msetref);
function BackToReferrer(){
if(typeof(Storage)!=='undefined'){var r = sessionStorage.getItem('__prpg').toLowerCase();if(r=='null'||r==document.location.href.toLowerCase()||r.search('login.xml')!=-1||r.search('logout.xml')!=-1) {
document.location.href='INDEX.XML';
}else{document.location.href=sessionStorage.getItem('__prpg');}}else{document.location.href='INDEX.XML';
}}
function onResponse() {
try {
gWatchDog++;
if(!xmlhttpGET) return;
if(xmlhttpGET.readyState != 4) return;
if(!xmlhttpGET.status) return;
if(xmlhttpGET.status != 200){
alert('Problem retrieving XML data ' + xmlhttpGET.statusText + '(' + xmlhttpGET.status + ')');
document.location.reload(true)
return;}
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1702374517) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(x[0].getAttribute('VALUE') == '0') {
SetBg('INPUT1', 'NOC.PNG');
} else {
SetBg('INPUT1', 'SLUNCE.PNG');
}
var Input2 = document.getElementById('INPUT2');
if(x[1].getAttribute('VALUE') == '0') {
SetBg('INPUT2', 'SVETLO0.PNG');
} else {
SetBg('INPUT2', 'SVETLO1.PNG');
}
var Input3 = document.getElementById('INPUT3');
if(x[2].getAttribute('VALUE') == '0') {
SetBg('INPUT3', 'SVETLO0.PNG');
} else {
SetBg('INPUT3', 'SVETLO1.PNG');
}
var Input4 = document.getElementById('INPUT4');
if(x[3].getAttribute('VALUE') == '0') {
SetBg('INPUT4', 'SVETLO0.PNG');
} else {
SetBg('INPUT4', 'SVETLO1.PNG');
}
var Input5 = document.getElementById('INPUT5');
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT5', 'SVETLO0.PNG');
} else {
SetBg('INPUT5', 'SVETLO1.PNG');
}
var Input6 = document.getElementById('INPUT6');
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT6', 'SVETLO0.PNG');
} else {
SetBg('INPUT6', 'SVETLO1.PNG');
}
var Input7 = document.getElementById('INPUT7');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT7', 'SVETLO0.PNG');
} else {
SetBg('INPUT7', 'SVETLO1.PNG');
}
var Input8 = document.getElementById('INPUT8');
if(x[6].getAttribute('VALUE') == '0') {
SetBg('INPUT8', 'SVETLO0.PNG');
} else {
SetBg('INPUT8', 'SVETLO1.PNG');
}
var Input9 = document.getElementById('INPUT9');
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT9', 'SVETLO0.PNG');
} else {
SetBg('INPUT9', 'SVETLO1.PNG');
}
var Input10 = document.getElementById('INPUT10');
if(x[8].getAttribute('VALUE') == '0') {
SetBg('INPUT10', 'SVETLO0.PNG');
} else {
SetBg('INPUT10', 'SVETLO1.PNG');
}
var Input11 = document.getElementById('INPUT11');
var Input11h = document.getElementById('INPUT11h');
if(Input11h) { vz = x[9].getAttribute('VALUE') == '0'; iz = Input11h.value == '0';
if(vz == iz) {
if(vz) {
Input11h.value = '1';
Input11.style.backgroundImage = 'url("IMAGES/SVETLO0.PNG")';
if(Input11.getAttribute('value') != null) {Input11.value = '';} else {}
} else {
Input11h.value = '0';
Input11.style.backgroundImage = 'url("IMAGES/SVETLO1.PNG")';
if(Input11.getAttribute('value') != null) {Input11.value = '';
} else {}
}}} else {
if(x[9].getAttribute('VALUE') == '0') {
SetBg('INPUT11', 'SVETLO0.PNG');
} else {
SetBg('INPUT11', 'SVETLO1.PNG');
}}
var Input12 = document.getElementById('INPUT12');
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT12', 'SVETLO0.PNG');
} else {
SetBg('INPUT12', 'SVETLO1.PNG');
}
var Input13 = document.getElementById('INPUT13');
if(x[11].getAttribute('VALUE') == '0') {
SetBg('INPUT13', 'SVETLO0.PNG');
} else {
SetBg('INPUT13', 'SVETLO1.PNG');
}
var Input14 = document.getElementById('INPUT14');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT14', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT14', 'ZAROVKA1.PNG');
}
var Input15 = document.getElementById('INPUT15');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT15', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT15', 'ZAROVKA1.PNG');
}
var Input16 = document.getElementById('INPUT16');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT16', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT16', 'ZAROVKA1.PNG');
}
var Input17 = document.getElementById('INPUT17');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT17', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT17', 'ZAROVKA1.PNG');
}
var Input18 = document.getElementById('INPUT18');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT18', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT18', 'ZAROVKA1.PNG');
}
var Input19 = document.getElementById('INPUT19');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT19', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT19', 'ZAROVKA1.PNG');
}
var Input20 = document.getElementById('INPUT20');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT20', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT20', 'ZAROVKA1.PNG');
}
var Input21 = document.getElementById('INPUT21');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT21', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT21', 'ZAROVKA1.PNG');
}
var Input22 = document.getElementById('INPUT22');
var Input22h = document.getElementById('INPUT22h');
if(Input22h) { vz = x[13].getAttribute('VALUE') == '0'; iz = Input22h.value == '0';
if(vz == iz) {
if(vz) {
Input22h.value = '1';
Input22.style.backgroundImage = 'url("IMAGES/DVERE0.PNG")';
if(Input22.getAttribute('value') != null) {Input22.value = '';} else {}
} else {
Input22h.value = '0';
Input22.style.backgroundImage = 'url("IMAGES/DVERE1.PNG")';
if(Input22.getAttribute('value') != null) {Input22.value = '';
} else {}
}}} else {
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT22', 'DVERE0.PNG');
} else {
SetBg('INPUT22', 'DVERE1.PNG');
}}
var Input23 = document.getElementById('INPUT23');
var Input23h = document.getElementById('INPUT23h');
if(Input23h) { vz = x[14].getAttribute('VALUE') == '0'; iz = Input23h.value == '0';
if(vz == iz) {
if(vz) {
Input23h.value = '1';
Input23.style.backgroundImage = 'url("IMAGES/DVERE0.PNG")';
if(Input23.getAttribute('value') != null) {Input23.value = '';} else {}
} else {
Input23h.value = '0';
Input23.style.backgroundImage = 'url("IMAGES/DVERE1.PNG")';
if(Input23.getAttribute('value') != null) {Input23.value = '';
} else {}
}}} else {
if(x[14].getAttribute('VALUE') == '0') {
SetBg('INPUT23', 'DVERE0.PNG');
} else {
SetBg('INPUT23', 'DVERE1.PNG');
}}
var Input24 = document.getElementById('INPUT24');
var Input24h = document.getElementById('INPUT24h');
if(Input24h) { vz = x[15].getAttribute('VALUE') == '0'; iz = Input24h.value == '0';
if(vz == iz) {
if(vz) {
Input24h.value = '1';
Input24.style.backgroundImage = 'url("IMAGES/DVERE0.PNG")';
if(Input24.getAttribute('value') != null) {Input24.value = '';} else {}
} else {
Input24h.value = '0';
Input24.style.backgroundImage = 'url("IMAGES/DVERE1.PNG")';
if(Input24.getAttribute('value') != null) {Input24.value = '';
} else {}
}}} else {
if(x[15].getAttribute('VALUE') == '0') {
SetBg('INPUT24', 'DVERE0.PNG');
} else {
SetBg('INPUT24', 'DVERE1.PNG');
}}
var Input25 = document.getElementById('INPUT25');
if(x[16].getAttribute('VALUE') == '0') {
SetBg('INPUT25', 'DVERE0.PNG');
} else {
SetBg('INPUT25', 'DVERE1.PNG');
}
var Input26 = document.getElementById('INPUT26');
var Input26h = document.getElementById('INPUT26h');
if(Input26h) { vz = x[17].getAttribute('VALUE') == '0'; iz = Input26h.value == '0';
if(vz == iz) {
if(vz) {
Input26h.value = '1';
Input26.style.backgroundImage = 'url("IMAGES/DVERE0.PNG")';
if(Input26.getAttribute('value') != null) {Input26.value = '';} else {}
} else {
Input26h.value = '0';
Input26.style.backgroundImage = 'url("IMAGES/DVERE1.PNG")';
if(Input26.getAttribute('value') != null) {Input26.value = '';
} else {}
}}} else {
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT26', 'DVERE0.PNG');
} else {
SetBg('INPUT26', 'DVERE1.PNG');
}}
var Input27 = document.getElementById('INPUT27');
if(x[18].getAttribute('VALUE') == '0') {
SetBg('INPUT27', 'DVERE0.PNG');
} else {
SetBg('INPUT27', 'DVERE1.PNG');
}
var Input28 = document.getElementById('INPUT28');
if(x[19].getAttribute('VALUE') == '0') {
SetBg('INPUT28', 'DVERE0.PNG');
} else {
SetBg('INPUT28', 'DVERE1.PNG');
}
var Input29 = document.getElementById('INPUT29');
var Input29h = document.getElementById('INPUT29h');
if(Input29h) { vz = x[20].getAttribute('VALUE') == '0'; iz = Input29h.value == '0';
if(vz == iz) {
if(vz) {
Input29h.value = '1';
Input29.style.backgroundImage = 'url("IMAGES/DVERE0.PNG")';
if(Input29.getAttribute('value') != null) {Input29.value = '';} else {}
} else {
Input29h.value = '0';
Input29.style.backgroundImage = 'url("IMAGES/DVERE1.PNG")';
if(Input29.getAttribute('value') != null) {Input29.value = '';
} else {}
}}} else {
if(x[20].getAttribute('VALUE') == '0') {
SetBg('INPUT29', 'DVERE0.PNG');
} else {
SetBg('INPUT29', 'DVERE1.PNG');
}}
var Input30 = document.getElementById('INPUT30');
var Input30h = document.getElementById('INPUT30h');
if(Input30h) { vz = x[21].getAttribute('VALUE') == '0'; iz = Input30h.value == '0';
if(vz == iz) {
if(vz) {
Input30h.value = '1';
Input30.style.backgroundImage = 'url("IMAGES/DVERE0.PNG")';
if(Input30.getAttribute('value') != null) {Input30.value = '';} else {}
} else {
Input30h.value = '0';
Input30.style.backgroundImage = 'url("IMAGES/DVERE1.PNG")';
if(Input30.getAttribute('value') != null) {Input30.value = '';
} else {}
}}} else {
if(x[21].getAttribute('VALUE') == '0') {
SetBg('INPUT30', 'DVERE0.PNG');
} else {
SetBg('INPUT30', 'DVERE1.PNG');
}}
var Input31 = document.getElementById('INPUT31');
if(x[22].getAttribute('VALUE') == '0') {
SetBg('INPUT31', 'GARAZ0.PNG');
} else {
SetBg('INPUT31', 'GARAZ1.PNG');
}
var Input32 = document.getElementById('INPUT32');
if(x[23].getAttribute('VALUE') == '0') {
SetBg('INPUT32', 'RADIAT_1.PNG');
} else {
SetBg('INPUT32', 'RADIAT_2.PNG');
}
var Input33 = document.getElementById('INPUT33');
if(x[23].getAttribute('VALUE') == '0') {
SetBg('INPUT33', 'RADIAT_1.PNG');
} else {
SetBg('INPUT33', 'RADIAT_2.PNG');
}
var Input34 = document.getElementById('INPUT34');
var Input34h = document.getElementById('INPUT34h');
if(Input34h) { vz = x[24].getAttribute('VALUE') == '0'; iz = Input34h.value == '0';
if(vz == iz) {
if(vz) {
Input34h.value = '1';
Input34.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input34.getAttribute('value') != null) {Input34.value = '';} else {}
} else {
Input34h.value = '0';
Input34.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input34.getAttribute('value') != null) {Input34.value = '';
} else {}
}}} else {
if(x[24].getAttribute('VALUE') == '0') {
SetBg('INPUT34', 'SPINAC0.PNG');
} else {
SetBg('INPUT34', 'SPINAC1.PNG');
}}
var Input35 = document.getElementById('INPUT35');
var Input35h = document.getElementById('INPUT35h');
if(Input35h) { vz = x[25].getAttribute('VALUE') == '0'; iz = Input35h.value == '0';
if(vz == iz) {
if(vz) {
Input35h.value = '1';
Input35.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input35.getAttribute('value') != null) {Input35.value = '';} else {}
} else {
Input35h.value = '0';
Input35.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input35.getAttribute('value') != null) {Input35.value = '';
} else {}
}}} else {
if(x[25].getAttribute('VALUE') == '0') {
SetBg('INPUT35', 'SPINAC0.PNG');
} else {
SetBg('INPUT35', 'SPINAC1.PNG');
}}
var Input36 = document.getElementById('INPUT36');
var Input36h = document.getElementById('INPUT36h');
if(Input36h) { vz = x[26].getAttribute('VALUE') == '0'; iz = Input36h.value == '0';
if(vz == iz) {
if(vz) {
Input36h.value = '1';
Input36.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input36.getAttribute('value') != null) {Input36.value = '';} else {}
} else {
Input36h.value = '0';
Input36.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input36.getAttribute('value') != null) {Input36.value = '';
} else {}
}}} else {
if(x[26].getAttribute('VALUE') == '0') {
SetBg('INPUT36', 'SPINAC0.PNG');
} else {
SetBg('INPUT36', 'SPINAC1.PNG');
}}
var Input37 = document.getElementById('INPUT37');
Input37.value = x[27].getAttribute('VALUE');
var Input38 = document.getElementById('INPUT38');
Input38.value = x[28].getAttribute('VALUE');
var Input39 = document.getElementById('INPUT39');
if(x[29].getAttribute('VALUE') == '0') {
SetBg('INPUT39', 'KLIMAT_1.PNG');
} else {
SetBg('INPUT39', 'KLIMAT_2.PNG');
}
var Input40 = document.getElementById('INPUT40');
Input40.value = x[30].getAttribute('VALUE');
var Input41 = document.getElementById('INPUT41');
Input41.value = x[31].getAttribute('VALUE');
var Input42 = document.getElementById('INPUT42');
Input42.value = x[32].getAttribute('VALUE');
var Input43 = document.getElementById('INPUT43');
if(!InputEdited[42]) {
UpdateValue(Input43, x[33], '#000000');}
var Input44 = document.getElementById('INPUT44');
if(x[34].getAttribute('VALUE') == '0') {
SetBg('INPUT44', 'ALARM0.PNG');
} else {
SetBg('INPUT44', 'ALARM1.PNG');
}
var Input45 = document.getElementById('INPUT45');
if(x[35].getAttribute('VALUE') == '0') {
SetBg('INPUT45', 'ZAMEK0.PNG');
} else {
SetBg('INPUT45', 'ZAMEK1.PNG');
}
var Input46 = document.getElementById('INPUT46');
Input46.value = x[36].getAttribute('VALUE');
var Input47 = document.getElementById('INPUT47');
var Input47h = document.getElementById('INPUT47h');
if(Input47h) { vz = x[37].getAttribute('VALUE') == '0'; iz = Input47h.value == '0';
if(vz == iz) {
if(vz) {
Input47h.value = '1';
Input47.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input47.getAttribute('value') != null) {Input47.value = '';} else {}
} else {
Input47h.value = '0';
Input47.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input47.getAttribute('value') != null) {Input47.value = '';
} else {}
}}} else {
if(x[37].getAttribute('VALUE') == '0') {
SetBg('INPUT47', 'SPINAC0.PNG');
} else {
SetBg('INPUT47', 'SPINAC1.PNG');
}}
var Input48 = document.getElementById('INPUT48');
var Input48h = document.getElementById('INPUT48h');
if(Input48h) { vz = x[38].getAttribute('VALUE') == '0'; iz = Input48h.value == '0';
if(vz == iz) {
if(vz) {
Input48h.value = '1';
Input48.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input48.getAttribute('value') != null) {Input48.value = '';} else {}
} else {
Input48h.value = '0';
Input48.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input48.getAttribute('value') != null) {Input48.value = '';
} else {}
}}} else {
if(x[38].getAttribute('VALUE') == '0') {
SetBg('INPUT48', 'SPINAC0.PNG');
} else {
SetBg('INPUT48', 'SPINAC1.PNG');
}}
var Input49 = document.getElementById('INPUT49');
var Input49h = document.getElementById('INPUT49h');
if(Input49h) { vz = x[39].getAttribute('VALUE') == '0'; iz = Input49h.value == '0';
if(vz == iz) {
if(vz) {
Input49h.value = '1';
Input49.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input49.getAttribute('value') != null) {Input49.value = '';} else {}
} else {
Input49h.value = '0';
Input49.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input49.getAttribute('value') != null) {Input49.value = '';
} else {}
}}} else {
if(x[39].getAttribute('VALUE') == '0') {
SetBg('INPUT49', 'SPINAC0.PNG');
} else {
SetBg('INPUT49', 'SPINAC1.PNG');
}}
var Input50 = document.getElementById('INPUT50');
var Input50h = document.getElementById('INPUT50h');
if(Input50h) { vz = x[40].getAttribute('VALUE') == '0'; iz = Input50h.value == '0';
if(vz == iz) {
if(vz) {
Input50h.value = '1';
Input50.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input50.getAttribute('value') != null) {Input50.value = '';} else {}
} else {
Input50h.value = '0';
Input50.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input50.getAttribute('value') != null) {Input50.value = '';
} else {}
}}} else {
if(x[40].getAttribute('VALUE') == '0') {
SetBg('INPUT50', 'SPINAC0.PNG');
} else {
SetBg('INPUT50', 'SPINAC1.PNG');
}}
var Input51 = document.getElementById('INPUT51');
Input51.value = x[41].getAttribute('VALUE');
var Input52 = document.getElementById('INPUT52');
Input52.value = x[42].getAttribute('VALUE');
var Input53 = document.getElementById('INPUT53');
var Input53h = document.getElementById('INPUT53h');
if(Input53h) { vz = x[43].getAttribute('VALUE') == '0'; iz = Input53h.value == '0';
if(vz == iz) {
if(vz) {
Input53h.value = '1';
Input53.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input53.getAttribute('value') != null) {Input53.value = '';} else {}
} else {
Input53h.value = '0';
Input53.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input53.getAttribute('value') != null) {Input53.value = '';
} else {}
}}} else {
if(x[43].getAttribute('VALUE') == '0') {
SetBg('INPUT53', 'SPINAC0.PNG');
} else {
SetBg('INPUT53', 'SPINAC1.PNG');
}}
var Input54 = document.getElementById('INPUT54');
var Input54h = document.getElementById('INPUT54h');
if(Input54h) { vz = x[44].getAttribute('VALUE') == '0'; iz = Input54h.value == '0';
if(vz == iz) {
if(vz) {
Input54h.value = '1';
Input54.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input54.getAttribute('value') != null) {Input54.value = '';} else {}
} else {
Input54h.value = '0';
Input54.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input54.getAttribute('value') != null) {Input54.value = '';
} else {}
}}} else {
if(x[44].getAttribute('VALUE') == '0') {
SetBg('INPUT54', 'SPINAC0.PNG');
} else {
SetBg('INPUT54', 'SPINAC1.PNG');
}}
var Input55 = document.getElementById('INPUT55');
var Input55h = document.getElementById('INPUT55h');
if(Input55h) { vz = x[45].getAttribute('VALUE') == '0'; iz = Input55h.value == '0';
if(vz == iz) {
if(vz) {
Input55h.value = '1';
Input55.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input55.getAttribute('value') != null) {Input55.value = '';} else {}
} else {
Input55h.value = '0';
Input55.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input55.getAttribute('value') != null) {Input55.value = '';
} else {}
}}} else {
if(x[45].getAttribute('VALUE') == '0') {
SetBg('INPUT55', 'SPINAC0.PNG');
} else {
SetBg('INPUT55', 'SPINAC1.PNG');
}}
var Input56 = document.getElementById('INPUT56');
var Input56h = document.getElementById('INPUT56h');
if(Input56h) { vz = x[46].getAttribute('VALUE') == '0'; iz = Input56h.value == '0';
if(vz == iz) {
if(vz) {
Input56h.value = '1';
Input56.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input56.getAttribute('value') != null) {Input56.value = '';} else {}
} else {
Input56h.value = '0';
Input56.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input56.getAttribute('value') != null) {Input56.value = '';
} else {}
}}} else {
if(x[46].getAttribute('VALUE') == '0') {
SetBg('INPUT56', 'SPINAC0.PNG');
} else {
SetBg('INPUT56', 'SPINAC1.PNG');
}}
var Input57 = document.getElementById('INPUT57');
var Input57h = document.getElementById('INPUT57h');
if(Input57h) { vz = x[47].getAttribute('VALUE') == '0'; iz = Input57h.value == '0';
if(vz == iz) {
if(vz) {
Input57h.value = '1';
Input57.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input57.getAttribute('value') != null) {Input57.value = '';} else {}
} else {
Input57h.value = '0';
Input57.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input57.getAttribute('value') != null) {Input57.value = '';
} else {}
}}} else {
if(x[47].getAttribute('VALUE') == '0') {
SetBg('INPUT57', 'SPINAC0.PNG');
} else {
SetBg('INPUT57', 'SPINAC1.PNG');
}}
var Input58 = document.getElementById('INPUT58');
var Input58h = document.getElementById('INPUT58h');
if(Input58h) { vz = x[48].getAttribute('VALUE') == '0'; iz = Input58h.value == '0';
if(vz == iz) {
if(vz) {
Input58h.value = '1';
Input58.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input58.getAttribute('value') != null) {Input58.value = '';} else {}
} else {
Input58h.value = '0';
Input58.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input58.getAttribute('value') != null) {Input58.value = '';
} else {}
}}} else {
if(x[48].getAttribute('VALUE') == '0') {
SetBg('INPUT58', 'SPINAC0.PNG');
} else {
SetBg('INPUT58', 'SPINAC1.PNG');
}}
var Input59 = document.getElementById('INPUT59');
var Input59h = document.getElementById('INPUT59h');
if(Input59h) { vz = x[49].getAttribute('VALUE') == '0'; iz = Input59h.value == '0';
if(vz == iz) {
if(vz) {
Input59h.value = '1';
Input59.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input59.getAttribute('value') != null) {Input59.value = '';} else {}
} else {
Input59h.value = '0';
Input59.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input59.getAttribute('value') != null) {Input59.value = '';
} else {}
}}} else {
if(x[49].getAttribute('VALUE') == '0') {
SetBg('INPUT59', 'SPINAC0.PNG');
} else {
SetBg('INPUT59', 'SPINAC1.PNG');
}}
var Input60 = document.getElementById('INPUT60');
var Input60h = document.getElementById('INPUT60h');
if(Input60h) { vz = x[50].getAttribute('VALUE') == '0'; iz = Input60h.value == '0';
if(vz == iz) {
if(vz) {
Input60h.value = '1';
Input60.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input60.getAttribute('value') != null) {Input60.value = '';} else {}
} else {
Input60h.value = '0';
Input60.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input60.getAttribute('value') != null) {Input60.value = '';
} else {}
}}} else {
if(x[50].getAttribute('VALUE') == '0') {
SetBg('INPUT60', 'SPINAC0.PNG');
} else {
SetBg('INPUT60', 'SPINAC1.PNG');
}}
var Input61 = document.getElementById('INPUT61');
var Input61h = document.getElementById('INPUT61h');
if(Input61h) { vz = x[51].getAttribute('VALUE') == '0'; iz = Input61h.value == '0';
if(vz == iz) {
if(vz) {
Input61h.value = '1';
Input61.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input61.getAttribute('value') != null) {Input61.value = '';} else {}
} else {
Input61h.value = '0';
Input61.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input61.getAttribute('value') != null) {Input61.value = '';
} else {}
}}} else {
if(x[51].getAttribute('VALUE') == '0') {
SetBg('INPUT61', 'SPINAC0.PNG');
} else {
SetBg('INPUT61', 'SPINAC1.PNG');
}}
var Input62 = document.getElementById('INPUT62');
var Input62h = document.getElementById('INPUT62h');
if(Input62h) { vz = x[52].getAttribute('VALUE') == '0'; iz = Input62h.value == '0';
if(vz == iz) {
if(vz) {
Input62h.value = '1';
Input62.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input62.getAttribute('value') != null) {Input62.value = '';} else {}
} else {
Input62h.value = '0';
Input62.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input62.getAttribute('value') != null) {Input62.value = '';
} else {}
}}} else {
if(x[52].getAttribute('VALUE') == '0') {
SetBg('INPUT62', 'SPINAC0.PNG');
} else {
SetBg('INPUT62', 'SPINAC1.PNG');
}}
var Input63 = document.getElementById('INPUT63');
var Input63h = document.getElementById('INPUT63h');
if(Input63h) { vz = x[53].getAttribute('VALUE') == '0'; iz = Input63h.value == '0';
if(vz == iz) {
if(vz) {
Input63h.value = '1';
Input63.style.backgroundImage = 'url("IMAGES/SPINAC0.PNG")';
if(Input63.getAttribute('value') != null) {Input63.value = '';} else {}
} else {
Input63h.value = '0';
Input63.style.backgroundImage = 'url("IMAGES/SPINAC1.PNG")';
if(Input63.getAttribute('value') != null) {Input63.value = '';
} else {}
}}} else {
if(x[53].getAttribute('VALUE') == '0') {
SetBg('INPUT63', 'SPINAC0.PNG');
} else {
SetBg('INPUT63', 'SPINAC1.PNG');
}}
var Input64 = document.getElementById('INPUT64');
if(x[34].getAttribute('VALUE') == '0') {
SetBg('INPUT64', 'ALARM0.PNG');
} else {
SetBg('INPUT64', 'ALARM1.PNG');
}
var Input65 = document.getElementById('INPUT65');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT65', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT65', 'ZAROVKA1.PNG');
}
var Input66 = document.getElementById('INPUT66');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT66', 'ZAROVKA0.PNG');
} else {
SetBg('INPUT66', 'ZAROVKA1.PNG');
}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('PAGE1.XML','"+pd+"')",1);}else{setTimeout("GetXML('PAGE1.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}

function PostXML11() {
var Input11h = document.getElementById('INPUT11h');
PostXML('PAGE1.XML', encodeURIComponent(Input11h.name+'='+Input11h.value));
}
function PostXML22() {
var Input22h = document.getElementById('INPUT22h');
PostXML('PAGE1.XML', encodeURIComponent(Input22h.name+'='+Input22h.value));
}
function PostXML23() {
var Input23h = document.getElementById('INPUT23h');
PostXML('PAGE1.XML', encodeURIComponent(Input23h.name+'='+Input23h.value));
}
function PostXML24() {
var Input24h = document.getElementById('INPUT24h');
PostXML('PAGE1.XML', encodeURIComponent(Input24h.name+'='+Input24h.value));
}
function PostXML26() {
var Input26h = document.getElementById('INPUT26h');
PostXML('PAGE1.XML', encodeURIComponent(Input26h.name+'='+Input26h.value));
}
function PostXML29() {
var Input29h = document.getElementById('INPUT29h');
PostXML('PAGE1.XML', encodeURIComponent(Input29h.name+'='+Input29h.value));
}
function PostXML30() {
var Input30h = document.getElementById('INPUT30h');
PostXML('PAGE1.XML', encodeURIComponent(Input30h.name+'='+Input30h.value));
}
function PostXML34() {
var Input34h = document.getElementById('INPUT34h');
PostXML('PAGE1.XML', encodeURIComponent(Input34h.name+'='+Input34h.value));
}
function PostXML35() {
var Input35h = document.getElementById('INPUT35h');
PostXML('PAGE1.XML', encodeURIComponent(Input35h.name+'='+Input35h.value));
}
function PostXML36() {
var Input36h = document.getElementById('INPUT36h');
PostXML('PAGE1.XML', encodeURIComponent(Input36h.name+'='+Input36h.value));
}
function PostXML43() {
var Input43 = document.getElementById('INPUT43');
document.getElementById('INPUT43x').style.visibility = 'hidden';if(InputEdited[42]) {
PostXML('PAGE1.XML', encodeURIComponent(Input43.name+'='+Input43.value)); InputEdited[42] = 0;
}
}
function PostXML47() {
var Input47h = document.getElementById('INPUT47h');
PostXML('PAGE1.XML', encodeURIComponent(Input47h.name+'='+Input47h.value));
}
function PostXML48() {
var Input48h = document.getElementById('INPUT48h');
PostXML('PAGE1.XML', encodeURIComponent(Input48h.name+'='+Input48h.value));
}
function PostXML49() {
var Input49h = document.getElementById('INPUT49h');
PostXML('PAGE1.XML', encodeURIComponent(Input49h.name+'='+Input49h.value));
}
function PostXML50() {
var Input50h = document.getElementById('INPUT50h');
PostXML('PAGE1.XML', encodeURIComponent(Input50h.name+'='+Input50h.value));
}
function PostXML53() {
var Input53h = document.getElementById('INPUT53h');
PostXML('PAGE1.XML', encodeURIComponent(Input53h.name+'='+Input53h.value));
}
function PostXML54() {
var Input54h = document.getElementById('INPUT54h');
PostXML('PAGE1.XML', encodeURIComponent(Input54h.name+'='+Input54h.value));
}
function PostXML55() {
var Input55h = document.getElementById('INPUT55h');
PostXML('PAGE1.XML', encodeURIComponent(Input55h.name+'='+Input55h.value));
}
function PostXML56() {
var Input56h = document.getElementById('INPUT56h');
PostXML('PAGE1.XML', encodeURIComponent(Input56h.name+'='+Input56h.value));
}
function PostXML57() {
var Input57h = document.getElementById('INPUT57h');
PostXML('PAGE1.XML', encodeURIComponent(Input57h.name+'='+Input57h.value));
}
function PostXML58() {
var Input58h = document.getElementById('INPUT58h');
PostXML('PAGE1.XML', encodeURIComponent(Input58h.name+'='+Input58h.value));
}
function PostXML59() {
var Input59h = document.getElementById('INPUT59h');
PostXML('PAGE1.XML', encodeURIComponent(Input59h.name+'='+Input59h.value));
}
function PostXML60() {
var Input60h = document.getElementById('INPUT60h');
PostXML('PAGE1.XML', encodeURIComponent(Input60h.name+'='+Input60h.value));
}
function PostXML61() {
var Input61h = document.getElementById('INPUT61h');
PostXML('PAGE1.XML', encodeURIComponent(Input61h.name+'='+Input61h.value));
}
function PostXML62() {
var Input62h = document.getElementById('INPUT62h');
PostXML('PAGE1.XML', encodeURIComponent(Input62h.name+'='+Input62h.value));
}
function PostXML63() {
var Input63h = document.getElementById('INPUT63h');
PostXML('PAGE1.XML', encodeURIComponent(Input63h.name+'='+Input63h.value));
}

function PostGlobal() {
}
