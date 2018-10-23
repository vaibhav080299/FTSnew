<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="icon" href="img/logo3.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
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
<body oncontextmenu="return false">
					<%@ include file="navbar.jsp"%>	<br><br><br>

<h1 align="center">Contact Us Page</h1>
	<form action="contactus">
		<table align="center">
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td>Phone number:</td>
				<td><input type="text" name="phone_number"/></td>
			</tr>
			<tr>
				<td>Message:</td>
				<td><textarea name="message" style="width:300px;height:100px;" required>  
</textarea></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="submit"/></td>
			</tr>
		</table>
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>