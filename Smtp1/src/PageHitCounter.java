

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PageHitCounter
 */
@WebServlet("/PageHitCounter")
public class PageHitCounter extends HttpServlet {
	private  int hitCount;
	public void init(){
		hitCount=0;
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		hitCount++;
		PrintWriter out=response.getWriter();
		String title="Number of Hits";
		String docType = "!doctype html"; 
		out.println(
				"<html>\n" +
	            "<head><title>" + title + "</title></head>\n" +
	            "<body" +
	               "<h1 align = \"center\">" + title + "</h1>\n" +
	               "<h2 align = \"center\">" + hitCount + "</h2>\n" +
	            "</body>"
	         );
		
	}

}
