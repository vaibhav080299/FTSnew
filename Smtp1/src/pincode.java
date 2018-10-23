

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
 * Servlet implementation class pincode
 */
@WebServlet("/pincode")
public class pincode extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pin=request.getParameter("pincode");
		boolean status=false;
		response.setContentType("text/html");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","lavi555");
			PreparedStatement ps=con.prepareStatement("select * from pincode where pin=?");
			ps.setString(1, pin);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			System.out.println(status);
			if(status==true)
			{
				PrintWriter out=response.getWriter();
				out.println("Pincode Exist");
				//getServletContext().getRequestDispatcher("/shoes.jsp").include(request, response);
				
			}
			else{
				PrintWriter out=response.getWriter();
				out.println("<html>");
				out.println("<body>");
				out.println("<div align='left'>");
				out.println("Pincode not Exist");
				out.println("</div>");
				out.println("</body>");
				out.println("</html>");
				
				//getServletContext().getRequestDispatcher("/shoes.jsp").include(request, response);

			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
