package servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.sun.java_cup.internal.*;
import service.MovieService;
import utils.JdbcUtils;

public class MovieTraceServlet extends HttpServlet {
	MovieService movieService = new MovieService();
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String Moviename = request.getParameter("Moviename");
		Map<String, Object> movieMap = movieService.load(Moviename);
		request.setAttribute("movieMap", movieMap);
		request.setAttribute("Moviename", Moviename);
		request.getRequestDispatcher("userMdi.jsp").forward(request,response);
		
}
}
