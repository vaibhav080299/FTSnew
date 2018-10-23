<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.a1
{
height:6%;width:100%;margin-top:3%;

background-color:lightgray;color:black;
}
.a2
{
height:6%;width:100%;margin-top:-2%;

background-color:rgb(17,87,48);color:black;
}

.a3
{
height:65%;width:55%;position:absolute;
left:316px;
top:111px;

background-color:lightgray;color:black;
}




</style>
<script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>

							 <script language="JavaScript">

//////////F12 disable code////////////////////////
    document.onkeypress = function (event) {
        event = (event || window.event);
        if (event.keyCode == 123) {
           //alert('No F-12');
            return false;
        }
    }
    document.onmousedown = function (event) {
        event = (event || window.event);
        if (event.keyCode == 123) {
            //alert('No F-keys');
            return false;
        }
    }
document.onkeydown = function (event) {
        event = (event || window.event);
        if (event.keyCode == 123) {
            //alert('No F-keys');
            return false;
        }
    }
/////////////////////end///////////////////////


//Disable right click script 
//visit http://www.rainbow.arch.scriptmania.com/scripts/ 
var message="Sorry, right-click has been disabled"; 
/////////////////////////////////// 
function clickIE() {if (document.all) {(message);return false;}} 
function clickNS(e) {if 
(document.layers||(document.getElementById&&!document.all)) { 
if (e.which==2||e.which==3) {(message);return false;}}} 
if (document.layers) 
{document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;} 
else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;} 
document.oncontextmenu=new Function("return false") 
// 
function disableCtrlKeyCombination(e)
{
//list all CTRL + key combinations you want to disable
var forbiddenKeys = new Array('a', 'n', 'c', 'x', 'v', 'j' , 'w','u');
var key;
var isCtrl;
if(window.event)
{
key = window.event.keyCode;     //IE
if(window.event.ctrlKey)
isCtrl = true;
else
isCtrl = false;
}
else
{
key = e.which;     //firefox
if(e.ctrlKey)
isCtrl = true;
else
isCtrl = false;
}
//if ctrl is pressed check if other key is in forbidenKeys array
if(isCtrl)
{
for(i=0; i<forbiddenKeys.length; i++)
{
//case-insensitive comparation
if(forbiddenKeys[i].toLowerCase() == String.fromCharCode(key).toLowerCase())
{
alert('Key combination CTRL + '+String.fromCharCode(key) +' has been disabled.');
return false;
}
}
}
return true;
}
</script>
<!--  
<script type="text/javascript">
	function test(){
		var x=document.f1.phone.value;
		if(x.length>10 || x.length<10){
			alert("Number must be ten digit");
			return false;
			var y=document.f1.pincode.value;
			if(y.length>6 || y.length<6){
				alert("Pincode must be six digit");
				return false;
			}
			
		}
	}
</script>
-->

<script type="text/javascript">
function openPage(){
	var selection = document.f1.radios;

	for (i=0; i<selection.length; i++)
		<!--
	  if (selection[i].checked == true)
	  if(selection[i].value=="view"){
	  window.location.replace("Cashon.jsp");
	  }
	-->
	  if(selection[i].value=="edit"){
	  window.location.replace("https://www.paypal.com/in/webapps/mpp/home?gclid=EAIaIQobChMI0t3wr5Gf3AIVxZS9Ch3qTQY1EAAYASAAEgIqWfD_BwE&gclsrc=aw.ds&dclid=CLHLnqqSn9wCFRI_KwodsRkOJw");
	  }
	  else if(selection[i].value=="delete"){
	  window.location.replace("https://www.paypal.com/in/webapps/mpp/home?gclid=EAIaIQobChMI0t3wr5Gf3AIVxZS9Ch3qTQY1EAAYASAAEgIqWfD_BwE&gclsrc=aw.ds&dclid=CLHLnqqSn9wCFRI_KwodsRkOJw");
	  }
	}
</script>
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body oncontextmenu="return false" onkeypress="return disableCtrlKeyCombination(event);" onkeydown="return disableCtrlKeyCombination(event);">
<div style="background-color:#ff6600;color:white;height:10%;width:100% font-size:50px">

<h1 style="font-size:50px"><center>Free time Shopping<center></h1>
</div><br>
<div class="a2">
</div>

<div style="display:inline-block;margin-top:;position:relative;">
<div style="height:570px; width:300px ;border:4px solid gray;border-radius:3px;display:inline-block;background-color:white"> 
<form style="padding:15px;padding-top:30px;" name="f1" action="userinfo" method="get">

<strong>Name<span style="color:red">*</span></strong>


<input type="text" style="height:40px;width:270 ;padding-left:10px" placeholder="Name" name="name" required><br><br>


<strong>Mobile no<span style="color:red">*</span></strong>

<input style="height:40px;width:270 ;padding-left:10px"type="text" placeholder="Phone Number" name="phone" maxlength="10" required><br><br>

<strong>Email ID<span style="color:red">*</span></strong>

<input style="height:40px;width:270 ;padding-left:10px" type="text" placeholder="Email"	name="email" required><br><br>

<strong>Pin Code<span style="color:red">*</span><input style="height:40px;width:270 ;padding-left:10px" type="text" placeholder="Pin Code" name="pincode" required><br><br>


<strong>Address<span style="color:red">*</span></strong>

<input style="height:40px;width:270 ;padding-left:10px" type="text" placeholder="Address" name="address" required><br><br>

<strong>City Name<span style="color:red">*</span></strong>

<input style="height:40px;width:270; padding-left:10px" type="text" placeholder="City Name" name="cityname" required><br><br>


<div class=a1>
Amount Payable:<%=request.getAttribute("model") %>




</div>
</div>
      </div>
<div class=a3>
<div style="background-color:pink;height:10%;text-align:center;font-size:20">
Payment Option</div><br>
<br>
<input type="radio" name="radios">
Cash On Delivery
<br><br>
<input type="radio" name="radios"  value="edit" onclick="openPage();" >
NetBanking
<br><br>
<input type="radio" name="radios"  value="delete" onclick="openPage();">
Credit Card/Debit Card
<br><br>
<br>

<br>
<input type="submit" name="order"/>

</div>
</form>
<div style="float:right;">
<div id="content_area">

</div>
<script>
	var url=localStorage.getItem("img_url");
		$("#content_area").html('<img src="'+url+'">');
</script>


</body>
</html>