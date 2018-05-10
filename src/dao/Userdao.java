package dao;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.sun.java_cup.internal.*;
import domain.Userdomain;
import utils.JdbcUtils;
import utils.PageBean;

public class Userdao {

	JdbcUtils jd = new JdbcUtils();
	public Map<String,Object>login(String Uid,String password){
		String sql = "select * from user where Uid =? and password=?";
		Map<String,Object> userMap = jd.login(sql, Uid, password);
		return userMap;
	}
	public List<Map<String, Object>> userList(HttpServletRequest request,Userdomain user,int pages,int records){
		StringBuilder sq = new StringBuilder("select * from user where 1=1 ");
		if(user.getUid()!=null&&user.getUid()!=""){
			sq.append(" and Uid like '%"+user.getUid()+"%'");
		}
		if(user.getUsername()!=null&&user.getUsername()!=""){
			sq.append(" and Username like '%"+user.getUsername()+"%'");
		}
		String sql = sq.toString();
		List<Map<String, Object>> userList = jd.listForPage(sql,pages,records,null);
		PageBean.setPage(sql, jd, request, pages);
		return userList;	
}

	public int add(Userdomain user){
		String sql="insert into user (Username,Uid,password) values (?,?,?)";
		int result = jd.update(sql, new Object[]{user.getUsername(),user.getUid(),user.getPassword()});
		return result;
	
}
	public Map<String, Object> load(int Uid){
		String sql = "select * from user where Uid=?";
		Map<String, Object> userMap = jd.queryById(sql, Uid);
		return userMap;
		
}
	public int mdi(Userdomain user){
		String sql="update user set Username=?,Uid=?";
		int result = jd.update(sql, new Object[]{user.getUsername(),user.getUid()});
		System.out.println(result);
		return result;
}
	public int del(Userdomain user){
		String sql = "update user set status=-1 where Uid=?";
		int result = jd.update(sql, new Object[]{user.getUid()});
		return result;
}
	

}
