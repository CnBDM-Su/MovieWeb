package servlet;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sun.java_cup.internal.*;
import domain.Moviedomain;
import service.MovieService;
import utils.JdbcUtils;
import utils.PageBean;

public class MovieListServlet extends HttpServlet {
	MovieService movieService = new MovieService();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int pages = 1;
		int records = 6;
		
		if (request.getParameter("pages")!=null) 
		{
			pages = Integer.parseInt(request.getParameter("pages"));
		}
		 
		Moviedomain movie = new Moviedomain();
		String Movieid = request.getParameter("Movieid");
		String Moviename = request.getParameter("Moviename");
		String Performer = request.getParameter("Performer");
		String Director = request.getParameter("Director");
		String Country = request.getParameter("Country");
		String Poster = request.getParameter("Poster");
		String Releasetime = request.getParameter("Releasetime");
		String Rate = request.getParameter("Rate");

		try {
			List<Map<String, Object>> movieList = movieService.movieList(request, movie, pages, records);
			request.setAttribute("movieList",movieList);
		} catch (Exception e) {
			request.setAttribute("message", e.getMessage());
		}
		request.getRequestDispatcher("movieList.jsp").forward(request, response);
	}

}
