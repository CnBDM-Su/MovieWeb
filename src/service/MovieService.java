package service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.sun.java_cup.internal.*;
import domain.Moviedomain;
import utils.JdbcUtils;
import dao.Moviedao;

public class MovieService {
	Moviedao moviedao = new Moviedao();
	//查询list
	public List<Map<String, Object>> movieList(HttpServletRequest request,Moviedomain movie,int pages,int records){
		List<Map<String, Object>> movieList = moviedao.movieList(request, movie, pages, records);
		if(movieList.size()>0)
		{
			return movieList;
		}else {
			throw new RuntimeException("没有要显示的数据");
		}
		
	}
	//添加
	public int add(Moviedomain movie){
		int result = moviedao.add(movie);
		if(result>0){
			return result;
		}
		else {
			throw new RuntimeException("添加失败");
		}
	}
	//通过name查询
	public Map<String, Object> load(String Moviename){
		Map<String, Object> movieMap = moviedao.load(Moviename);  
		return movieMap;
	}
	//修改
	public int mdi(Moviedomain movie){
		int result = moviedao.mdi(movie);
		if(result>0){
			return result;
		}
		else {
			throw new RuntimeException("修改失败");
		}
	}
	//删除
	
	public int del(Moviedomain movie){
		int result = moviedao.del(movie);
		if(result>0){
			return result;
		}
		else {
			throw new RuntimeException("删除失败");
		}
	}
}

