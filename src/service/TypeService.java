package service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.sun.java_cup.internal.*;
import domain.Typedomain;
import utils.JdbcUtils;
import dao.Typedao;

public class TypeService {
	Typedao typedao = new Typedao();
	//查询list
	public List<Map<String, Object>> typeList(HttpServletRequest request,Typedomain type,int pages,int records){
		List<Map<String, Object>> typeList = typedao.typeList(request, type, pages, records);
		if(typeList.size()>0)
		{
			return typeList;
		}else {
			throw new RuntimeException("没有要显示的数据");
		}
		
	}
	//通过id查询
	public Map<String, Object> load(int Typeid){
		Map<String, Object> typeMap = typedao.load(Typeid);  
		return typeMap;
	}
}