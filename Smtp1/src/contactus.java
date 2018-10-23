

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contactus
 */
@WebServlet("/contactus")
public class contactus extends HttpServlet {
	private String host;
	private String port;
	private String username;
	private String password;
	
	public void init()
	{
		ServletContext context=getServletContext();
		host=context.getInitParameter("host");
		port=context.getInitParameter("port");
		username=context.getInitParameter("username");
		password=context.getInitParameter("password");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phoneno=request.getParameter("phone_number");
		String message=request.getParameter("message");
		String abc="";
		try {
			Manager.test(host,port,username,password,"vaibhav.vas09@gmail.com",email,message);
			abc="Message send Successfully";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			PrintWriter out=response.getWriter();
			out.println("Message Send Successfully");
			getServletContext().getRequestDispatcher("/contactus.jsp").include(request, response);
			
			
		}
		
	}

}
