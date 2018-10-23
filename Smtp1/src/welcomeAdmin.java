

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class welcome
 */
@WebServlet("/welcomeAdmin")
public class welcomeAdmin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","lavi555");
			PreparedStatement ps=con.prepareStatement("select * from register");
			ResultSet rs=ps.executeQuery();
			PrintWriter out=response.getWriter();
			out.println("<html><body>");
			out.println("<table border=1 width=50% height=50%>");
			out.println("<tr><th>Email</th><th>Password</th><th>Security Question</th><th>Security Answer</th><th>First name</th><th>status</th><tr>");
			

			while(rs.next())
			{
				String email=rs.getString("email");
				String pass=rs.getString("password");
				String sq=rs.getString("sq");
				String answer=rs.getString("sa");
				String fname=rs.getString("Firstname");
				String status=rs.getString("status");
				out.println("<tr>");
				out.println("<td>"+email+"</td>");
				out.println("<td>"+pass+"</td>");
				out.println("<td>"+sq+"</td>");
				out.println("<td>"+answer+"</td>");
				out.println("<td>"+fname+"</td>");
				out.println("<td>"+status+"</td>");
				out.println("/<tr>");
			}
			 out.println("</table>");
			 out.println("</body></html>");			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
