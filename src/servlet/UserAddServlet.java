package servlet;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sun.java_cup.internal.*;
import domain.Userdomain;
import service.UserService;
import utils.JdbcUtils;

public class UserAddServlet extends HttpServlet {
	UserService userService = new UserService();
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Userdomain user = new Userdomain();
		user.setUid(request.getParameter("Uid"));
		user.setPassword("123456");
		user.setUsername(request.getParameter("Username"));
		
		try {
			userService.add(user);
			request.setAttribute("message", "Ìí¼Ó³É¹¦");
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message",e.getMessage());
		}
		request.setAttribute("url", "UserListServlet.do");
		request.getRequestDispatcher("message.jsp").forward(request, response);
	}

}