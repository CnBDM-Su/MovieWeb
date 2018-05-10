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

public class MovieAddServlet extends HttpServlet {
	MovieService movieService = new MovieService();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Moviedomain movie = new Moviedomain();
		movie.setMovieid(request.getParameter("Movieid"));
		movie.setMoviename(request.getParameter("Moviename"));
		movie.setPerformer(request.getParameter("Performer"));
		movie.setDirector(request.getParameter("Dorector"));
		movie.setCountry(request.getParameter("Country"));
		movie.setPoster(request.getParameter("Poster"));
		movie.setReleasetime(request.getParameter("Releasetime"));
		movie.setRate(request.getParameter("Rate"));
		
		try {
			movieService.add(movie);
			request.setAttribute("message", "Ìí¼Ó³É¹¦");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message",e.getMessage());
		}
		request.setAttribute("url", "MovieListServlet.do");
		request.getRequestDispatcher("message.jsp").forward(request, response);
	}

}
