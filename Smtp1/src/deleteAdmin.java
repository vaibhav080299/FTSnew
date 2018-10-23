

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class delete
 */
@WebServlet("/deleteAdmin")
public class deleteAdmin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","lavi555");
			PreparedStatement ps=con.prepareStatement("delete from register where email=?");
			ps.setString(1, email);
			int status=ps.executeUpdate();
			System.out.println(status);
			if(status==1)
			{
				RequestDispatcher rd=request.getRequestDispatcher("welcomeadmin.jsp");
				rd.include(request, response);
				PrintWriter out=response.getWriter();
				out.println(" Acccount is Deleted");
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("deleteadmin.jsp");
				rd.include(request, response);
				PrintWriter out=response.getWriter();
				out.println("please Enter valid email");
				out.println("Your Acccount is  not Deleted");
		
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

	

}
