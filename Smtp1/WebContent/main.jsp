<!DOCTYPE html>  
<html>  
<head>  
<style>  
div.abc{margin:3px;border:2px solid blue;padding:10px;background-color: grey}  
</style>  
</head>  
<body>  
  
<%@ page import="java.sql.*" %>  
<%  
String comment=request.getParameter("comment");  
String email=request.getParameter("email");  
if(comment==null||email==null||comment.trim().equals("")||email.trim().equals("")){  
out.print("<p><b>Please write your comment</b></p>");  
}else{  
  
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","lavi555");  
PreparedStatement ps=con.prepareStatement("insert into commentOfUser(comments,email) values(?,?)");  
ps.setString(1,comment);  
ps.setString(2,email);  
int i=ps.executeUpdate();  
  
PreparedStatement ps2=con.prepareStatement("select * from commentOfUser order by id desc");  
ResultSet rs=ps2.executeQuery();  
  
out.print("<hr/><h2>Comments:</h2>");  
while(rs.next()){  
out.print("<div class='abc'>");  
out.print("<p>"+rs.getString(2)+"</p>");  
out.print("<p><strong>By: "+rs.getString(3)+"</strong></p>");  
out.print("</div>");  
}  
  
con.close();  
}catch(Exception e){out.print(e);}  
  
}//end of else  
%>  
</body>  
</html>