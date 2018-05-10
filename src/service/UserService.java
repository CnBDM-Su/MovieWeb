package service;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import com.sun.java_cup.internal.*;
import domain.Userdomain;
import utils.JdbcUtils;
import dao.Userdao;

public class UserService {
	Userdao userdao = new Userdao();
	//登陆
	public Map<String, Object> login(String Uid,String password){
		Map<String, Object> userMap = userdao.login(Uid, password);
		if(userMap.size()>0)
		{
			return userMap;
		}else {
			throw new RuntimeException("用户名或密码错误");
		}
		
	}
	//查询list
	public List<Map<String, Object>> userList(HttpServletRequest request,Userdomain user,int pages,int records){
		List<Map<String, Object>> userList = userdao.userList(request, user, pages, records);
		if(userList.size()>0)
		{
			return userList;
		}else {
			throw new RuntimeException("没有要显示的数据");
		}
		
	}
	//添加
	public int add(Userdomain user){
		int result = userdao.add(user);
		if(result>0){
			return result;
		}
		else {
			throw new RuntimeException("添加失败");
		}
	}
	//通过id查询
	public Map<String, Object> load(int user_id){
		Map<String, Object> userMap = userdao.load(user_id);  
		return userMap;
	}
	//修改
	public int mdi(Userdomain user){
		int result = userdao.mdi(user);
		if(result>0){
			return result;
		}
		else {
			throw new RuntimeException("修改失败");
		}
	}
	//删除
	
	public int del(Userdomain user){
		int result = userdao.del(user);
		if(result>0){
			return result;
		}
		else {
			throw new RuntimeException("删除失败");
		}
	}
}