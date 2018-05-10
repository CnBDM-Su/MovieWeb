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
import domain.Moviedomain;
import service.MovieService;
import utils.JdbcUtils;

public class MovieMdiServlet extends HttpServlet {
	MovieService movieService = new MovieService();
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Moviedomain movie = new Moviedomain();
		int Movieid = Integer.parseInt(request.getParameter("Movieid"));
		movie.setMoviename(request.getParameter("Moviename"));
		movie.setPerformer(request.getParameter("Performer"));
		movie.setDirector(request.getParameter("Director"));
		movie.setCountry(request.getParameter("Country"));
		movie.setPoster(request.getParameter("Poster"));
		movie.setReleasetime(request.getParameter("Releasetime"));
		movie.setRate(request.getParameter("Rate"));
		
		try {
			movieService.mdi(movie);
			
			request.setAttribute("message", "ÐÞ¸Ä³É¹¦");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", "ÐÞ¸ÄÊ§°Ü");
		}
		request.setAttribute("url", "MovieListServlet.do");
		request.getRequestDispatcher("message.jsp").forward(request, response);

}
}