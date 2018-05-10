package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Session
 */

public class SessionFilter implements Filter {
	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		//把request转换成咱们常用的request
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		HttpSession session = request.getSession();
		//获取访问路径
		String path = request.getServletPath();
		//验证session排除登录页面和存session页面
		if(session.getAttribute("userMap")==null&&!path.endsWith("login.jsp")&&!path.endsWith("LoginServlet.do")){
			//遵循html语言把页面编码改为UTF-8
			response.setContentType("text/html;charset=UTF-8");
			//获取out对象
			PrintWriter out = response.getWriter();
			//通过js提示用户并跳转页面
			out.write("<script>alert('请登录!');window.top.location.href='login.jsp'</script>");
		}else {
			chain.doFilter(req, res);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
