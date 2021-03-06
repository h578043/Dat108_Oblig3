package Oblig3;

import static hjelpeklasse.UrlMappings.LOGGUT_URL;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoggutSevlet", urlPatterns = {"/" + LOGGUT_URL})
public class LoggutSevlet extends HttpServlet{
	 private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/Ferdig.jsp").forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}
	
	
}

