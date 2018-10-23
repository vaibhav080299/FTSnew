				<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
				    pageEncoding="ISO-8859-1"%>
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html>
				<head>
				<link rel="icon" href="img/logo3.jpg">
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
		


				<script type="text/javascript">
				
				function test()
				{
						var x=document.f1.email.value;
						var atposition=x.indexOf("@");
						var dotposition=x.lastIndexOf(".");
						if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)
						{
						  alert("Please enter a valid e-mail address:");
						  return false;
						 }
						
						var firstpassword=document.f1.password.value;
						var secondpassword=document.f1.cpassword.value;
						
						if(firstpassword==secondpassword)
						{
						return true;
						}
						else
						{
						alert("password  and confirm password  must be same!");
						return false;
						}
						var name=document.f1.firstname.value;
						if(name.length<8)
						{  
							alert("Name must be at least 8 characters long");  
							return false;  
						} 
				
				
				}
				
				</script>
				<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
				<title>Insert title here</title>
				</head>
				<body oncontextmenu="return false" onkeypress="return disableCtrlKeyCombination(event);" onkeydown="return disableCtrlKeyCombination(event);">
					
				
				<%  response.setContentType("text/html"); %>
				<div style="float:left;">
	<a href="home.jsp"><img class="img-responsive fix-size" src="img/logo3.jpg" height="45" width="100" ></a>
	</div>
				
					<%@ include file="navbar.jsp"%>	<br><br><br>
					<div style="float:right">
					<form action="servlet" name="f1"  onsubmit="return test();">
					<table align="center">
					<tr>
					<td>Email:</td>
					<td><input type="text" name="email" required></td>
					</tr>
					<tr>
					<td>First Name:</td>
					<td><input type="text" name="firstname" required></td>
					</tr>
					<tr>
					<td>Password:</td>
					<td><input type="password" name="password" required></td>
					</tr>
					<tr>
						<td>Confirm Password:</td>
						<td><input type="password" name="cpassword"/></td>
					</tr>
					<tr>
					<td>Security Question:</td>
					<td><select name='sq'>
						<option >what is your nick name:</option>
						<option>who is your favraite playar</option>
						<option>who is your favraite Actor</option>
					</select></td>
					
					</tr>
					<tr>
					<td>Answer:</td>
					<td><input type="text" name="answer" required></td>
					</tr>
					<tr>
					<td><input type="submit" name="submit"></td>
					
					</tr>
					<div style="float:right;">
					
						<a href="hitcounter.jsp">Hits</a>
						</div><br><br>
						<div style="float:right;">
						<a href="comment.jsp">Comment</a>
					
					</div>
					
					</table>
					</form>
					</div><br><br><br>
					<%@ include file="main slider.html" %>
					<br><br><br><br><br><br><br><br><br>
				<%@ include file="footer.jsp"%>
					
				</body>
				</html>