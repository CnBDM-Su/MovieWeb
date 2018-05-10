package utils;

import javax.servlet.http.HttpServletRequest;
import com.sun.java_cup.internal.*;

public final class PageBean {
	private PageBean(){}
	public static void setPage(String sql,JdbcUtils jd,HttpServletRequest request,int  pages){
		int count = jd.count(sql, null);
		int sumPage = (count%6==0)?(count/6):(count/6+1);
		request.setAttribute("sumPage", sumPage);
		request.setAttribute("pages", pages);
	}
}