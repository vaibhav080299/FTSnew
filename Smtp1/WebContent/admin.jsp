<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="img/logo3.jpg">

		<script>


				    document.onkeypress = function (event) 
				    {
				        event = (event || window.event);
				        if (event.keyCode == 123) 
				        {
				           alert('No F-12');
				            return false;
				        }
				    }
				    document.onmousedown = function (event) 
				    {
				        event = (event || window.event);
				        if (event.keyCode == 123) 
				        {
				            
				            return false;
				        }
				    }
				document.onkeydown = function (event) {
				        event = (event || window.event);
				        if (event.keyCode == 123) {
				            
				            return false;
				        }
				    }

				</script>
				
				
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body oncontextmenu="return false">
<div style="float:left;">
	<a href="home.jsp"><img class="img-responsive fix-size" src="img/logo3.jpg" height="50" width="100" ></a>
	</div>
	
	<%@ include file="navbar.jsp"%>	<br><br><br>

	<div><h1 align="center"> ADMIN  LOGIN</h1>	</div>
	<form action="servletAdmin">
		<table align="center">
			<tr>
				<td>Username</td>
				<td><input type="text" name="uname"/></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pass"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="submit"/></td>
			</tr>
			
		</table>
	</form>
	
	
		<%@ include file="main slider.html" %><br><br><br><br><br><br><br><br><br>
		
		
			
		<%@ include file="footer.jsp"%>
	
</body>
</html>