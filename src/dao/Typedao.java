package dao;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import domain.Moviedomain;
import domain.Typedomain;
import utils.JdbcUtils;
import utils.PageBean;

public class Typedao {
	
	JdbcUtils jd = new JdbcUtils();

	public List<Map<String, Object>> typeList(HttpServletRequest request,Typedomain type,int pages,int records){
		StringBuilder sq = new StringBuilder("select * from type where 1=1 ");
		if(type.getTypeid()!=null&&type.getTypeid()!=""){
			sq.append(" and Typeid like '%"+type.getTypeid()+"%'");
		}
		if(type.getTypename()!=null&&type.getTypename()!=""){
			sq.append(" and Typename like '%"+type.getTypename()+"%'");
		}
		String sql = sq.toString();
		List<Map<String, Object>> typeList = jd.listForPage(sql,pages,records,null);
		PageBean.setPage(sql, jd, request, pages);
		return typeList;	
}
	public Map<String, Object> load(int Typeid){
		String sql = "select * from user where Typeid=?";
		Map<String, Object> typeMap = jd.queryById(sql, Typeid);
		return typeMap;
		
}
}
