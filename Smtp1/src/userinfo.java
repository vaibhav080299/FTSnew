

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userinfo
 */
@WebServlet("/userinfo")
public class userinfo extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String adress=request.getParameter("address");
		String cityname=request.getParameter("cityname");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","lavi555");
			PreparedStatement ps=con.prepareStatement("insert into data values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, email);
			ps.setString(4, adress);
			ps.setString(5, cityname);
			
			int a=ps.executeUpdate();
			String abc="Your order is Successfull";
			request.setAttribute("message", abc);
			request.getAttribute("model");
			request.setAttribute("model", "vertigo");
			
			getServletContext().getRequestDispatcher("/Cashon.jsp").include(request, response);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
