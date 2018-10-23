<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="icon" href="img/logo3.jpg">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {box-sizing: border-box;}
.img-zoom-container {
  position: relative;
}
.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 40px;
  height: 40px;
}
.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 300px;
  height: 300px;
}
</style>

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
function imageZoom(imgID, resultID) {
  var img, lens, result, cx, cy;
  img = document.getElementById(imgID);
  result = document.getElementById(resultID);
  /*create lens:*/
  lens = document.createElement("DIV");
  lens.setAttribute("class", "img-zoom-lens");
  /*insert lens:*/
  img.parentElement.insertBefore(lens, img);
  /*calculate the ratio between result DIV and lens:*/
  cx = result.offsetWidth / lens.offsetWidth;
  cy = result.offsetHeight / lens.offsetHeight;
  /*set background properties for the result DIV:*/
  result.style.backgroundImage = "url('" + img.src + "')";
  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
  /*execute a function when someone moves the cursor over the image, or the lens:*/
  lens.addEventListener("mousemove", moveLens);
  img.addEventListener("mousemove", moveLens);
  /*and also for touch screens:*/
  lens.addEventListener("touchmove", moveLens);
  img.addEventListener("touchmove", moveLens);
  function moveLens(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image:*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    /*calculate the position of the lens:*/
    x = pos.x - (lens.offsetWidth / 2);
    y = pos.y - (lens.offsetHeight / 2);
    /*prevent the lens from being positioned outside the image:*/
    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
    if (x < 0) {x = 0;}
    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
    if (y < 0) {y = 0;}
    /*set the position of the lens:*/
    lens.style.left = x + "px";
    lens.style.top = y + "px";
    /*display what the lens "sees":*/
    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>

			
			
<body oncontextmenu="return false">
					<%@ include file="navbar.jsp"%>	<br><br><br><br>
		<%	
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>			

<form action="logout">
	<div style="float:right">
	<input type="submit" name="Logout" value="logout"/>
	</div>
</form>
	<h1>Lotto VERTIGO Running Shoes For Men (Black)</h1>
	<div class="img-zoom-container">
  <img id="myimage" src="img/6.jpg" width="300" height="200">
  <div id="myresult" class="img-zoom-result" style="float:right"></div>
</div>
	<td><input type="submit" name="submit" value="ADD TOO CART"/></td>
	
	<input type="submit" value="BUYNOW" onclick="image('img/6.jpg');"/>
	<script>
		function image(img_url){
			
			console.log("Saving to localstorage...");
			localStorage.setItem("img_url",img_url);
			window.location.href="placeorder.jsp";
	}
	</script>
<%
String s1="vertigo";
request.setAttribute("model",s1); %>
		</form>
	<h1>Rs.665   60% off</h1>
	<p>No Cost EMINo Cost EMI on Bajaj Finserv EMI Card on cart value above ₹4499T&C</p>
	<p>No Cost EMIExtra Savings on EMI transactions with SBI Credit CardsT&C</p>
	
	<td>Delivery in4-5 days</td>
	<p>Highlights</p>
	<td><ul>
		<li>Colour: Black</li>
		<li>Outer Material: Mesh</li>
		<li>Inner Material: Fabric</li>
	</ul></td>
	<td>Cash on Delivery available</td>
	<td>30 Days Exchange Policy</td>
	<div style="float:left;"><br><br>
	<td><h3>Specifications</h3></td>
	<%
	String ver="VERTIGO";
	request.setAttribute("model1", ver);
	%>
	<p align="center">Model Name:VERTIGO</p>
	<p align="center">Ideal For:Men</p>
	<p align="center">Occasion:Sports</p>
	<p align="center">Inner Material:Fabric</p>
	<p align="center">Outer Material:Mesh</p>
	</div>
	<div style="float:center;"><br>
	<td><h3 align="center">Product</h3></td>
	<p align="center">Sole Material:Eva</p>
	<p align="center">Season:AW 17</p>
	</div><br><br><br><br>
	<%@ include file="comment.jsp"%><br><br><br><br><br><br><br><br><br>
	<%@ include file="footer.jsp"%>
	<script>
// Initiate zoom effect:
imageZoom("myimage", "myresult");
</script>
	
	

	
</body>
</html>