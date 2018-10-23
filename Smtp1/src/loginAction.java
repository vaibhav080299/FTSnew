

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginAction
 */
@WebServlet("/loginAction")
public class loginAction extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean status=false;
		
		response.setContentType("text/html");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		String status1="tre";
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","lavi555");
			PreparedStatement ps=con.prepareStatement("select * from register where email=? and password= and status=");
			ps.setString(1, email);
			ps.setString(2, pass);
			ps.setString(3, status1);
			
			ResultSet rs=ps.executeQuery();
			
			status=rs.next();
			if(status==false){
				PrintWriter out=response.getWriter();
				out.print("You have to confirm mail first");
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
			else{
				HttpSession session=request.getSession();
				session.setAttribute("username", emil);
			RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
			rd.forward(request, response);
			}
			System.out.println(status);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//if(status==true){
			//HttpSession session=request.getSession();
			//session.setAttribute("username", email);
		//RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
		//rd.forward(request, response);
		
		
		//}
		//else
		//{
			//RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
			//rd.include(request, response);
			//PrintWriter out=response.getWriter();
			//out.println("Wrong Password");
		
		//}
	}

}
