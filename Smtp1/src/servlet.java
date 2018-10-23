

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet")
public class servlet extends HttpServlet {
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
		String email=request.getParameter("email");
		
		String sub="Confirmation mail";
		String body="<a href='http://localhost:7070/Smtp1/confirm?uname='"+email+">click here </a>" ;
		

		String abc="";
		try {
			Manager.test(host,port,username,password,email,sub,body);
			abc="Message send Successfully";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		boolean status=false;
		
		String password=request.getParameter("password");
		String sq=request.getParameter("sq");
		String sa=request.getParameter("answer");
		String firstname=request.getParameter("firstname");
		String status1="false";
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","lavi555");
			PreparedStatement ps=con.prepareStatement("select * from register where email=?");
			ps.setString(1, email);
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			//System.out.println(status);
			if(status==true)
			{
				PrintWriter out=response.getWriter();
				out.println("Username Already Exist");
				getServletContext().getRequestDispatcher("/index.jsp").include(request, response);
				
			}
			else
			{
			PreparedStatement pst=con.prepareStatement("insert into register values(?,?,?,?,?,?)");
			pst.setString(1, email);
			pst.setString(2, password);
			pst.setString(3, sq);
			pst.setString(4, sa);
			pst.setString(5, firstname);
			pst.setString(6, status1);
			int a=pst.executeUpdate();
			//System.out.println(a);
			
			request.setAttribute("message", abc);
			
			getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
			
			
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
