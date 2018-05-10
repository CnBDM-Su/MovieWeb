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
import dao.Moviedao;
import domain.Moviedomain;
import service.MovieService;
import utils.JdbcUtils;

public class MovieDelServlet extends HttpServlet {
	MovieService movieService = new MovieService();
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Moviedomain movie = new Moviedomain();
		String Movieid = request.getParameter("Movieid");
		movie.setMovieid(Movieid);;
		try {
			movieService.del(movie);
			request.setAttribute("message", "É¾³ý³É¹¦");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", e.getMessage());
		}
		request.getRequestDispatcher("message.jsp").forward(request, response);

}
}
