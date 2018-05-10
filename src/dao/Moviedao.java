package dao;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.sun.java_cup.internal.*;
import domain.Moviedomain;
import utils.JdbcUtils;
import utils.PageBean;

public class Moviedao {

		JdbcUtils jd = new JdbcUtils();

		public List<Map<String, Object>> movieList(HttpServletRequest request,Moviedomain movie,int pages,int records){
			StringBuilder sq = new StringBuilder("select * from movie where 1=1 ");
			if(movie.getMovieid()!=null&&movie.getMovieid()!=""){
				sq.append(" and Movieid like '%"+movie.getMovieid()+"%'");
			}
			if(movie.getMoviename()!=null&&movie.getMoviename()!=""){
				sq.append(" and Moviename like '%"+movie.getMoviename()+"%'");
			}
			String sql = sq.toString();
			List<Map<String, Object>> movieList = jd.listForPage(sql,pages,records,null);
			PageBean.setPage(sql, jd, request, pages);
			return movieList;	
	}

		public int add(Moviedomain movie){
			String sql="insert into movie (Movieid,Moviename,Performer,Director,Country,Poster,Releasetime,Rate,Type,Description) values (?,?,?,?,?,?,?,?,?,?)";
			int result = jd.update(sql, new Object[]{movie.getMovieid(),movie.getMoviename(),movie.getPerformer(),movie.getDirector(),movie.getCountry(),movie.getPoster(),movie.getReleasetime(),movie.getRate(),movie.getType(),movie.getDescription()});
			return result;
		
	}
		public Map<String, Object> load(String moviename){
			String sql = "select * from movie where moviename=?";
			Map<String, Object> userMap = jd.queryByname(sql, moviename);
			return userMap;
			
	}
		public int mdi(Moviedomain movie){
			String sql="update movie set Movieid=?,Moviename=?,Performer=?,Director=?,Country=?,Poster=?,Releasetime=?,Rate=?,Type=?,Description=?";
			int result = jd.update(sql, new Object[]{movie.getMovieid(),movie.getMoviename(),movie.getPerformer(),movie.getDirector(),movie.getCountry(),movie.getPoster(),movie.getReleasetime(),movie.getRate(),movie.getType(),movie.getDescription()});
			System.out.println(result);
			return result;
	}
		public int del(Moviedomain movie){
			String sql = "delete from movie where Movieid=?";
			int result = jd.update(sql, new Object[]{movie.getMovieid()});
			return result;
	}
		

}
