<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=1341" />
<meta name="generator" content="WebMaker" />
<meta name="author" content="Teco a.s." />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link rel="shortcut icon" href="FAVICON.ICO" type="image/x-icon" />
<link href="STYLE.CSS" rel="stylesheet" type="text/css" />
<title>
<xsl:value-of select="/PAGE/@TITLE" />
Index</title>
<script src="PAGE1.JS?U=1702374517" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('PAGE1.XML'); FunWatchDog();">
<xsl:if test="1702374517 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1702374517 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr style="height: 40px;">
<!--logo-->
<td id="top_left">
<div id="top_left_div" style="width: 150px;"></div>
&#160;</td>
<!--title-->
<td id="top">
<span id="title">
<xsl:value-of select="/PAGE/@TITLE" />
Index</span>
</td>
</tr>
<tr>
<!--menu-->
<td id="menu">
<div class="pages">
<a href="PAGE1.XML">Index</a>
<br />
</div>
<br />
<div class="pages">
<a href="logout.xml">Logout</a>
</div>
</td>
<!--plan-->
<td id="page">
<div style="background-color:#FFFFFF;position: relative; width: 1165px; height: 609px;">
<form action="javascript:PostGlobal();">
<input class="mono" tabindex="1" type="text" id="INPUT37" style="position: absolute; top: 250px; left: 300px; width: 58px; z-index: 40; background-color: #FFFFFF;" value="{INPUT[28]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="8" type="text" id="INPUT38" style="position: absolute; top: 60px; left: 10px; width: 58px; z-index: 41; background-color: #FFFFFF;" value="{INPUT[29]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="7" type="text" id="INPUT40" style="position: absolute; top: 255px; left: 870px; width: 58px; z-index: 43; background-color: #FFFFFF;" value="{INPUT[31]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="2" type="text" id="INPUT41" style="position: absolute; top: 255px; left: 1020px; width: 58px; z-index: 44; background-color: #FFFFFF;" value="{INPUT[32]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="4" type="text" id="INPUT42" style="position: absolute; top: 565px; left: 945px; width: 112px; z-index: 45; background-color: #FFFFFF;" value="{INPUT[33]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="3" type="text" id="INPUT46" style="position: absolute; top: 30px; left: 920px; width: 76px; z-index: 49; background-color: #FFFFFF;" value="{INPUT[37]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="5" type="text" id="INPUT51" style="position: absolute; top: 220px; left: 900px; width: 130px; z-index: 54; background-color: #FFFFFF;" value="{INPUT[42]/@VALUE}" readonly="readonly" />
<input class="mono" tabindex="6" type="text" id="INPUT52" style="position: absolute; top: 5px; left: 885px; width: 148px; z-index: 55; background-color: #FFFFFF;" value="{INPUT[43]/@VALUE}" readonly="readonly" />
</form>
<div style="position: absolute; top: 0px; left: 0px; z-index: 1; background-image: url(IMAGES/TRAVA2.JPG); line-height: 535px; height: 535px; width: 800px;"></div>
<div style="position: absolute; top: 0px; left: 800px; z-index: 2;height: 598px; width: 298px; border: 1px solid #000000; background-color: #F0F0F0;"></div>
<div style="position: absolute; top: 0px; left: 170px; z-index: 3; background-image: url(IMAGES/BACKGR_1.PNG); line-height: 499px; height: 499px; width: 511px;"></div>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 5px; left: 15px; z-index: 4; background-image: url(IMAGES/NOC.PNG); line-height: 50px; height: 50px; width: 50px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 5px; left: 15px; z-index: 4; background-image: url(IMAGES/SLUNCE.PNG); line-height: 48px; height: 48px; width: 48px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 60px; left: 225px; z-index: 5; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 60px; left: 225px; z-index: 5; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 150px; left: 250px; z-index: 6; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 150px; left: 250px; z-index: 6; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 45px; left: 525px; z-index: 7; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 45px; left: 525px; z-index: 7; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 265px; left: 225px; z-index: 8; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 265px; left: 225px; z-index: 8; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 155px; left: 370px; z-index: 9; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 155px; left: 370px; z-index: 9; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 350px; left: 455px; z-index: 10; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 350px; left: 455px; z-index: 10; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT8" style="position: absolute; top: 400px; left: 260px; z-index: 11; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT8" style="position: absolute; top: 400px; left: 260px; z-index: 11; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT9" style="position: absolute; top: 245px; left: 380px; z-index: 12; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT9" style="position: absolute; top: 245px; left: 380px; z-index: 12; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT10" style="position: absolute; top: 125px; left: 480px; z-index: 13; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT10" style="position: absolute; top: 125px; left: 480px; z-index: 13; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<form style="position: absolute; top: 250px; left: 480px; z-index: 14;">
<xsl:if test="INPUT[10]/@VALUE = 0">
<input id="INPUT11h" type="hidden" name="{INPUT[10]/@NAME}" value="1" />
<div id="INPUT11" class="imgsub" onclick="PostXML11()" style="background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<input id="INPUT11h" type="hidden" name="{INPUT[10]/@NAME}" value="0" />
<div id="INPUT11" class="imgsub" onclick="PostXML11()" style="background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT12" style="position: absolute; top: 195px; left: 445px; z-index: 15; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT12" style="position: absolute; top: 195px; left: 445px; z-index: 15; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT13" style="position: absolute; top: 35px; left: 375px; z-index: 16; background-image: url(IMAGES/SVETLO0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT13" style="position: absolute; top: 35px; left: 375px; z-index: 16; background-image: url(IMAGES/SVETLO1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT14" style="position: absolute; top: 15px; left: 90px; z-index: 17; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT14" style="position: absolute; top: 15px; left: 90px; z-index: 17; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT15" style="position: absolute; top: 195px; left: 85px; z-index: 18; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT15" style="position: absolute; top: 195px; left: 85px; z-index: 18; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT16" style="position: absolute; top: 465px; left: 445px; z-index: 19; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT16" style="position: absolute; top: 465px; left: 445px; z-index: 19; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 320px; left: 85px; z-index: 20; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT17" style="position: absolute; top: 320px; left: 85px; z-index: 20; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 440px; left: 610px; z-index: 21; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 440px; left: 610px; z-index: 21; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 320px; left: 620px; z-index: 22; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 320px; left: 620px; z-index: 22; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 65px; left: 705px; z-index: 23; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 65px; left: 705px; z-index: 23; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 215px; left: 680px; z-index: 24; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 215px; left: 680px; z-index: 24; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<form style="position: absolute; top: 135px; left: 295px; z-index: 25;">
<xsl:if test="INPUT[14]/@VALUE = 0">
<input id="INPUT22h" type="hidden" name="{INPUT[14]/@NAME}" value="1" />
<div id="INPUT22" class="imgsub" onclick="PostXML22()" style="background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<input id="INPUT22h" type="hidden" name="{INPUT[14]/@NAME}" value="0" />
<div id="INPUT22" class="imgsub" onclick="PostXML22()" style="background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 65px; left: 285px; z-index: 26;">
<xsl:if test="INPUT[15]/@VALUE = 0">
<input id="INPUT23h" type="hidden" name="{INPUT[15]/@NAME}" value="1" />
<div id="INPUT23" class="imgsub" onclick="PostXML23()" style="background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<input id="INPUT23h" type="hidden" name="{INPUT[15]/@NAME}" value="0" />
<div id="INPUT23" class="imgsub" onclick="PostXML23()" style="background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 100px; left: 385px; z-index: 27;">
<xsl:if test="INPUT[16]/@VALUE = 0">
<input id="INPUT24h" type="hidden" name="{INPUT[16]/@NAME}" value="1" />
<div id="INPUT24" class="imgsub" onclick="PostXML24()" style="background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<input id="INPUT24h" type="hidden" name="{INPUT[16]/@NAME}" value="0" />
<div id="INPUT24" class="imgsub" onclick="PostXML24()" style="background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT25" style="position: absolute; top: 135px; left: 560px; z-index: 28; background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT25" style="position: absolute; top: 135px; left: 560px; z-index: 28; background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<form style="position: absolute; top: 270px; left: 410px; z-index: 29;">
<xsl:if test="INPUT[18]/@VALUE = 0">
<input id="INPUT26h" type="hidden" name="{INPUT[18]/@NAME}" value="1" />
<div id="INPUT26" class="imgsub" onclick="PostXML26()" style="background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<input id="INPUT26h" type="hidden" name="{INPUT[18]/@NAME}" value="0" />
<div id="INPUT26" class="imgsub" onclick="PostXML26()" style="background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div id="INPUT27" style="position: absolute; top: 205px; left: 535px; z-index: 30; background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div id="INPUT27" style="position: absolute; top: 205px; left: 535px; z-index: 30; background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE = 0">
<div id="INPUT28" style="position: absolute; top: 350px; left: 340px; z-index: 31; background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div id="INPUT28" style="position: absolute; top: 350px; left: 340px; z-index: 31; background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<form style="position: absolute; top: 225px; left: 485px; z-index: 32;">
<xsl:if test="INPUT[21]/@VALUE = 0">
<input id="INPUT29h" type="hidden" name="{INPUT[21]/@NAME}" value="1" />
<div id="INPUT29" class="imgsub" onclick="PostXML29()" style="background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE != 0">
<input id="INPUT29h" type="hidden" name="{INPUT[21]/@NAME}" value="0" />
<div id="INPUT29" class="imgsub" onclick="PostXML29()" style="background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 170px; left: 480px; z-index: 33;">
<xsl:if test="INPUT[22]/@VALUE = 0">
<input id="INPUT30h" type="hidden" name="{INPUT[22]/@NAME}" value="1" />
<div id="INPUT30" class="imgsub" onclick="PostXML30()" style="background-image: url(IMAGES/DVERE0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<input id="INPUT30h" type="hidden" name="{INPUT[22]/@NAME}" value="0" />
<div id="INPUT30" class="imgsub" onclick="PostXML30()" style="background-image: url(IMAGES/DVERE1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[23]/@VALUE = 0">
<div id="INPUT31" style="position: absolute; top: 35px; left: 620px; z-index: 34; background-image: url(IMAGES/GARAZ0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<div id="INPUT31" style="position: absolute; top: 35px; left: 620px; z-index: 34; background-image: url(IMAGES/GARAZ1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE = 0">
<div id="INPUT32" style="position: absolute; top: 295px; left: 300px; z-index: 35; background-image: url(IMAGES/RADIAT_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div id="INPUT32" style="position: absolute; top: 295px; left: 300px; z-index: 35; background-image: url(IMAGES/RADIAT_2.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE = 0">
<div id="INPUT33" style="position: absolute; top: 25px; left: 200px; z-index: 36; background-image: url(IMAGES/RADIAT_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<div id="INPUT33" style="position: absolute; top: 25px; left: 200px; z-index: 36; background-image: url(IMAGES/RADIAT_2.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<form style="position: absolute; top: 235px; left: 800px; z-index: 37;">
<xsl:if test="INPUT[25]/@VALUE = 0">
<input id="INPUT34h" type="hidden" name="{INPUT[25]/@NAME}" value="1" />
<div id="INPUT34" class="imgsub" onclick="PostXML34()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[25]/@VALUE != 0">
<input id="INPUT34h" type="hidden" name="{INPUT[25]/@NAME}" value="0" />
<div id="INPUT34" class="imgsub" onclick="PostXML34()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 235px; left: 940px; z-index: 38;">
<xsl:if test="INPUT[26]/@VALUE = 0">
<input id="INPUT35h" type="hidden" name="{INPUT[26]/@NAME}" value="1" />
<div id="INPUT35" class="imgsub" onclick="PostXML35()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[26]/@VALUE != 0">
<input id="INPUT35h" type="hidden" name="{INPUT[26]/@NAME}" value="0" />
<div id="INPUT35" class="imgsub" onclick="PostXML35()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 545px; left: 865px; z-index: 39;">
<xsl:if test="INPUT[27]/@VALUE = 0">
<input id="INPUT36h" type="hidden" name="{INPUT[27]/@NAME}" value="1" />
<div id="INPUT36" class="imgsub" onclick="PostXML36()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[27]/@VALUE != 0">
<input id="INPUT36h" type="hidden" name="{INPUT[27]/@NAME}" value="0" />
<div id="INPUT36" class="imgsub" onclick="PostXML36()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[30]/@VALUE = 0">
<div id="INPUT39" style="position: absolute; top: 100px; left: 135px; z-index: 42; background-image: url(IMAGES/KLIMAT_1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[30]/@VALUE != 0">
<div id="INPUT39" style="position: absolute; top: 100px; left: 135px; z-index: 42; background-image: url(IMAGES/KLIMAT_2.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<form action="javascript:PostXML43()" style="position: absolute; top: 55px; left: 930px; z-index: 46; font-size: 13px;">
<input id="INPUT43" onfocus="document.getElementById('INPUT43x').style.visibility='visible';SetInputEdited(43, event);" onblur="InputFocused[42]=0" onkeydown="SetInputEdited(43, event);" class="mono" tabindex="9" type="text" style="width: 31px; background-color: #FFFFFF;" name="{INPUT[34]/@NAME}" value="{INPUT[34]/@VALUE}" />
<input type="submit" id="INPUT43x" style="position: absolute; top: 0px; height: 22px; width: 22px; visibility: hidden;" value="&gt;" />
</form>
<xsl:if test="INPUT[35]/@VALUE = 0">
<div id="INPUT44" style="position: absolute; top: 105px; left: 800px; z-index: 47; background-image: url(IMAGES/ALARM0.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:if>
<xsl:if test="INPUT[35]/@VALUE != 0">
<div id="INPUT44" style="position: absolute; top: 105px; left: 800px; z-index: 47; background-image: url(IMAGES/ALARM1.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE = 0">
<div id="INPUT45" style="position: absolute; top: 85px; left: 890px; z-index: 48; background-image: url(IMAGES/ZAMEK0.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<xsl:if test="INPUT[36]/@VALUE != 0">
<div id="INPUT45" style="position: absolute; top: 85px; left: 890px; z-index: 48; background-image: url(IMAGES/ZAMEK1.PNG); line-height: 128px; height: 128px; width: 128px;"></div>
</xsl:if>
<form style="position: absolute; top: 155px; left: 615px; z-index: 50;">
<xsl:if test="INPUT[38]/@VALUE = 0">
<input id="INPUT47h" type="hidden" name="{INPUT[38]/@NAME}" value="1" />
<div id="INPUT47" class="imgsub" onclick="PostXML47()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[38]/@VALUE != 0">
<input id="INPUT47h" type="hidden" name="{INPUT[38]/@NAME}" value="0" />
<div id="INPUT47" class="imgsub" onclick="PostXML47()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 0px; left: 630px; z-index: 51;">
<xsl:if test="INPUT[39]/@VALUE = 0">
<input id="INPUT48h" type="hidden" name="{INPUT[39]/@NAME}" value="1" />
<div id="INPUT48" class="imgsub" onclick="PostXML48()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[39]/@VALUE != 0">
<input id="INPUT48h" type="hidden" name="{INPUT[39]/@NAME}" value="0" />
<div id="INPUT48" class="imgsub" onclick="PostXML48()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 210px; left: 585px; z-index: 52;">
<xsl:if test="INPUT[40]/@VALUE = 0">
<input id="INPUT49h" type="hidden" name="{INPUT[40]/@NAME}" value="1" />
<div id="INPUT49" class="imgsub" onclick="PostXML49()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[40]/@VALUE != 0">
<input id="INPUT49h" type="hidden" name="{INPUT[40]/@NAME}" value="0" />
<div id="INPUT49" class="imgsub" onclick="PostXML49()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 360px; left: 285px; z-index: 53;">
<xsl:if test="INPUT[41]/@VALUE = 0">
<input id="INPUT50h" type="hidden" name="{INPUT[41]/@NAME}" value="1" />
<div id="INPUT50" class="imgsub" onclick="PostXML50()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[41]/@VALUE != 0">
<input id="INPUT50h" type="hidden" name="{INPUT[41]/@NAME}" value="0" />
<div id="INPUT50" class="imgsub" onclick="PostXML50()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<div style="position: absolute; top: 285px; left: 765px; z-index: 56; background-image: url(IMAGES/BACKGR_2.PNG); line-height: 250px; height: 250px; width: 400px;"></div>
<form style="position: absolute; top: 485px; left: 900px; z-index: 57;">
<xsl:if test="INPUT[44]/@VALUE = 0">
<input id="INPUT53h" type="hidden" name="{INPUT[44]/@NAME}" value="1" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[44]/@VALUE != 0">
<input id="INPUT53h" type="hidden" name="{INPUT[44]/@NAME}" value="0" />
<div id="INPUT53" class="imgsub" onclick="PostXML53()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 460px; left: 980px; z-index: 58;">
<xsl:if test="INPUT[45]/@VALUE = 0">
<input id="INPUT54h" type="hidden" name="{INPUT[45]/@NAME}" value="1" />
<div id="INPUT54" class="imgsub" onclick="PostXML54()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[45]/@VALUE != 0">
<input id="INPUT54h" type="hidden" name="{INPUT[45]/@NAME}" value="0" />
<div id="INPUT54" class="imgsub" onclick="PostXML54()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 405px; left: 990px; z-index: 59;">
<xsl:if test="INPUT[46]/@VALUE = 0">
<input id="INPUT55h" type="hidden" name="{INPUT[46]/@NAME}" value="1" />
<div id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[46]/@VALUE != 0">
<input id="INPUT55h" type="hidden" name="{INPUT[46]/@NAME}" value="0" />
<div id="INPUT55" class="imgsub" onclick="PostXML55()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 375px; left: 990px; z-index: 60;">
<xsl:if test="INPUT[47]/@VALUE = 0">
<input id="INPUT56h" type="hidden" name="{INPUT[47]/@NAME}" value="1" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[47]/@VALUE != 0">
<input id="INPUT56h" type="hidden" name="{INPUT[47]/@NAME}" value="0" />
<div id="INPUT56" class="imgsub" onclick="PostXML56()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 340px; left: 985px; z-index: 61;">
<xsl:if test="INPUT[48]/@VALUE = 0">
<input id="INPUT57h" type="hidden" name="{INPUT[48]/@NAME}" value="1" />
<div id="INPUT57" class="imgsub" onclick="PostXML57()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[48]/@VALUE != 0">
<input id="INPUT57h" type="hidden" name="{INPUT[48]/@NAME}" value="0" />
<div id="INPUT57" class="imgsub" onclick="PostXML57()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 290px; left: 1010px; z-index: 62;">
<xsl:if test="INPUT[49]/@VALUE = 0">
<input id="INPUT58h" type="hidden" name="{INPUT[49]/@NAME}" value="1" />
<div id="INPUT58" class="imgsub" onclick="PostXML58()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[49]/@VALUE != 0">
<input id="INPUT58h" type="hidden" name="{INPUT[49]/@NAME}" value="0" />
<div id="INPUT58" class="imgsub" onclick="PostXML58()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 285px; left: 930px; z-index: 63;">
<xsl:if test="INPUT[50]/@VALUE = 0">
<input id="INPUT59h" type="hidden" name="{INPUT[50]/@NAME}" value="1" />
<div id="INPUT59" class="imgsub" onclick="PostXML59()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[50]/@VALUE != 0">
<input id="INPUT59h" type="hidden" name="{INPUT[50]/@NAME}" value="0" />
<div id="INPUT59" class="imgsub" onclick="PostXML59()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 290px; left: 855px; z-index: 64;">
<xsl:if test="INPUT[51]/@VALUE = 0">
<input id="INPUT60h" type="hidden" name="{INPUT[51]/@NAME}" value="1" />
<div id="INPUT60" class="imgsub" onclick="PostXML60()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[51]/@VALUE != 0">
<input id="INPUT60h" type="hidden" name="{INPUT[51]/@NAME}" value="0" />
<div id="INPUT60" class="imgsub" onclick="PostXML60()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 345px; left: 855px; z-index: 65;">
<xsl:if test="INPUT[52]/@VALUE = 0">
<input id="INPUT61h" type="hidden" name="{INPUT[52]/@NAME}" value="1" />
<div id="INPUT61" class="imgsub" onclick="PostXML61()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[52]/@VALUE != 0">
<input id="INPUT61h" type="hidden" name="{INPUT[52]/@NAME}" value="0" />
<div id="INPUT61" class="imgsub" onclick="PostXML61()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 405px; left: 930px; z-index: 66;">
<xsl:if test="INPUT[53]/@VALUE = 0">
<input id="INPUT62h" type="hidden" name="{INPUT[53]/@NAME}" value="1" />
<div id="INPUT62" class="imgsub" onclick="PostXML62()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[53]/@VALUE != 0">
<input id="INPUT62h" type="hidden" name="{INPUT[53]/@NAME}" value="0" />
<div id="INPUT62" class="imgsub" onclick="PostXML62()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 405px; left: 860px; z-index: 67;">
<xsl:if test="INPUT[54]/@VALUE = 0">
<input id="INPUT63h" type="hidden" name="{INPUT[54]/@NAME}" value="1" />
<div id="INPUT63" class="imgsub" onclick="PostXML63()" style="background-image: url(IMAGES/SPINAC0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[54]/@VALUE != 0">
<input id="INPUT63h" type="hidden" name="{INPUT[54]/@NAME}" value="0" />
<div id="INPUT63" class="imgsub" onclick="PostXML63()" style="background-image: url(IMAGES/SPINAC1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</form>
<xsl:if test="INPUT[35]/@VALUE = 0">
<div id="INPUT64" style="position: absolute; top: 110px; left: 1005px; z-index: 68; background-image: url(IMAGES/ALARM0.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:if>
<xsl:if test="INPUT[35]/@VALUE != 0">
<div id="INPUT64" style="position: absolute; top: 110px; left: 1005px; z-index: 68; background-image: url(IMAGES/ALARM1.PNG); line-height: 100px; height: 100px; width: 100px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT65" style="position: absolute; top: 470px; left: 280px; z-index: 69; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT65" style="position: absolute; top: 470px; left: 280px; z-index: 69; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT66" style="position: absolute; top: 470px; left: 90px; z-index: 70; background-image: url(IMAGES/ZAROVKA0.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT66" style="position: absolute; top: 470px; left: 90px; z-index: 70; background-image: url(IMAGES/ZAROVKA1.PNG); line-height: 64px; height: 64px; width: 64px;"></div>
</xsl:if>
</div>
</td>
</tr>
<!--bottom-->
<tr style="height: 10px;">
<td id="bottom" colspan="2" style="text-align: center">© 2007 - 2020 Teco a.s.</td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
