<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="icon" href="img/logo3.jpg">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body oncontextmenu="return false" onkeypress="return disableCtrlKeyCombination(event);" onkeydown="return disableCtrlKeyCombination(event);">
<form action="logout">
	<div style="float:right">
	<input type="submit" name="Logout" value="logout"/>
	</div>
</form>


<%	
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<h1>Welcome to your Profile</h1>
<div style="float:right;">
Welcome ${username}
</div>
<td><a href="shoes.jsp"><img class="img-responsive fix-size" src="img/6.jpg" ></a></td>
<td><a href="shoes1.jsp"><img class="img-responsive fix-size" src="img/3.jpg" ></a></td>
<td><a href="shoes2.jsp"><img class="img-responsive fix-size" src="img/4.jpg" ></a></td><br>
				
<a href="cart.html">click here for mobile phone</a>
   				 <%@ include file="footer.jsp"%>
</body>
</html>