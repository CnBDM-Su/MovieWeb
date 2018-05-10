<!--待做<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
function jumpPage(pages){
	document.getElementById("pages").value = pages;
	var pageForm = document.getElementById("pageForm");
	pageForm.action = "${url}";
	pageForm.method = "post";
	pageForm.submit();
}
</script>
<form  id="pageForm" method="post">
			<%if(request.getAttribute("user_name")!=null&&request.getParameter("user_name").trim()!=""){
			%>
			<input  name="user_name" type="hidden" value="<%=request.getParameter("user_name")%>">
			<%}%>
			<%if(request.getAttribute("account")!=null&&request.getParameter("account").trim()!=""){
			%>
			<input  name="account" type="hidden" value="<%=request.getParameter("account")%>">
			<%}%>
			<%if(request.getAttribute("vip_grade")!=null&&request.getParameter("vip_grade").trim()!=""){
			%>
			<input  name="vip_grade" type="hidden" value="<%=request.getParameter("vip_grade")%>">
			<%}%>
			<%if(request.getAttribute("vip_name")!=null&&request.getParameter("vip_name").trim()!=""){
			%>
			<input  name="vip_name" type="hidden" value="<%=request.getParameter("vip_name")%>">
			<%}%>
			<input type="hidden" id="pages" name="pages">
			<div class="pagin">
				<div class="message">
					共
					<i class="blue">${sumPage }</i>页，当前显示第&nbsp;
					<i class="blue">${pages }&nbsp;</i>页
				</div>
				<ul class="paginList">
					
					<li class="paginItem">
						<a onclick="jumpPage(1)" href="javascript:void(0);">首页</a>
					</li>
					<li class="paginItem ">
						<a  onclick="jumpPage(${(pages-1)>1?(pages-1):1})" href="javascript:void(0);">上一页</a>
					</li>
					<li class="paginItem">
						<a onclick="jumpPage(${(pages+1)<sumPage?(pages+1):sumPage})" href="javascript:void(0);">下一页</a>
					</li>
					<li class="paginItem">
						<a onclick="jumpPage(${sumPage})" href="javascript:void(0);">尾页</a>
					</li>
					
				</ul>
			</div>
</form>
-->