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
<body oncontextmenu="return false" >
<div style="float:left;">
	<a href="home.jsp"><img class="img-responsive fix-size" src="img/logo3.jpg" height="50" width="100" ></a>
	</div>
	
	<%@ include file="navbar.jsp"%>	

<h1><marquee>Interview Question</marquee></h1>
<table>
<tr>
<td><div style="margin-left:10%; margin-top:6%">
<div class="img">
<a href="pdf/java_interview.pdf"><img border="0" src="img/java.jpg" alt="Klematis" width="300" height="200"></a>
<div style="margin-top:10%">
<a href="pdf/java_interview.pdf">Click here for JAVA Interview Question</a>
</div>
</div>
</div></td>
<td>
<div class="img" style="float:right">
<a href="pdf/dotnet.pdf"><img border="0" src="img/net.png" alt="Klematis" width="300" height="200"></a>
<div style="margin-top:10%;">
<a href="pdf/dotnet.pdf">Click here for DotNet Interview Question</a>
</div>
</div></td>


<td>
<div class="img">
<a href="pdf/Sql_Interview.pdf"><img border="0" src="img/mysql.png" alt="Klematis" width="300" height="200"></a>
<div style="margin-top:10%">
<a href="pdf/Sql_Interview.pdf">Click here for MYSQL Interview Question</a>
</div>
</div></td></tr>
<tr>
<td>
<div class="img">
<a href="pdf/oracle.pdf"><img border="0" src="img/oracle.png" alt="Klematis" width="300" height="200"></a>
<div style="margin-top:10%">
<a href="pdf/oracle.pdf">Click here for Oracle Interview Question</a>
</div>
</div></td>
<td>
<div class="img">
<a href="pdf/php.pdf"><img border="0" src="img/php.png" alt="Klematis" width="300" height="200"></a>
<div style="margin-top:10%">
<a href="pdf/php.pdf">Click here for PHP Interview Question</a><br><br><br><br><br><br>
</div>
</div>
 
</div>
</td>
</tr>
</table>
<%@ include file="footer.jsp"%>

</body>
</html>