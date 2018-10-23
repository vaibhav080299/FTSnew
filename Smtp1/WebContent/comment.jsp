<!DOCTYPE html>  
<html>  
<head>  
	<link rel="icon" href="img/logo3.jpg">
<script>  
var request;  
function test(){  
var comment=document.commentform.comment.value;  
var email=document.commentform.email.value;  
  
var url="main.jsp?comment="+comment+"&email="+email;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=function(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('mylocation').innerHTML=val;  
}  
}//end of function  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect ");}  
}  
</script>  
</head>  
<body> 
					
 
<h1 align="center">Views on the product</h1>  
<form name="commentform">  
<table align="center">
<tr>
<td>Comments</td>  
<td><textarea name="comment" style="width:300px;height:100px;" required>  
</textarea></td>
</tr>
<tr>  
<td>Enter your Name:</td>  
<td><input type="text" name="email" required/></td>  
</tr>
<tr>  
<td><input type="button" value="Comment" onclick="test()"></td>
</tr>
</table>  
</form>  
<%@ include file="footer.jsp"%>
  
<span id="mylocation"></span>  
</body>  
</html>  