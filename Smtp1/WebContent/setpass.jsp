<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="icon" href="img/logo3.jpg">
	<!-- 
<script>

document.onkeydown = function(e) 
{
        if (e.ctrlKey && (e.keyCode === 67 ||  e.keyCode === 86 ||  e.keyCode === 85 || e.keyCode === 117))
        {
            return false;
        } 
        
        else
        {
            return true;
        }
};

$(document).keypress("u",function(e) {
  if(e.ctrlKey)
  {
return false;
}
else
{
return true;
}
});
</script>
<script>
function pass_validation()
{
var firstpassword=document.f1.pass.value;
var secondpassword=document.f1.passed.value;

if(firstpassword==secondpassword){
return true;
}
else{
alert("password one and two must be same!");
return false;
}
}
</script> -->
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body oncontextmenu="return false" onkeypress="return disableCtrlKeyCombination(event);" onkeydown="return disableCtrlKeyCombination(event);">
					<%@ include file="navbar.jsp"%>	<br><br><br><br><br><br>

	<%
	if(session.getAttribute("security")==null)
	{
		response.sendRedirect("forget.jsp");
	}
	%>
	<div style="float:right";>
	<form action="setpassword" name="f1" onsubmit="return pass_validation()" >
		<table align="center">
		<tr>
		<td>Email:</td><td><input type="text" name="email" required/></td>
		</tr>
		<tr>
		<td>Set Password:</td><td><input type="password" name="pass" required/></td>
		</tr>
		<tr>
		<td>Confirm Password:</td><td><input type="password" name="passed" required/></td>
		</tr>
		<tr>
		<td><input type="submit" name="submit"/></td>
		</tr>
		</table>
	</form>
	</div>
	<%@ include file="main slider.html" %>
	<%@ include file="footer.jsp"%>
</body>
</html>