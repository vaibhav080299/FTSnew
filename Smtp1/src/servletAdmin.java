

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class servlet
 */
@WebServlet("/servletAdmin")
public class servletAdmin extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pass=request.getParameter("pass");
		if(pass.equals("admin123"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("welcomeadmin.jsp");
			rd.include(request, response);
			HttpSession session=request.getSession();
			session.setAttribute("username", pass);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
			rd.include(request, response);
			PrintWriter out=response.getWriter();
			out.println("Wrong Password");
	
		}
	}

}
