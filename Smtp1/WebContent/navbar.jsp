 <%@ page import="java.util.*" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<html><head>
<title>Free Time Shopping</title>
<style type="text/css">
body

{padding: 3em; }

#menu * { 
    padding:0; 
    margin: 0; 
    font: 12px georgia; 
    list-style-type:none;}

#menu { 
   
    float: left;
    line-height: 10px; 
    left: 200px;}

#menu a { 
    display: block; 
    text-decoration: none; 
    color: #3B5330;}

#menu a:hover { background: #B0BD97;}

#menu ul li ul li a:hover { 
    background: #ECF1E7; 
    padding-left:9px;
    border-left: solid 1px #000;}

#menu ul li ul li {
    width: 140px; 
    border: none; 
    color: #B0BD97;  
    padding-top: 3px; 
    padding-bottom:3px; 
    padding-left: 3px; 
    padding-right: 3px; 
    background: #B0BD97;}

#menu ul li ul li a { 
    font: 11px arial; 
    font-weight:normal; 
    font-variant: small-caps; 
    padding-top:3px; 
    padding-bottom:3px;}

#menu ul li {
    float: left; 
    width: 146px; 
    font-weight: bold; 
    border-top: solid 1px #283923; 
    border-bottom: solid 1px #283923; 
    background: #979E71;}

#menu ul li a { 
    font-weight: bold;
    padding: 15px 10px;}

#menu li{ 
    position:relative; 
    float:left;}

#menu ul li ul, #menu:hover ul li ul, #menu:hover ul li:hover ul li ul{ 
    display:none;
    list-style-type:none; 
    width: 140px;}

#menu:hover ul, #menu:hover ul li:hover ul, #menu:hover ul li:hover ul li:hover ul { 
    display:block;}

#menu:hover ul li:hover ul li:hover ul { 
    position: absolute;
    margin-left: 145px;
    margin-top: -22px;
    font: 10px;}

#menu:hover ul li:hover ul { 
    position: absolute;
    margin-top: 1px;
    font: 10px;}


</style>

</head>

<body>

<%--  
<center>

<%
   // Set refresh, autoload time as 5 seconds
   response.setIntHeader("Refresh",1);
   // Get current time
   Calendar calendar = new GregorianCalendar();
   String am_pm;
   int hour = calendar.get(Calendar.HOUR);
   int minute = calendar.get(Calendar.MINUTE);
   int second = calendar.get(Calendar.SECOND);
   if(calendar.get(Calendar.AM_PM) == 0)
      am_pm = "AM";
   else
      am_pm = "PM";
   String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
   out.println("Current Time: " + CT + "\n");
%>
</center>
--%>



 



<div id="menu">
    <ul>

        <li><center><a href="home.jsp">Home</a></center>
               
        </li>   

        <li><center><a href="#">About us</a></center>
                <ul>
                        <li><a href="#">meet the team</a></li>
                        
                        
                    <li><a href="FAQ.jsp">FAQ</a> </li>
                </ul>
        </li>

        <li><center><a href="b.html">Meet the team</a></center>
               <!--  
                <ul>
                        <li><a href="getinTouch.jsp">X</a></li>
                        
                </ul>
                -->
        </li>

        <li><center><a href="contactus.jsp">Contact Us</a></center>
            <!--<ul>
                    
                      
                                //<li><a href="#">Phone Directory</a></li>
                                //<li><a href="#">Mailing Address</a></li>
            </ul>
				-->
        </li>

       
        <li><center><a href="#">News &amp; Events</a></center>
            <ul>
                       
                        <li><a href="#">Blog</a></li>
        </li></ul>
        
        <li><center><a href="login.jsp">login	</a></center>
               
        </li>
               
        </li>
       </div>
      


<!--  <marquee behavior="alternate"><marquee width="200">Shopping</marquee></marquee>  -->
</body>

</html>

</pre></code>